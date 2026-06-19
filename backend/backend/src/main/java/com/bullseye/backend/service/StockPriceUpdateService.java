package com.bullseye.backend.service;

import com.bullseye.backend.dto.StockQuoteDto;
import com.bullseye.backend.model.StockPrice;
import com.bullseye.backend.repository.StockPriceRepository;
import com.bullseye.backend.repository.StockRepository;
import com.google.common.collect.Lists;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

@Service
public class StockPriceUpdateService {

    private static final Logger log = LoggerFactory.getLogger(StockPriceUpdateService.class);
    
    private static final int BATCH_SIZE = 50; // Yahoo Finance allows ~50 symbols per request
    private static final int DELAY_BETWEEN_BATCHES_MS = 3000; // 3 seconds delay
    private static final int MAX_CALLS_PER_HOUR = 1500; // Safety buffer (75% of 2000 limit)

    private final StockRepository stockRepository;
    private final StockPriceRepository stockPriceRepository;
    private final MarketDataService marketDataService;
    
    private final AtomicInteger apiCallsInLastHour = new AtomicInteger(0);
    private final AtomicInteger totalApiCalls = new AtomicInteger(0);

    public StockPriceUpdateService(
            StockRepository stockRepository,
            StockPriceRepository stockPriceRepository,
            MarketDataService marketDataService) {
        this.stockRepository = stockRepository;
        this.stockPriceRepository = stockPriceRepository;
        this.marketDataService = marketDataService;
    }

    /**
     * Update all stock prices every 5 minutes
     * This method is scheduled to run automatically
     */
    @Scheduled(fixedRate = 300000, initialDelay = 10000) // Every 5 minutes, start after 10 seconds
    @Transactional
    public void updateAllStockPrices() {
        LocalDateTime startTime = LocalDateTime.now();
        log.info("=== Starting stock price update cycle ===");
        
        try {
            // Get all active stock symbols
            List<String> allSymbols = stockRepository.findAllActiveSymbols();
            int totalStocks = allSymbols.size();
            
            if (totalStocks == 0) {
                log.warn("No active stocks found in database");
                return;
            }
            
            log.info("Found {} active stocks to update", totalStocks);
            
            // Check if we're approaching rate limit
            if (apiCallsInLastHour.get() >= MAX_CALLS_PER_HOUR) {
                log.warn("Approaching API rate limit ({}/{}), skipping this cycle", 
                         apiCallsInLastHour.get(), MAX_CALLS_PER_HOUR);
                return;
            }
            
            // Split into batches of 50
            List<List<String>> batches = Lists.partition(allSymbols, BATCH_SIZE);
            int totalBatches = batches.size();
            
            log.info("Processing {} stocks in {} batches", totalStocks, totalBatches);
            
            int successCount = 0;
            int failureCount = 0;
            int batchNumber = 0;
            
            for (List<String> batch : batches) {
                batchNumber++;
                
                try {
                    // Fetch prices for this batch
                    List<StockQuoteDto> quotes = marketDataService.getBulkQuotes(batch);
                    
                    // Increment API call counter
                    apiCallsInLastHour.incrementAndGet();
                    totalApiCalls.incrementAndGet();
                    
                    // Save prices to database
                    for (StockQuoteDto quote : quotes) {
                        try {
                            saveOrUpdatePrice(quote);
                            successCount++;
                        } catch (Exception e) {
                            log.error("Failed to save price for {}: {}", quote.getSymbol(), e.getMessage());
                            failureCount++;
                        }
                    }
                    
                    log.info("Batch {}/{} completed: {} stocks updated", 
                             batchNumber, totalBatches, quotes.size());
                    
                    // Wait between batches to avoid rate limiting (except for last batch)
                    if (batchNumber < totalBatches) {
                        Thread.sleep(DELAY_BETWEEN_BATCHES_MS);
                    }
                    
                } catch (Exception e) {
                    log.error("Failed to process batch {}/{}: {}", batchNumber, totalBatches, e.getMessage());
                    failureCount += batch.size();
                }
            }
            
            LocalDateTime endTime = LocalDateTime.now();
            long durationSeconds = java.time.Duration.between(startTime, endTime).getSeconds();
            
            log.info("=== Stock price update cycle completed ===");
            log.info("Total stocks: {}", totalStocks);
            log.info("Successfully updated: {}", successCount);
            log.info("Failed: {}", failureCount);
            log.info("API calls in this cycle: {}", totalBatches);
            log.info("API calls in last hour: {}/{}", apiCallsInLastHour.get(), MAX_CALLS_PER_HOUR);
            log.info("Total API calls today: {}", totalApiCalls.get());
            log.info("Duration: {} seconds", durationSeconds);
            
        } catch (Exception e) {
            log.error("Fatal error in stock price update cycle: {}", e.getMessage(), e);
        }
    }

    /**
     * Save or update stock price in database
     */
    private void saveOrUpdatePrice(StockQuoteDto quote) {
        StockPrice stockPrice = stockPriceRepository.findById(quote.getSymbol())
                .orElse(new StockPrice(quote.getSymbol()));
        
        stockPrice.setPrice(BigDecimal.valueOf(quote.getPrice()));
        stockPrice.setOpenPrice(BigDecimal.valueOf(quote.getOpen()));
        stockPrice.setHigh(BigDecimal.valueOf(quote.getHigh()));
        stockPrice.setLow(BigDecimal.valueOf(quote.getLow()));
        stockPrice.setPrevClose(BigDecimal.valueOf(quote.getPrevClose()));
        stockPrice.setChangeValue(BigDecimal.valueOf(quote.getChange()));
        stockPrice.setChangePercent(BigDecimal.valueOf(quote.getPercentChange()));
        stockPrice.setVolume(quote.getVolume());
        stockPrice.setLastUpdated(LocalDateTime.now());
        
        stockPriceRepository.save(stockPrice);
    }

    /**
     * Reset API call counter every hour
     */
    @Scheduled(fixedRate = 3600000) // Every 1 hour
    public void resetApiCallCounter() {
        int previousCount = apiCallsInLastHour.getAndSet(0);
        log.info("API call counter reset. Previous hour: {} calls", previousCount);
    }

    /**
     * Reset daily API call counter at midnight
     */
    @Scheduled(cron = "0 0 0 * * *") // Every day at midnight
    public void resetDailyApiCallCounter() {
        int previousCount = totalApiCalls.getAndSet(0);
        log.info("Daily API call counter reset. Previous day: {} calls", previousCount);
    }

    /**
     * Get current API call statistics
     */
    public String getApiCallStats() {
        return String.format("API Calls - Last Hour: %d/%d, Today: %d",
                apiCallsInLastHour.get(), MAX_CALLS_PER_HOUR, totalApiCalls.get());
    }

    /**
     * Manual trigger for testing (can be called via endpoint)
     */
    public void triggerManualUpdate() {
        log.info("Manual stock price update triggered");
        updateAllStockPrices();
    }
}

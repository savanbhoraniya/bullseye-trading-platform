package com.bullseye.backend.service;

import com.bullseye.backend.dto.StockSearchResultDto;
import com.bullseye.backend.model.Stock;
import com.bullseye.backend.model.StockPrice;
import com.bullseye.backend.repository.StockPriceRepository;
import com.bullseye.backend.repository.StockRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class StockSearchService {

    private static final Logger log = LoggerFactory.getLogger(StockSearchService.class);

    private final StockRepository stockRepository;
    private final StockPriceRepository stockPriceRepository;

    public StockSearchService(StockRepository stockRepository, StockPriceRepository stockPriceRepository) {
        this.stockRepository = stockRepository;
        this.stockPriceRepository = stockPriceRepository;
    }

    /**
     * Search stocks by symbol or company name with live prices
     */
    public List<StockSearchResultDto> searchStocks(String query, int limit) {
        log.info("Searching stocks with query: {}", query);
        
        // Search stocks by symbol or name
        List<Stock> matchingStocks = stockRepository.searchBySymbolOrName(query);
        
        if (matchingStocks.isEmpty()) {
            log.info("No stocks found for query: {}", query);
            return List.of();
        }
        
        // Get symbols
        List<String> symbols = matchingStocks.stream()
                .map(Stock::getSymbol)
                .limit(limit)
                .collect(Collectors.toList());
        
        // Get cached prices from database
        List<StockPrice> prices = stockPriceRepository.findBySymbolIn(symbols);
        
        // Create a map for quick lookup
        Map<String, StockPrice> priceMap = prices.stream()
                .collect(Collectors.toMap(StockPrice::getSymbol, p -> p));
        
        // Combine stock info + prices
        List<StockSearchResultDto> results = matchingStocks.stream()
                .limit(limit)
                .map(stock -> {
                    StockPrice price = priceMap.get(stock.getSymbol());
                    
                    return new StockSearchResultDto(
                            stock.getSymbol(),
                            stock.getCompanyName(),
                            stock.getIndustry(),
                            stock.getSector(),
                            price != null ? price.getPrice() : null, // Return null instead of ZERO
                            price != null ? price.getChangePercent() : null,
                            price != null ? price.getChangeValue() : null
                    );
                })
                .collect(Collectors.toList());
        
        log.info("Found {} stocks for query: {}", results.size(), query);
        return results;
    }

    /**
     * Get all stocks (paginated)
     */
    public List<StockSearchResultDto> getAllStocks(int page, int size) {
        log.info("Fetching all stocks - page: {}, size: {}", page, size);
        
        List<Stock> allStocks = stockRepository.findByIsActiveTrue();
        
        int start = page * size;
        int end = Math.min(start + size, allStocks.size());
        
        if (start >= allStocks.size()) {
            return List.of();
        }
        
        List<Stock> pageStocks = allStocks.subList(start, end);
        
        List<String> symbols = pageStocks.stream()
                .map(Stock::getSymbol)
                .collect(Collectors.toList());
        
        List<StockPrice> prices = stockPriceRepository.findBySymbolIn(symbols);
        Map<String, StockPrice> priceMap = prices.stream()
                .collect(Collectors.toMap(StockPrice::getSymbol, p -> p));
        
        return pageStocks.stream()
                .map(stock -> {
                    StockPrice price = priceMap.get(stock.getSymbol());
                    
                    return new StockSearchResultDto(
                            stock.getSymbol(),
                            stock.getCompanyName(),
                            stock.getIndustry(),
                            stock.getSector(),
                            price != null ? price.getPrice() : null, // Return null instead of ZERO
                            price != null ? price.getChangePercent() : null,
                            price != null ? price.getChangeValue() : null
                    );
                })
                .collect(Collectors.toList());
    }

    /**
     * Get stock count
     */
    public long getTotalStockCount() {
        return stockRepository.countByIsActiveTrue();
    }

    /**
     * Get top stocks for ticker bar (sorted alphabetically)
     */
    public List<StockSearchResultDto> getTopStocks(int limit) {
        log.info("Fetching top {} stocks for ticker", limit);
        
        // Get all active stocks
        List<Stock> allStocks = stockRepository.findByIsActiveTrue();
        
        if (allStocks.isEmpty()) {
            return List.of();
        }
        
        // Sort alphabetically by symbol
        List<Stock> topStocks = allStocks.stream()
                .sorted((s1, s2) -> s1.getSymbol().compareTo(s2.getSymbol()))
                .limit(limit)
                .collect(Collectors.toList());
        
        // Get their symbols
        List<String> symbols = topStocks.stream()
                .map(Stock::getSymbol)
                .collect(Collectors.toList());
        
        // Get cached prices
        List<StockPrice> prices = stockPriceRepository.findBySymbolIn(symbols);
        Map<String, StockPrice> priceMap = prices.stream()
                .collect(Collectors.toMap(StockPrice::getSymbol, p -> p));
        
        // Combine and return (maintaining alphabetical order)
        return topStocks.stream()
                .map(stock -> {
                    StockPrice price = priceMap.get(stock.getSymbol());
                    
                    return new StockSearchResultDto(
                            stock.getSymbol(),
                            stock.getCompanyName(),
                            stock.getIndustry(),
                            stock.getSector(),
                            price != null ? price.getPrice() : null, // Return null instead of ZERO
                            price != null ? price.getChangePercent() : null,
                            price != null ? price.getChangeValue() : null
                    );
                })
                .collect(Collectors.toList());
    }
}

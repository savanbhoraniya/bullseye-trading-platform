package com.bullseye.backend.service;

import com.bullseye.backend.dto.*;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Service
public class StockDetailService {

    private final RestTemplate restTemplate;
    private final ObjectMapper objectMapper;
    private final MarketDataService marketDataService;

    public StockDetailService(RestTemplate restTemplate, MarketDataService marketDataService) {
        this.restTemplate = restTemplate;
        this.objectMapper = new ObjectMapper();
        this.marketDataService = marketDataService;
    }

    /**
     * Get detailed stock information
     */
    public StockDetailDto getStockDetail(String symbol) {
        try {
            // Get live price from MarketDataService (same source as dashboard)
            StockQuoteDto liveQuote = marketDataService.getQuote(symbol);
            
            StockDetailDto dto = new StockDetailDto();
            dto.setSymbol(symbol);
            dto.setName(liveQuote.getName());
            dto.setCurrentPrice(BigDecimal.valueOf(liveQuote.getPrice()));
            dto.setChange(BigDecimal.valueOf(liveQuote.getChange()));
            dto.setPercentChange(liveQuote.getPercentChange());
            dto.setOpen(BigDecimal.valueOf(liveQuote.getOpen()));
            dto.setHigh(BigDecimal.valueOf(liveQuote.getHigh()));
            dto.setLow(BigDecimal.valueOf(liveQuote.getLow()));
            dto.setFiftyTwoWeekHigh(BigDecimal.valueOf(liveQuote.getHigh52w()));
            dto.setFiftyTwoWeekLow(BigDecimal.valueOf(liveQuote.getLow52w()));
            
            // Calculate previous close
            double previousClose = liveQuote.getPrice() - liveQuote.getChange();
            dto.setPreviousClose(BigDecimal.valueOf(previousClose));
            
            // Get additional fundamental data from NSE India API
            try {
                String nseSymbol = symbol.replace(".NS", ""); // Remove .NS suffix for NSE API
                
                // NSE India API endpoint for stock info
                String nseUrl = "https://www.nseindia.com/api/quote-equity?symbol=" + nseSymbol;

                HttpHeaders headers = new HttpHeaders();
                headers.set("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36");
                headers.set("Accept", "application/json, text/plain, */*");
                headers.set("Accept-Language", "en-US,en;q=0.9");
                headers.set("Referer", "https://www.nseindia.com/");
                headers.set("X-Requested-With", "XMLHttpRequest");
                
                HttpEntity<String> entity = new HttpEntity<>(headers);

                try {
                    ResponseEntity<String> response = restTemplate.exchange(
                            nseUrl, HttpMethod.GET, entity, String.class
                    );

                    JsonNode root = objectMapper.readTree(response.getBody());
                    JsonNode priceInfo = root.path("priceInfo");
                    JsonNode info = root.path("info");
                    
                    // Market Cap (in Crores) - convert to actual value
                    if (info.has("pdSectorInd")) {
                        // Try to get from metadata if available
                        JsonNode metadata = root.path("metadata");
                        if (metadata.has("pdSymbolPe")) {
                            // P/E Ratio
                            String peStr = metadata.path("pdSymbolPe").asText();
                            if (!peStr.isEmpty() && !peStr.equals("-")) {
                                try {
                                    dto.setPeRatio(new BigDecimal(peStr));
                                } catch (NumberFormatException ignored) {}
                            }
                        }
                    }
                    
                    // Try priceInfo for fundamentals
                    if (!priceInfo.isMissingNode()) {
                        // Volume is already captured from chart API
                        
                        // Some NSE APIs return market cap in specific fields
                        if (priceInfo.has("marketCap")) {
                            dto.setMarketCap(priceInfo.path("marketCap").asLong());
                        }
                    }
                    
                    System.out.println("NSE API data for " + symbol + " - Some fundamental data may be available");
                    
                } catch (Exception e) {
                    System.err.println("NSE API failed for " + symbol + ", falling back to Yahoo: " + e.getMessage());
                }
                
            } catch (Exception e) {
                System.err.println("Error with NSE API for " + symbol + ": " + e.getMessage());
            }
            
            dto.setMarketStatus("OPEN");
            return dto;

        } catch (Exception e) {
            e.printStackTrace();
            return new StockDetailDto();
        }
    }

    /**
     * Get historical data for chart
     */
    public List<HistoricalDataDto> getHistoricalData(String symbol, String period) {
        try {
            String yahooSymbol = convertSymbol(symbol);
            
            // Calculate interval and range based on period
            String interval = "1d";
            String range = period;
            
            if (period.equals("1D")) {
                interval = "5m";
                range = "1d";
            } else if (period.equals("1W")) {
                interval = "15m";
                range = "5d";
            } else if (period.equals("1M")) {
                interval = "1d";
                range = "1mo";
            } else if (period.equals("3M")) {
                interval = "1d";
                range = "3mo";
            } else if (period.equals("6M")) {
                interval = "1d";
                range = "6mo";
            } else if (period.equals("1Y")) {
                interval = "1d";
                range = "1y";
            } else if (period.equals("5Y")) {
                interval = "1wk";
                range = "5y";
            }

            String url = "https://query1.finance.yahoo.com/v8/finance/chart/" + yahooSymbol 
                       + "?interval=" + interval + "&range=" + range;

            HttpHeaders headers = new HttpHeaders();
            headers.set("User-Agent", "Mozilla/5.0");
            HttpEntity<String> entity = new HttpEntity<>(headers);

            ResponseEntity<String> response = restTemplate.exchange(
                    url, HttpMethod.GET, entity, String.class
            );

            return parseHistoricalData(response.getBody());

        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    /**
     * Get market depth (simulated for Yahoo Finance)
     */
    public MarketDepthDto getMarketDepth(String symbol) {
        MarketDepthDto depth = new MarketDepthDto();
        depth.setSymbol(symbol);

        // Since Yahoo Finance doesn't provide real order book, we'll simulate it
        // In a real implementation, you'd use NSE/Upstox/Angel One API
        List<MarketDepthDto.OrderBookEntry> buyOrders = new ArrayList<>();
        List<MarketDepthDto.OrderBookEntry> sellOrders = new ArrayList<>();

        // Simulate 5 buy and sell orders
        StockDetailDto detail = getStockDetail(symbol);
        if (detail.getCurrentPrice() != null) {
            BigDecimal basePrice = detail.getCurrentPrice();
            
            for (int i = 0; i < 5; i++) {
                // Buy orders below current price
                BigDecimal buyPrice = basePrice.subtract(BigDecimal.valueOf((i + 1) * 0.5));
                buyOrders.add(new MarketDepthDto.OrderBookEntry(
                        buyPrice, 
                        (long)(Math.random() * 500 + 100), 
                        (int)(Math.random() * 10 + 1)
                ));

                // Sell orders above current price
                BigDecimal sellPrice = basePrice.add(BigDecimal.valueOf((i + 1) * 0.5));
                sellOrders.add(new MarketDepthDto.OrderBookEntry(
                        sellPrice, 
                        (long)(Math.random() * 500 + 100), 
                        (int)(Math.random() * 10 + 1)
                ));
            }
        }

        depth.setBuyOrders(buyOrders);
        depth.setSellOrders(sellOrders);
        depth.setTotalBuyQuantity(buyOrders.stream().mapToLong(MarketDepthDto.OrderBookEntry::getQuantity).sum());
        depth.setTotalSellQuantity(sellOrders.stream().mapToLong(MarketDepthDto.OrderBookEntry::getQuantity).sum());

        return depth;
    }

    /**
     * Get corporate actions from NSE
     */
    public List<CorporateActionDto> getCorporateActions(String symbol) {
        try {
            // NSE Corporate Actions API
            String url = "https://www.nseindia.com/api/corporates-corporateActions"
                       + "?index=equities&symbol=" + symbol;

            HttpHeaders headers = new HttpHeaders();
            headers.set("User-Agent", "Mozilla/5.0");
            headers.set("Accept", "application/json");
            headers.set("Accept-Language", "en-US,en;q=0.9");
            HttpEntity<String> entity = new HttpEntity<>(headers);

            ResponseEntity<String> response = restTemplate.exchange(
                    url, HttpMethod.GET, entity, String.class
            );

            return parseCorporateActions(response.getBody(), symbol);

        } catch (Exception e) {
            e.printStackTrace();
            // Return sample data if API fails
            return getSampleCorporateActions(symbol);
        }
    }

    /**
     * Get stock news
     */
    public List<StockNewsDto> getStockNews(String symbol) {
        // For now, return sample news
        // In production, integrate with NewsAPI.org or similar
        return getSampleNews(symbol);
    }

    // ============= HELPER METHODS =============

    private String convertSymbol(String symbol) {
        if (symbol.startsWith("^")) {
            return symbol;
        }
        if (symbol.endsWith(".NS")) {
            return symbol;
        }
        return symbol + ".NS";
    }

    private List<HistoricalDataDto> parseHistoricalData(String responseBody) throws Exception {
        List<HistoricalDataDto> dataList = new ArrayList<>();
        JsonNode root = objectMapper.readTree(responseBody);
        JsonNode result = root.path("chart").path("result").get(0);

        if (result == null) {
            return dataList;
        }

        JsonNode timestamps = result.path("timestamp");
        JsonNode quotes = result.path("indicators").path("quote").get(0);
        
        // Check interval from meta to determine if intraday
        JsonNode meta = result.path("meta");
        String dataGranularity = meta.path("dataGranularity").asText();
        boolean isIntraday = dataGranularity.contains("m") || dataGranularity.contains("h");

        if (timestamps != null && quotes != null) {
            JsonNode opens = quotes.path("open");
            JsonNode highs = quotes.path("high");
            JsonNode lows = quotes.path("low");
            JsonNode closes = quotes.path("close");
            JsonNode volumes = quotes.path("volume");

            for (int i = 0; i < timestamps.size(); i++) {
                long timestamp = timestamps.get(i).asLong();
                
                HistoricalDataDto data = new HistoricalDataDto();
                
                if (isIntraday) {
                    // For intraday data, set both timestamp and date
                    java.time.LocalDateTime dateTime = java.time.Instant.ofEpochSecond(timestamp)
                        .atZone(java.time.ZoneId.of("Asia/Kolkata"))
                        .toLocalDateTime();
                    data.setTimestamp(dateTime);
                    data.setDate(dateTime.toLocalDate());
                } else {
                    // For daily data, just set date
                    LocalDate date = java.time.Instant.ofEpochSecond(timestamp)
                        .atZone(java.time.ZoneId.of("Asia/Kolkata"))
                        .toLocalDate();
                    data.setDate(date);
                }
                
                if (!opens.get(i).isNull()) data.setOpen(BigDecimal.valueOf(opens.get(i).asDouble()));
                if (!highs.get(i).isNull()) data.setHigh(BigDecimal.valueOf(highs.get(i).asDouble()));
                if (!lows.get(i).isNull()) data.setLow(BigDecimal.valueOf(lows.get(i).asDouble()));
                if (!closes.get(i).isNull()) data.setClose(BigDecimal.valueOf(closes.get(i).asDouble()));
                if (!volumes.get(i).isNull()) data.setVolume(volumes.get(i).asLong());

                dataList.add(data);
            }
        }

        return dataList;
    }

    private List<CorporateActionDto> parseCorporateActions(String responseBody, String symbol) throws Exception {
        List<CorporateActionDto> actions = new ArrayList<>();
        JsonNode root = objectMapper.readTree(responseBody);

        if (root.isArray()) {
            for (JsonNode node : root) {
                CorporateActionDto action = new CorporateActionDto();
                action.setSymbol(symbol);
                action.setActionType(node.path("subject").asText());
                action.setDescription(node.path("subject").asText());
                
                String exDateStr = node.path("exDate").asText();
                if (!exDateStr.isEmpty()) {
                    action.setExDate(LocalDate.parse(exDateStr, DateTimeFormatter.ofPattern("dd-MMM-yyyy")));
                }

                actions.add(action);
            }
        }

        return actions;
    }

    private List<CorporateActionDto> getSampleCorporateActions(String symbol) {
        List<CorporateActionDto> actions = new ArrayList<>();
        
        actions.add(new CorporateActionDto(
                symbol, "DIVIDEND", "Dividend - Rs 9 Per Share",
                LocalDate.of(2024, 3, 15), LocalDate.of(2024, 3, 16),
                "Final dividend of Rs 9 per share"
        ));
        
        actions.add(new CorporateActionDto(
                symbol, "BONUS", "Bonus 1:1",
                LocalDate.of(2024, 1, 10), LocalDate.of(2024, 1, 11),
                "Bonus issue in the ratio of 1:1"
        ));

        return actions;
    }

    private List<StockNewsDto> getSampleNews(String symbol) {
        List<StockNewsDto> news = new ArrayList<>();
        
        news.add(new StockNewsDto(
                symbol + " Q4 Results Beat Estimates",
                "The company reported strong quarterly earnings, beating analyst estimates with revenue growth of 15%.",
                "https://example.com/news/1",
                "https://via.placeholder.com/400x200",
                "Economic Times",
                LocalDateTime.now().minusHours(2)
        ));

        news.add(new StockNewsDto(
                symbol + " Announces New Product Launch",
                "The company unveiled its latest product innovation at the annual conference.",
                "https://example.com/news/2",
                "https://via.placeholder.com/400x200",
                "Business Standard",
                LocalDateTime.now().minusHours(5)
        ));

        news.add(new StockNewsDto(
                "Market Analysis: " + symbol + " Shows Strong Momentum",
                "Technical analysts suggest bullish trend continuation with strong support levels.",
                "https://example.com/news/3",
                "https://via.placeholder.com/400x200",
                "Moneycontrol",
                LocalDateTime.now().minusHours(8)
        ));

        return news;
    }
}

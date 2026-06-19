package com.bullseye.backend.controller;

import com.bullseye.backend.dto.StockSearchResultDto;
import com.bullseye.backend.service.StockPriceUpdateService;
import com.bullseye.backend.service.StockSearchService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/stocks")
@CrossOrigin(origins = "http://localhost:4200")
public class StockSearchController {

    private final StockSearchService stockSearchService;
    private final StockPriceUpdateService stockPriceUpdateService;

    public StockSearchController(
            StockSearchService stockSearchService,
            StockPriceUpdateService stockPriceUpdateService) {
        this.stockSearchService = stockSearchService;
        this.stockPriceUpdateService = stockPriceUpdateService;
    }

    /**
     * Search stocks by symbol or company name
     * GET /api/stocks/search?query=INFY&limit=10
     */
    @GetMapping("/search")
    public ResponseEntity<List<StockSearchResultDto>> searchStocks(
            @RequestParam(required = false, defaultValue = "") String query,
            @RequestParam(defaultValue = "10") int limit) {
        
        // Allow empty query to return top stocks
        if (query == null) {
            query = "";
        }
        
        List<StockSearchResultDto> results = stockSearchService.searchStocks(query.trim(), limit);
        return ResponseEntity.ok(results);
    }

    /**
     * Get top stocks for ticker bar
     * GET /api/stocks/ticker?limit=20
     */
    @GetMapping("/ticker")
    public ResponseEntity<List<StockSearchResultDto>> getTickerStocks(
            @RequestParam(defaultValue = "20") int limit) {
        
        // Return top stocks by volume or market cap
        List<StockSearchResultDto> results = stockSearchService.getTopStocks(limit);
        return ResponseEntity.ok(results);
    }

    /**
     * Get all stocks (paginated)
     * GET /api/stocks/all?page=0&size=50
     */
    @GetMapping("/all")
    public ResponseEntity<Map<String, Object>> getAllStocks(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "50") int size) {
        
        List<StockSearchResultDto> stocks = stockSearchService.getAllStocks(page, size);
        long totalCount = stockSearchService.getTotalStockCount();
        
        Map<String, Object> response = new HashMap<>();
        response.put("stocks", stocks);
        response.put("totalCount", totalCount);
        response.put("page", page);
        response.put("size", size);
        response.put("totalPages", (totalCount + size - 1) / size);
        
        return ResponseEntity.ok(response);
    }

    /**
     * Get API call statistics
     * GET /api/stocks/stats
     */
    @GetMapping("/stats")
    public ResponseEntity<Map<String, Object>> getStats() {
        Map<String, Object> stats = new HashMap<>();
        stats.put("apiCallStats", stockPriceUpdateService.getApiCallStats());
        stats.put("totalStocks", stockSearchService.getTotalStockCount());
        
        return ResponseEntity.ok(stats);
    }

    /**
     * Manually trigger price update (for testing)
     * POST /api/stocks/update
     */
    @PostMapping("/update")
    public ResponseEntity<Map<String, String>> triggerManualUpdate() {
        stockPriceUpdateService.triggerManualUpdate();
        
        Map<String, String> response = new HashMap<>();
        response.put("message", "Stock price update triggered successfully");
        response.put("status", "processing");
        
        return ResponseEntity.ok(response);
    }
}

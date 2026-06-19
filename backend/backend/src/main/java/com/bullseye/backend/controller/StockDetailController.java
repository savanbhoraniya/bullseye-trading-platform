package com.bullseye.backend.controller;

import com.bullseye.backend.dto.*;
import com.bullseye.backend.service.StockDetailService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/stock")
public class StockDetailController {

    private final StockDetailService stockDetailService;

    public StockDetailController(StockDetailService stockDetailService) {
        this.stockDetailService = stockDetailService;
    }

    /**
     * Get detailed stock information
     * GET /api/stock/{symbol}/details
     */
    @GetMapping("/{symbol}/details")
    public StockDetailDto getStockDetails(@PathVariable String symbol) {
        return stockDetailService.getStockDetail(symbol);
    }

    /**
     * Get historical chart data
     * GET /api/stock/{symbol}/historical?period=1M
     */
    @GetMapping("/{symbol}/historical")
    public List<HistoricalDataDto> getHistoricalData(
            @PathVariable String symbol,
            @RequestParam(defaultValue = "1M") String period
    ) {
        return stockDetailService.getHistoricalData(symbol, period);
    }

    /**
     * Get market depth (order book)
     * GET /api/stock/{symbol}/market-depth
     */
    @GetMapping("/{symbol}/market-depth")
    public MarketDepthDto getMarketDepth(@PathVariable String symbol) {
        return stockDetailService.getMarketDepth(symbol);
    }

    /**
     * Get corporate actions
     * GET /api/stock/{symbol}/corporate-actions
     */
    @GetMapping("/{symbol}/corporate-actions")
    public List<CorporateActionDto> getCorporateActions(@PathVariable String symbol) {
        return stockDetailService.getCorporateActions(symbol);
    }

    /**
     * Get stock news
     * GET /api/stock/{symbol}/news
     */
    @GetMapping("/{symbol}/news")
    public List<StockNewsDto> getStockNews(@PathVariable String symbol) {
        return stockDetailService.getStockNews(symbol);
    }
}

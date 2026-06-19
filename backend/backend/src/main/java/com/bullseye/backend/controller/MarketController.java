package com.bullseye.backend.controller;

import com.bullseye.backend.dto.BulkQuoteRequest;
import com.bullseye.backend.dto.StockQuoteDto;
import com.bullseye.backend.service.MarketDataService;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/market")
@CrossOrigin(origins = "http://localhost:4200")
public class MarketController {

    private final MarketDataService marketDataService;

    public MarketController(
            MarketDataService marketDataService
    ) {

        this.marketDataService =
                marketDataService;

    }

    @GetMapping("/quote/{symbol}")
    public StockQuoteDto getQuote(
            @PathVariable String symbol
    ) {

        return marketDataService
                .getQuote(symbol);

    }

    @PostMapping("/bulk")
    public List<StockQuoteDto> getBulkQuotes(
            @RequestBody BulkQuoteRequest request
    ) {

        return marketDataService
                .getBulkQuotes(
                        request.getSymbols()
                );

    }

}
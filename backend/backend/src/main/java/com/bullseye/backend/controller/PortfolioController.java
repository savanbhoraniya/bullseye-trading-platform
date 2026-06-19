package com.bullseye.backend.controller;

import com.bullseye.backend.dto.BuyRequest;
import com.bullseye.backend.dto.PortfolioResponse;
import com.bullseye.backend.dto.SellRequest;
import com.bullseye.backend.service.PortfolioService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/portfolio")
public class PortfolioController {

    private final PortfolioService portfolioService;

    public PortfolioController(PortfolioService portfolioService) {
        this.portfolioService = portfolioService;
    }

    @GetMapping("/{userId}")
    public ResponseEntity<List<PortfolioResponse>> getPortfolio(
            @PathVariable Long userId) {
        return ResponseEntity.ok(portfolioService.getPortfolio(userId));
    }

    @PostMapping("/buy")
    public ResponseEntity<PortfolioResponse> buyStock(
            @RequestBody BuyRequest request) {
        try {
            return ResponseEntity.ok(portfolioService.buyStock(request));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new PortfolioResponse(e.getMessage()));
        }
    }

    @PostMapping("/sell")
    public ResponseEntity<PortfolioResponse> sellStock(
            @RequestBody SellRequest request) {
        try {
            return ResponseEntity.ok(portfolioService.sellStock(request));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new PortfolioResponse(e.getMessage()));
        }
    }
}

package com.bullseye.backend.controller;

import com.bullseye.backend.service.ReportsService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/reports")
public class ReportsController {

    private final ReportsService reportsService;

    public ReportsController(ReportsService reportsService) {
        this.reportsService = reportsService;
    }

    @GetMapping("/trade-history/{userId}")
    public ResponseEntity<?> getTradeHistory(@PathVariable Long userId) {
        try {
            return ResponseEntity.ok(reportsService.getTradeHistory(userId));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Failed to fetch trade history: " + e.getMessage());
        }
    }

    @GetMapping("/account-statement/{userId}")
    public ResponseEntity<?> getAccountStatement(@PathVariable Long userId) {
        try {
            return ResponseEntity.ok(reportsService.getAccountStatement(userId));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Failed to fetch account statement: " + e.getMessage());
        }
    }

    @GetMapping("/pnl-report/{userId}")
    public ResponseEntity<?> getPnLReport(@PathVariable Long userId) {
        try {
            return ResponseEntity.ok(reportsService.getPnLReport(userId));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Failed to fetch P&L report: " + e.getMessage());
        }
    }
}

package com.bullseye.backend.controller;

import com.bullseye.backend.dto.BalanceRequest;
import com.bullseye.backend.dto.BalanceResponse;
import com.bullseye.backend.dto.TransactionResponse;
import com.bullseye.backend.service.BalanceService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/balance")
public class BalanceController {

    private final BalanceService balanceService;

    public BalanceController(BalanceService balanceService) {
        this.balanceService = balanceService;
    }

    // GET /api/balance/{userId}
    @GetMapping("/{userId}")
    public ResponseEntity<BalanceResponse> getBalance(@PathVariable Long userId) {
        return ResponseEntity.ok(balanceService.getBalance(userId));
    }

    // POST /api/balance/add
    @PostMapping("/add")
    public ResponseEntity<BalanceResponse> addFunds(@RequestBody BalanceRequest request) {
        try {
            return ResponseEntity.ok(balanceService.addFunds(request));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new BalanceResponse(null, null, e.getMessage()));
        }
    }

    // POST /api/balance/withdraw
    @PostMapping("/withdraw")
    public ResponseEntity<BalanceResponse> withdrawFunds(@RequestBody BalanceRequest request) {
        try {
            return ResponseEntity.ok(balanceService.withdrawFunds(request));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new BalanceResponse(null, null, e.getMessage()));
        }
    }

    // GET /api/balance/transactions/{userId}
    @GetMapping("/transactions/{userId}")
    public ResponseEntity<List<TransactionResponse>> getTransactions(@PathVariable Long userId) {
        return ResponseEntity.ok(balanceService.getTransactions(userId));
    }
}





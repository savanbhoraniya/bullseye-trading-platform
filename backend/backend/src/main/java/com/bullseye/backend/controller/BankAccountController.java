package com.bullseye.backend.controller;

import com.bullseye.backend.dto.BankAccountRequest;
import com.bullseye.backend.dto.BankAccountResponse;
import com.bullseye.backend.service.BankAccountService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/bank")
public class BankAccountController {

    private final BankAccountService bankAccountService;

    public BankAccountController(BankAccountService bankAccountService) {
        this.bankAccountService = bankAccountService;
    }

    // GET /api/bank/{userId}
    @GetMapping("/{userId}")
    public ResponseEntity<BankAccountResponse> getBankAccount(@PathVariable Long userId) {
        return ResponseEntity.ok(bankAccountService.getBankAccount(userId));
    }

    // POST /api/bank/add
    @PostMapping("/add")
    public ResponseEntity<BankAccountResponse> addBankAccount(
            @RequestBody BankAccountRequest request) {
        try {
            return ResponseEntity.ok(bankAccountService.addBankAccount(request));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new BankAccountResponse(e.getMessage()));
        }
    }

    // DELETE /api/bank/{userId}
    @DeleteMapping("/{userId}")
    public ResponseEntity<String> removeBankAccount(@PathVariable Long userId) {
        try {
            bankAccountService.removeBankAccount(userId);
            return ResponseEntity.ok("Bank account removed successfully");
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }
}

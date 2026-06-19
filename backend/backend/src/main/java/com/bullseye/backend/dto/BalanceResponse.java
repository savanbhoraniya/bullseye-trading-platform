package com.bullseye.backend.dto;

import java.math.BigDecimal;

public class BalanceResponse {
    private Long userId;
    private BigDecimal balance;
    private String message;

    public BalanceResponse(Long userId, BigDecimal balance, String message) {
        this.userId = userId;
        this.balance = balance;
        this.message = message;
    }

    public Long getUserId() { return userId; }
    public void setUserId(Long userId) { this.userId = userId; }

    public BigDecimal getBalance() { return balance; }
    public void setBalance(BigDecimal balance) { this.balance = balance; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
}
package com.bullseye.backend.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class TransactionResponse {
    private Long id;
    private String type;
    private BigDecimal amount;
    private String status;
    private LocalDateTime createdAt;

    public TransactionResponse(Long id, String type, BigDecimal amount,
                                String status, LocalDateTime createdAt) {
        this.id = id;
        this.type = type;
        this.amount = amount;
        this.status = status;
        this.createdAt = createdAt;
    }

    public Long getId() { return id; }
    public String getType() { return type; }
    public BigDecimal getAmount() { return amount; }
    public String getStatus() { return status; }
    public LocalDateTime getCreatedAt() { return createdAt; }
}
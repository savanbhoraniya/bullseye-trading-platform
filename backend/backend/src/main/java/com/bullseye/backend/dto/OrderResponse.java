package com.bullseye.backend.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class OrderResponse {
    private Long id;
    private Long userId;
    private String symbol;
    private String companyName;
    private String orderType;
    private String action;
    private Integer quantity;
    private BigDecimal limitPrice;
    private BigDecimal executedPrice;
    private String status;
    private LocalDateTime createdAt;
    private LocalDateTime executedAt;
    private String message;

    public OrderResponse() {}
    public OrderResponse(String message) { this.message = message; }
    public OrderResponse(Long id, Long userId, String symbol, String companyName,
                         String orderType, String action, Integer quantity,
                         BigDecimal limitPrice, BigDecimal executedPrice, String status,
                         LocalDateTime createdAt, LocalDateTime executedAt, String message) {
        this.id = id; this.userId = userId; this.symbol = symbol;
        this.companyName = companyName; this.orderType = orderType;
        this.action = action; this.quantity = quantity;
        this.limitPrice = limitPrice; this.executedPrice = executedPrice;
        this.status = status; this.createdAt = createdAt;
        this.executedAt = executedAt; this.message = message;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Long getUserId() { return userId; }
    public void setUserId(Long userId) { this.userId = userId; }
    public String getSymbol() { return symbol; }
    public void setSymbol(String symbol) { this.symbol = symbol; }
    public String getCompanyName() { return companyName; }
    public void setCompanyName(String companyName) { this.companyName = companyName; }
    public String getOrderType() { return orderType; }
    public void setOrderType(String orderType) { this.orderType = orderType; }
    public String getAction() { return action; }
    public void setAction(String action) { this.action = action; }
    public Integer getQuantity() { return quantity; }
    public void setQuantity(Integer quantity) { this.quantity = quantity; }
    public BigDecimal getLimitPrice() { return limitPrice; }
    public void setLimitPrice(BigDecimal limitPrice) { this.limitPrice = limitPrice; }
    public BigDecimal getExecutedPrice() { return executedPrice; }
    public void setExecutedPrice(BigDecimal executedPrice) { this.executedPrice = executedPrice; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
    public LocalDateTime getExecutedAt() { return executedAt; }
    public void setExecutedAt(LocalDateTime executedAt) { this.executedAt = executedAt; }
    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
}
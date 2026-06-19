package com.bullseye.backend.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class PortfolioResponse {
    private Long id;
    private Long userId;
    private String symbol;
    private String companyName;
    private Integer quantity;
    private BigDecimal buyPrice;
    private BigDecimal totalInvested;
    private LocalDateTime boughtAt;
    private String message;
    private String sector;
    private String industry;

    public PortfolioResponse() {}

    public PortfolioResponse(String message) {
        this.message = message;
    }

    public PortfolioResponse(Long id, Long userId, String symbol, String companyName,
                              Integer quantity, BigDecimal buyPrice,
                              BigDecimal totalInvested, LocalDateTime boughtAt, String message) {
        this.id = id;
        this.userId = userId;
        this.symbol = symbol;
        this.companyName = companyName;
        this.quantity = quantity;
        this.buyPrice = buyPrice;
        this.totalInvested = totalInvested;
        this.boughtAt = boughtAt;
        this.message = message;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public Long getUserId() { return userId; }
    public void setUserId(Long userId) { this.userId = userId; }

    public String getSymbol() { return symbol; }
    public void setSymbol(String symbol) { this.symbol = symbol; }

    public String getCompanyName() { return companyName; }
    public void setCompanyName(String companyName) { this.companyName = companyName; }

    public Integer getQuantity() { return quantity; }
    public void setQuantity(Integer quantity) { this.quantity = quantity; }

    public BigDecimal getBuyPrice() { return buyPrice; }
    public void setBuyPrice(BigDecimal buyPrice) { this.buyPrice = buyPrice; }

    public BigDecimal getTotalInvested() { return totalInvested; }
    public void setTotalInvested(BigDecimal totalInvested) { this.totalInvested = totalInvested; }

    public LocalDateTime getBoughtAt() { return boughtAt; }
    public void setBoughtAt(LocalDateTime boughtAt) { this.boughtAt = boughtAt; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }

    public String getSector() { return sector; }
    public void setSector(String sector) { this.sector = sector; }

    public String getIndustry() { return industry; }
    public void setIndustry(String industry) { this.industry = industry; }
}
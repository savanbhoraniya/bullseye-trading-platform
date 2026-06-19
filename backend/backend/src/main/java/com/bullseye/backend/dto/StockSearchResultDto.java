package com.bullseye.backend.dto;

import java.math.BigDecimal;

public class StockSearchResultDto {

    private String symbol;
    private String companyName;
    private String industry;
    private String sector;
    private BigDecimal price;
    private BigDecimal changePercent;
    private BigDecimal changeValue;

    public StockSearchResultDto() {
    }

    public StockSearchResultDto(String symbol, String companyName, String industry, String sector,
                                BigDecimal price, BigDecimal changePercent, BigDecimal changeValue) {
        this.symbol = symbol;
        this.companyName = companyName;
        this.industry = industry;
        this.sector = sector;
        this.price = price;
        this.changePercent = changePercent;
        this.changeValue = changeValue;
    }

    // Getters and Setters
    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getChangePercent() {
        return changePercent;
    }

    public void setChangePercent(BigDecimal changePercent) {
        this.changePercent = changePercent;
    }

    public BigDecimal getChangeValue() {
        return changeValue;
    }

    public void setChangeValue(BigDecimal changeValue) {
        this.changeValue = changeValue;
    }
}

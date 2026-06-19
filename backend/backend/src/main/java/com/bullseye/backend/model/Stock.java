package com.bullseye.backend.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "stocks", indexes = {
    @Index(name = "idx_symbol", columnList = "symbol"),
    @Index(name = "idx_company_name", columnList = "company_name"),
    @Index(name = "idx_is_active", columnList = "is_active")
})
public class Stock {

    @Id
    @Column(name = "symbol", length = 20)
    private String symbol;

    @Column(name = "company_name", length = 200, nullable = false)
    private String companyName;

    @Column(name = "industry", length = 100)
    private String industry;

    @Column(name = "sector", length = 100)
    private String sector;

    @Column(name = "isin", length = 20)
    private String isin;

    @Column(name = "series", length = 10)
    private String series = "EQ";

    @Column(name = "is_active")
    private Boolean isActive = true;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
    }

    // Constructors
    public Stock() {
    }

    public Stock(String symbol, String companyName) {
        this.symbol = symbol;
        this.companyName = companyName;
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

    public String getIsin() {
        return isin;
    }

    public void setIsin(String isin) {
        this.isin = isin;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public Boolean getIsActive() {
        return isActive;
    }

    public void setIsActive(Boolean isActive) {
        this.isActive = isActive;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
}

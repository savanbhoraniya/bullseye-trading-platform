package com.bullseye.backend.model;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "stock_prices", indexes = {
    @Index(name = "idx_last_updated", columnList = "last_updated"),
    @Index(name = "idx_change_percent", columnList = "change_percent")
})
public class StockPrice {

    @Id
    @Column(name = "symbol", length = 20)
    private String symbol;

    @Column(name = "price", precision = 12, scale = 2)
    private BigDecimal price;

    @Column(name = "open_price", precision = 12, scale = 2)
    private BigDecimal openPrice;

    @Column(name = "high", precision = 12, scale = 2)
    private BigDecimal high;

    @Column(name = "low", precision = 12, scale = 2)
    private BigDecimal low;

    @Column(name = "prev_close", precision = 12, scale = 2)
    private BigDecimal prevClose;

    @Column(name = "change_value", precision = 12, scale = 2)
    private BigDecimal changeValue;

    @Column(name = "change_percent", precision = 8, scale = 3)
    private BigDecimal changePercent;

    @Column(name = "volume")
    private Long volume;

    @Column(name = "last_updated")
    private LocalDateTime lastUpdated;

    @PrePersist
    @PreUpdate
    protected void onUpdate() {
        lastUpdated = LocalDateTime.now();
    }

    // Constructors
    public StockPrice() {
    }

    public StockPrice(String symbol) {
        this.symbol = symbol;
    }

    // Getters and Setters
    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getOpenPrice() {
        return openPrice;
    }

    public void setOpenPrice(BigDecimal openPrice) {
        this.openPrice = openPrice;
    }

    public BigDecimal getHigh() {
        return high;
    }

    public void setHigh(BigDecimal high) {
        this.high = high;
    }

    public BigDecimal getLow() {
        return low;
    }

    public void setLow(BigDecimal low) {
        this.low = low;
    }

    public BigDecimal getPrevClose() {
        return prevClose;
    }

    public void setPrevClose(BigDecimal prevClose) {
        this.prevClose = prevClose;
    }

    public BigDecimal getChangeValue() {
        return changeValue;
    }

    public void setChangeValue(BigDecimal changeValue) {
        this.changeValue = changeValue;
    }

    public BigDecimal getChangePercent() {
        return changePercent;
    }

    public void setChangePercent(BigDecimal changePercent) {
        this.changePercent = changePercent;
    }

    public Long getVolume() {
        return volume;
    }

    public void setVolume(Long volume) {
        this.volume = volume;
    }

    public LocalDateTime getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(LocalDateTime lastUpdated) {
        this.lastUpdated = lastUpdated;
    }
}

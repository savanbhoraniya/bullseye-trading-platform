package com.bullseye.backend.dto;

import java.math.BigDecimal;
import java.util.List;

public class MarketDepthDto {

    private String symbol;
    private List<OrderBookEntry> buyOrders;
    private List<OrderBookEntry> sellOrders;
    private Long totalBuyQuantity;
    private Long totalSellQuantity;

    public static class OrderBookEntry {
        private BigDecimal price;
        private Long quantity;
        private Integer orders;

        public OrderBookEntry() {
        }

        public OrderBookEntry(BigDecimal price, Long quantity, Integer orders) {
            this.price = price;
            this.quantity = quantity;
            this.orders = orders;
        }

        public BigDecimal getPrice() {
            return price;
        }

        public void setPrice(BigDecimal price) {
            this.price = price;
        }

        public Long getQuantity() {
            return quantity;
        }

        public void setQuantity(Long quantity) {
            this.quantity = quantity;
        }

        public Integer getOrders() {
            return orders;
        }

        public void setOrders(Integer orders) {
            this.orders = orders;
        }
    }

    public MarketDepthDto() {
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public List<OrderBookEntry> getBuyOrders() {
        return buyOrders;
    }

    public void setBuyOrders(List<OrderBookEntry> buyOrders) {
        this.buyOrders = buyOrders;
    }

    public List<OrderBookEntry> getSellOrders() {
        return sellOrders;
    }

    public void setSellOrders(List<OrderBookEntry> sellOrders) {
        this.sellOrders = sellOrders;
    }

    public Long getTotalBuyQuantity() {
        return totalBuyQuantity;
    }

    public void setTotalBuyQuantity(Long totalBuyQuantity) {
        this.totalBuyQuantity = totalBuyQuantity;
    }

    public Long getTotalSellQuantity() {
        return totalSellQuantity;
    }

    public void setTotalSellQuantity(Long totalSellQuantity) {
        this.totalSellQuantity = totalSellQuantity;
    }
}

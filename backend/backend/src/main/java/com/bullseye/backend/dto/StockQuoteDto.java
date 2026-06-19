package com.bullseye.backend.dto;

public class StockQuoteDto {

    private String symbol;
    private String name;

    private double price;

    private double change;

    private double percentChange;

    private double open;

    private double high;

    private double low;

    private double high52w;

    private double low52w;

    private double prevClose;

    private long volume;

    public StockQuoteDto() {
    }

    public StockQuoteDto(
            String symbol,
            String name,
            double price,
            double change,
            double percentChange,
            double open,
            double high,
            double low,
            double high52w,
            double low52w,
            double prevClose,
            long volume
    ) {

        this.symbol = symbol;

        this.name = name;

        this.price = price;

        this.change = change;

        this.percentChange = percentChange;

        this.open = open;

        this.high = high;

        this.low = low;

        this.high52w = high52w;

        this.low52w = low52w;

        this.prevClose = prevClose;

        this.volume = volume;

    }

    public String getSymbol() {

        return symbol;

    }

    public void setSymbol(String symbol) {

        this.symbol = symbol;

    }

    public String getName() {

        return name;

    }

    public void setName(String name) {

        this.name = name;

    }

    public double getPrice() {

        return price;

    }

    public void setPrice(double price) {

        this.price = price;

    }

    public double getChange() {

        return change;

    }

    public void setChange(double change) {

        this.change = change;

    }

    public double getPercentChange() {

        return percentChange;

    }

    public void setPercentChange(
            double percentChange
    ) {

        this.percentChange = percentChange;

    }

    public double getOpen() {

        return open;

    }

    public void setOpen(double open) {

        this.open = open;

    }

    public double getHigh() {

        return high;

    }

    public void setHigh(double high) {

        this.high = high;

    }

    public double getLow() {

        return low;

    }

    public void setLow(double low) {

        this.low = low;

    }

    public double getHigh52w() {

        return high52w;

    }

    public void setHigh52w(
            double high52w
    ) {

        this.high52w = high52w;

    }

    public double getLow52w() {

        return low52w;

    }

    public void setLow52w(
            double low52w
    ) {

        this.low52w = low52w;

    }

    public double getPrevClose() {

        return prevClose;

    }

    public void setPrevClose(
            double prevClose
    ) {

        this.prevClose = prevClose;

    }

    public long getVolume() {

        return volume;

    }

    public void setVolume(long volume) {

        this.volume = volume;

    }

}
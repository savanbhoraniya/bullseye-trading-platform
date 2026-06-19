package com.bullseye.backend.dto;

public class WatchlistResponse {
    private Long id;
    private Long userId;
    private String symbol;
    private String companyName;
    private String message;

    public WatchlistResponse() {}

    public WatchlistResponse(String message) {
        this.message = message;
    }

    public WatchlistResponse(Long id, Long userId, String symbol,
                              String companyName, String message) {
        this.id = id;
        this.userId = userId;
        this.symbol = symbol;
        this.companyName = companyName;
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

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
}
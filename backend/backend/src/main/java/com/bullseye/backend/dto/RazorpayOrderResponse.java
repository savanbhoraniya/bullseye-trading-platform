package com.bullseye.backend.dto;

public class RazorpayOrderResponse {
    private String id;
    private Integer amount;
    private String currency;
    private String receipt;

    public RazorpayOrderResponse() {}

    public RazorpayOrderResponse(String id, Integer amount, String currency, String receipt) {
        this.id = id;
        this.amount = amount;
        this.currency = currency;
        this.receipt = receipt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getReceipt() {
        return receipt;
    }

    public void setReceipt(String receipt) {
        this.receipt = receipt;
    }
}

package com.bullseye.backend.dto;

import java.time.LocalDate;

public class CorporateActionDto {

    private String symbol;
    private String actionType; // DIVIDEND, SPLIT, BONUS, RIGHTS
    private String description;
    private LocalDate exDate;
    private LocalDate recordDate;
    private String details;

    public CorporateActionDto() {
    }

    public CorporateActionDto(String symbol, String actionType, String description, 
                              LocalDate exDate, LocalDate recordDate, String details) {
        this.symbol = symbol;
        this.actionType = actionType;
        this.description = description;
        this.exDate = exDate;
        this.recordDate = recordDate;
        this.details = details;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public String getActionType() {
        return actionType;
    }

    public void setActionType(String actionType) {
        this.actionType = actionType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getExDate() {
        return exDate;
    }

    public void setExDate(LocalDate exDate) {
        this.exDate = exDate;
    }

    public LocalDate getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(LocalDate recordDate) {
        this.recordDate = recordDate;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }
}

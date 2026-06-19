package com.bullseye.backend.dto;

import java.util.List;

public class BulkQuoteRequest {

    private List<String> symbols;

    public List<String> getSymbols() {

        return symbols;

    }

    public void setSymbols(
            List<String> symbols
    ) {

        this.symbols = symbols;

    }

}
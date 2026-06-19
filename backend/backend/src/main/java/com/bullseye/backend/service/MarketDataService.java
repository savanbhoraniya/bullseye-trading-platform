package com.bullseye.backend.service;

import com.bullseye.backend.dto.StockQuoteDto;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.springframework.cache.annotation.Cacheable;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Service;

import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

@Service
public class MarketDataService {

    private final RestTemplate restTemplate;

    public MarketDataService(
            RestTemplate restTemplate
    ) {

        this.restTemplate = restTemplate;

    }

    public StockQuoteDto getQuote(
            String symbol
    ) {

        try {

            String yahooSymbol =
                    convertSymbol(symbol);

            String url =
                    "https://query1.finance.yahoo.com/v8/finance/chart/"
                            + yahooSymbol;

            HttpHeaders headers =
                    new HttpHeaders();

            headers.set(
                    "User-Agent",
                    "Mozilla/5.0"
            );

            HttpEntity<String> entity =
                    new HttpEntity<>(headers);

            ResponseEntity<String> responseEntity =
                    restTemplate.exchange(
                            url,
                            HttpMethod.GET,
                            entity,
                            String.class
                    );

            String response =
                    responseEntity.getBody();

            System.out.println(
                    "YAHOO RESPONSE: "
                            + response
            );

            ObjectMapper mapper =
                    new ObjectMapper();

            JsonNode root =
                    mapper.readTree(response);

            JsonNode result =
                    root.path("chart")
                            .path("result")
                            .get(0);

            if (result == null) {

                System.out.println(
                        "Yahoo result is null"
                );

                return new StockQuoteDto();

            }

            JsonNode meta =
                    result.path("meta");

            StockQuoteDto dto =
                    new StockQuoteDto();

            dto.setSymbol(symbol);

            dto.setName(
                    meta.path("symbol")
                            .asText(symbol)
            );

            double currentPrice =
                    meta.path("regularMarketPrice")
                            .asDouble();

            double previousClose =
                    meta.path("previousClose")
                            .asDouble();

            dto.setPrice(currentPrice);

            dto.setChange(
                    currentPrice
                            - previousClose
            );

            double percentChange = 0;

            if (previousClose != 0) {

                percentChange =
                        (
                                (
                                        currentPrice
                                                - previousClose
                                )
                                        / previousClose
                        ) * 100;

            }

            dto.setPercentChange(
                    percentChange
            );

            dto.setOpen(
                    meta.path("regularMarketOpen")
                            .asDouble()
            );

            dto.setHigh(
                    meta.path("regularMarketDayHigh")
                            .asDouble()
            );

            dto.setLow(
                    meta.path("regularMarketDayLow")
                            .asDouble()
            );

            dto.setHigh52w(
                    meta.path("fiftyTwoWeekHigh")
                            .asDouble()
            );

            dto.setLow52w(
                    meta.path("fiftyTwoWeekLow")
                            .asDouble()
            );

            dto.setPrevClose(previousClose);

            dto.setVolume(
                    meta.path("regularMarketVolume")
                            .asLong()
            );

            return dto;

        } catch (Exception e) {

            e.printStackTrace();

            return new StockQuoteDto();

        }

    }

    public List<StockQuoteDto> getBulkQuotes(
            List<String> symbols
    ) {

        List<StockQuoteDto> result =
                new ArrayList<>();

        for (String symbol : symbols) {

            result.add(
                    getQuote(symbol)
            );

        }

        return result;

    }

    private String convertSymbol(
            String symbol
    ) {

        // If symbol starts with ^, it's an index - return as-is
        if (symbol.startsWith("^")) {
            return symbol;
        }

        // If symbol already has .NS suffix, return as-is
        if (symbol.endsWith(".NS")) {
            return symbol;
        }

        // Otherwise, it's a stock - add .NS suffix
        return symbol + ".NS";

    }

}
package com.bullseye.backend.repository;

import com.bullseye.backend.model.StockPrice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StockPriceRepository extends JpaRepository<StockPrice, String> {

    /**
     * Find prices for multiple symbols
     */
    List<StockPrice> findBySymbolIn(List<String> symbols);

    /**
     * Get top gainers
     */
    @Query("SELECT sp FROM StockPrice sp ORDER BY sp.changePercent DESC")
    List<StockPrice> findTopGainers();

    /**
     * Get top losers
     */
    @Query("SELECT sp FROM StockPrice sp ORDER BY sp.changePercent ASC")
    List<StockPrice> findTopLosers();

    /**
     * Count total cached prices
     */
    long count();
}

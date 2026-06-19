package com.bullseye.backend.repository;

import com.bullseye.backend.model.Stock;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StockRepository extends JpaRepository<Stock, String> {

    /**
     * Find all active stock symbols
     */
    @Query("SELECT s.symbol FROM Stock s WHERE s.isActive = true ORDER BY s.symbol")
    List<String> findAllActiveSymbols();

    /**
     * Search stocks by symbol or company name (case-insensitive)
     */
    @Query("SELECT s FROM Stock s WHERE s.isActive = true AND " +
           "(LOWER(s.symbol) LIKE LOWER(CONCAT('%', :query, '%')) OR " +
           "LOWER(s.companyName) LIKE LOWER(CONCAT('%', :query, '%'))) " +
           "ORDER BY " +
           "CASE WHEN LOWER(s.symbol) = LOWER(:query) THEN 1 " +
           "     WHEN LOWER(s.symbol) LIKE LOWER(CONCAT(:query, '%')) THEN 2 " +
           "     WHEN LOWER(s.companyName) LIKE LOWER(CONCAT(:query, '%')) THEN 3 " +
           "     ELSE 4 END, " +
           "s.symbol")
    List<Stock> searchBySymbolOrName(@Param("query") String query);

    /**
     * Find all active stocks
     */
    List<Stock> findByIsActiveTrue();

    /**
     * Count active stocks
     */
    long countByIsActiveTrue();
}

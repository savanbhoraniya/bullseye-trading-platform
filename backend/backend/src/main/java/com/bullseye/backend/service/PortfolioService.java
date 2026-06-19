package com.bullseye.backend.service;

import com.bullseye.backend.dto.BuyRequest;
import com.bullseye.backend.dto.PortfolioResponse;
import com.bullseye.backend.dto.SellRequest;
import com.bullseye.backend.entity.AccountBalance;
import com.bullseye.backend.entity.Portfolio;
import com.bullseye.backend.entity.Transaction;
import com.bullseye.backend.model.Stock;
import com.bullseye.backend.repository.AccountBalanceRepository;
import com.bullseye.backend.repository.PortfolioRepository;
import com.bullseye.backend.repository.StockRepository;
import com.bullseye.backend.repository.TransactionRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class PortfolioService {

    private final PortfolioRepository portfolioRepository;
    private final AccountBalanceRepository balanceRepository;
    private final TransactionRepository transactionRepository;
    private final StockRepository stockRepository;

    public PortfolioService(PortfolioRepository portfolioRepository,
                            AccountBalanceRepository balanceRepository,
                            TransactionRepository transactionRepository,
                            StockRepository stockRepository) {
        this.portfolioRepository = portfolioRepository;
        this.balanceRepository = balanceRepository;
        this.transactionRepository = transactionRepository;
        this.stockRepository = stockRepository;
    }

    public List<PortfolioResponse> getPortfolio(Long userId) {
        return portfolioRepository.findByUserId(userId)
                .stream()
                .map(p -> {
                    PortfolioResponse response = new PortfolioResponse(
                            p.getId(), p.getUserId(), p.getSymbol(),
                            p.getCompanyName(), p.getQuantity(),
                            p.getBuyPrice(), p.getTotalInvested(),
                            p.getBoughtAt(), "Success");
                    
                    // Fetch sector and industry from stocks table
                    stockRepository.findById(p.getSymbol()).ifPresent(stock -> {
                        response.setSector(stock.getSector());
                        response.setIndustry(stock.getIndustry());
                    });
                    
                    return response;
                })
                .collect(Collectors.toList());
    }

    @Transactional
    public PortfolioResponse buyStock(BuyRequest request) {
        if (request.getQuantity() <= 0) {
            throw new RuntimeException("Quantity must be greater than 0");
        }

        BigDecimal totalCost = request.getPrice()
                .multiply(BigDecimal.valueOf(request.getQuantity()));

        // Check balance
        AccountBalance account = balanceRepository.findByUserId(request.getUserId())
                .orElseThrow(() -> new RuntimeException("Account not found"));

        if (account.getBalance().compareTo(totalCost) < 0) {
            throw new RuntimeException(
                "Insufficient balance. Required: ₹" + totalCost +
                " Available: ₹" + account.getBalance());
        }

        // Deduct balance
        account.setBalance(account.getBalance().subtract(totalCost));
        balanceRepository.save(account);

        // Save or update portfolio
        Portfolio portfolio = portfolioRepository
                .findByUserIdAndSymbol(request.getUserId(), request.getSymbol())
                .orElse(null);

        if (portfolio != null) {
            // Already owns this stock — average the buy price
            BigDecimal totalQty = BigDecimal.valueOf(
                    portfolio.getQuantity() + request.getQuantity());
            BigDecimal newTotalInvested = portfolio.getTotalInvested().add(totalCost);
            BigDecimal avgPrice = newTotalInvested.divide(totalQty, 2,
                    java.math.RoundingMode.HALF_UP);

            portfolio.setQuantity(portfolio.getQuantity() + request.getQuantity());
            portfolio.setBuyPrice(avgPrice);
            portfolio.setTotalInvested(newTotalInvested);
        } else {
            portfolio = new Portfolio();
            portfolio.setUserId(request.getUserId());
            portfolio.setSymbol(request.getSymbol().toUpperCase());
            portfolio.setCompanyName(request.getCompanyName());
            portfolio.setQuantity(request.getQuantity());
            portfolio.setBuyPrice(request.getPrice());
            portfolio.setTotalInvested(totalCost);
        }

        Portfolio saved = portfolioRepository.save(portfolio);

        // Save transaction
        Transaction tx = new Transaction();
        tx.setUserId(request.getUserId());
        tx.setType("TRADE");
        tx.setAmount(totalCost);
        tx.setStatus("SUCCESS");
        transactionRepository.save(tx);

        return new PortfolioResponse(
                saved.getId(), saved.getUserId(), saved.getSymbol(),
                saved.getCompanyName(), saved.getQuantity(),
                saved.getBuyPrice(), saved.getTotalInvested(),
                saved.getBoughtAt(),
                "Successfully bought " + request.getQuantity() +
                " shares of " + request.getSymbol());
    }

    @Transactional
    public PortfolioResponse sellStock(SellRequest request) {
        Portfolio portfolio = portfolioRepository
                .findByUserIdAndSymbol(request.getUserId(), request.getSymbol())
                .orElseThrow(() -> new RuntimeException(
                        "You don't own any shares of " + request.getSymbol()));

        if (request.getQuantity() > portfolio.getQuantity()) {
            throw new RuntimeException(
                "Cannot sell " + request.getQuantity() + " shares. " +
                "You only own " + portfolio.getQuantity() + " shares.");
        }

        BigDecimal saleValue = request.getPrice()
                .multiply(BigDecimal.valueOf(request.getQuantity()));

        // Add to balance
        AccountBalance account = balanceRepository.findByUserId(request.getUserId())
                .orElseThrow(() -> new RuntimeException("Account not found"));
        account.setBalance(account.getBalance().add(saleValue));
        balanceRepository.save(account);

        // Update or remove portfolio
        if (request.getQuantity().equals(portfolio.getQuantity())) {
            portfolioRepository.delete(portfolio);
        } else {
            int remaining = portfolio.getQuantity() - request.getQuantity();
            BigDecimal newTotalInvested = portfolio.getBuyPrice()
                    .multiply(BigDecimal.valueOf(remaining));
            portfolio.setQuantity(remaining);
            portfolio.setTotalInvested(newTotalInvested);
            portfolioRepository.save(portfolio);
        }

        // Save transaction
        Transaction tx = new Transaction();
        tx.setUserId(request.getUserId());
        tx.setType("TRADE");
        tx.setAmount(saleValue);
        tx.setStatus("SUCCESS");
        transactionRepository.save(tx);

        return new PortfolioResponse(
                null, request.getUserId(), request.getSymbol(),
                null, request.getQuantity(), request.getPrice(),
                saleValue, null,
                "Successfully sold " + request.getQuantity() +
                " shares of " + request.getSymbol() +
                " for ₹" + saleValue);
    }
}
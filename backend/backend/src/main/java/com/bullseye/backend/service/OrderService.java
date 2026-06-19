package com.bullseye.backend.service;

import com.bullseye.backend.dto.OrderRequest;
import com.bullseye.backend.dto.OrderResponse;
import com.bullseye.backend.dto.StockQuoteDto;
import com.bullseye.backend.entity.AccountBalance;
import com.bullseye.backend.entity.Order;
import com.bullseye.backend.entity.Portfolio;
import com.bullseye.backend.entity.Transaction;
import com.bullseye.backend.repository.AccountBalanceRepository;
import com.bullseye.backend.repository.OrderRepository;
import com.bullseye.backend.repository.PortfolioRepository;
import com.bullseye.backend.repository.TransactionRepository;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class OrderService {

    private final OrderRepository orderRepository;
    private final AccountBalanceRepository balanceRepository;
    private final PortfolioRepository portfolioRepository;
    private final TransactionRepository transactionRepository;
    private final MarketDataService marketDataService;

    public OrderService(OrderRepository orderRepository,
                        AccountBalanceRepository balanceRepository,
                        PortfolioRepository portfolioRepository,
                        TransactionRepository transactionRepository,
                        MarketDataService marketDataService) {
        this.orderRepository = orderRepository;
        this.balanceRepository = balanceRepository;
        this.portfolioRepository = portfolioRepository;
        this.transactionRepository = transactionRepository;
        this.marketDataService = marketDataService;
    }

    public List<OrderResponse> getOrders(Long userId) {
        return orderRepository.findByUserIdOrderByCreatedAtDesc(userId)
                .stream().map(this::toResponse).collect(Collectors.toList());
    }

    public List<OrderResponse> getPendingOrders(Long userId) {
        return orderRepository.findByUserIdAndStatusOrderByCreatedAtDesc(userId, "PENDING")
                .stream().map(this::toResponse).collect(Collectors.toList());
    }

    public List<OrderResponse> getExecutedOrders(Long userId) {
        return orderRepository.findByUserIdAndStatusOrderByCreatedAtDesc(userId, "EXECUTED")
                .stream().map(this::toResponse).collect(Collectors.toList());
    }

    @Transactional
    public OrderResponse placeOrder(OrderRequest request) {
        BigDecimal price = request.getOrderType().equals("MARKET")
                ? request.getCurrentPrice() : request.getLimitPrice();

        if (price == null || price.compareTo(BigDecimal.ZERO) <= 0) {
            throw new RuntimeException("Invalid price");
        }
        if (request.getQuantity() <= 0) {
            throw new RuntimeException("Invalid quantity");
        }

        BigDecimal totalCost = price.multiply(BigDecimal.valueOf(request.getQuantity()));

        // For BUY orders — check and deduct balance immediately
        if (request.getAction().equals("BUY")) {
            AccountBalance account = balanceRepository.findByUserId(request.getUserId())
                    .orElseThrow(() -> new RuntimeException("Account not found"));
            if (account.getBalance().compareTo(totalCost) < 0) {
                throw new RuntimeException("Insufficient balance. Required: ₹" + totalCost
                        + " Available: ₹" + account.getBalance());
            }
            // Deduct balance immediately for both market and limit
            account.setBalance(account.getBalance().subtract(totalCost));
            balanceRepository.save(account);
        }

        // For SELL orders — check portfolio
        if (request.getAction().equals("SELL")) {
            Portfolio portfolio = portfolioRepository
                    .findByUserIdAndSymbol(request.getUserId(), request.getSymbol())
                    .orElseThrow(() -> new RuntimeException(
                            "You don't own any shares of " + request.getSymbol()));
            if (request.getQuantity() > portfolio.getQuantity()) {
                throw new RuntimeException("Cannot sell " + request.getQuantity()
                        + " shares. You only own " + portfolio.getQuantity());
            }
        }

        Order order = new Order();
        order.setUserId(request.getUserId());
        order.setSymbol(request.getSymbol().toUpperCase());
        order.setCompanyName(request.getCompanyName());
        order.setOrderType(request.getOrderType());
        order.setAction(request.getAction());
        order.setQuantity(request.getQuantity());

        if (request.getOrderType().equals("MARKET")) {
            order.setExecutedPrice(request.getCurrentPrice());
            order.setStatus("EXECUTED");
            order.setExecutedAt(LocalDateTime.now());
            executeOrderEffect(order, request.getCurrentPrice());
        } else {
            order.setLimitPrice(request.getLimitPrice());
            order.setStatus("PENDING");
        }

        Order saved = orderRepository.save(order);
        return toResponse(saved);
    }

    @Transactional
    public OrderResponse cancelOrder(Long orderId, Long userId) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new RuntimeException("Order not found"));

        if (!order.getUserId().equals(userId)) {
            throw new RuntimeException("Unauthorized");
        }
        if (!order.getStatus().equals("PENDING")) {
            throw new RuntimeException("Only pending orders can be cancelled");
        }

        // Refund balance for BUY limit orders
        if (order.getAction().equals("BUY")) {
            BigDecimal refund = order.getLimitPrice()
                    .multiply(BigDecimal.valueOf(order.getQuantity()));
            AccountBalance account = balanceRepository.findByUserId(userId)
                    .orElseThrow(() -> new RuntimeException("Account not found"));
            account.setBalance(account.getBalance().add(refund));
            balanceRepository.save(account);
        }

        order.setStatus("CANCELLED");
        Order saved = orderRepository.save(order);
        return toResponse(saved);
    }

    // DISABLED: Scheduler causing Railway crashes due to API rate limits and memory issues
    // Check pending limit orders manually via API endpoint instead
    // @Scheduled(fixedDelay = 300000) // 5 minutes
    @Transactional
    public void checkPendingLimitOrders() {
        try {
            List<Order> pendingOrders = orderRepository.findByStatus("PENDING");
            
            if (pendingOrders.isEmpty()) {
                System.out.println("No pending orders to process");
                return; // No pending orders, skip processing
            }
            
            System.out.println("Checking " + pendingOrders.size() + " pending limit orders...");
            
            // Collect all unique symbols from pending orders
            List<String> uniqueSymbols = pendingOrders.stream()
                    .map(Order::getSymbol)
                    .distinct()
                    .collect(java.util.stream.Collectors.toList());
            
            System.out.println("Fetching prices for " + uniqueSymbols.size() + " unique symbols in bulk...");
            
            // Fetch all prices in one bulk call
            Map<String, BigDecimal> symbolPriceMap = new HashMap<>();
            try {
                List<StockQuoteDto> quotes = marketDataService.getBulkQuotes(uniqueSymbols);
                for (StockQuoteDto quote : quotes) {
                    if (quote != null && quote.getSymbol() != null && quote.getPrice() > 0) {
                        symbolPriceMap.put(
                            quote.getSymbol(), 
                            BigDecimal.valueOf(quote.getPrice()).setScale(2, RoundingMode.HALF_UP)
                        );
                    }
                }
                System.out.println("Successfully fetched prices for " + symbolPriceMap.size() + " symbols");
            } catch (Exception e) {
                System.err.println("Error fetching bulk quotes: " + e.getMessage());
                return; // Skip processing if bulk fetch fails
            }
            
            // Process each pending order using the cached prices
            int executedCount = 0;
            for (Order order : pendingOrders) {
                try {
                    BigDecimal currentMarketPrice = symbolPriceMap.get(order.getSymbol());
                    
                    if (currentMarketPrice == null || currentMarketPrice.compareTo(BigDecimal.ZERO) <= 0) {
                        System.out.println("Skipping order " + order.getId() + " - no price available for " + order.getSymbol());
                        continue;
                    }
                    
                    BigDecimal limitPrice = order.getLimitPrice();
                    boolean shouldExecute = false;

                    if (order.getAction().equals("BUY")) {
                        // Execute buy if market price <= limit price
                        shouldExecute = currentMarketPrice.compareTo(limitPrice) <= 0;
                    } else {
                        // Execute sell if market price >= limit price
                        shouldExecute = currentMarketPrice.compareTo(limitPrice) >= 0;
                    }

                    if (shouldExecute) {
                        order.setExecutedPrice(currentMarketPrice);
                        order.setStatus("EXECUTED");
                        order.setExecutedAt(LocalDateTime.now());
                        executeOrderEffect(order, currentMarketPrice);
                        orderRepository.save(order);
                        executedCount++;
                        System.out.println("Executed order " + order.getId() + " for " + order.getSymbol() + " at price " + currentMarketPrice);
                    }
                    
                } catch (Exception e) {
                    // Log error but continue processing other orders
                    System.err.println("Error processing order " + order.getId() + ": " + e.getMessage());
                }
            }
            
            System.out.println("Order check complete: " + executedCount + " orders executed out of " + pendingOrders.size() + " pending");
            
        } catch (Exception e) {
            // Catch any unexpected errors to prevent scheduler from stopping
            System.err.println("Critical error in checkPendingLimitOrders: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private void executeOrderEffect(Order order, BigDecimal price) {
        BigDecimal totalValue = price.multiply(BigDecimal.valueOf(order.getQuantity()));

        if (order.getAction().equals("BUY")) {
            // Add to portfolio
            Portfolio portfolio = portfolioRepository
                    .findByUserIdAndSymbol(order.getUserId(), order.getSymbol())
                    .orElse(null);

            if (portfolio != null) {
                BigDecimal totalQty = BigDecimal.valueOf(
                        portfolio.getQuantity() + order.getQuantity());
                BigDecimal newTotalInvested = portfolio.getTotalInvested().add(totalValue);
                BigDecimal avgPrice = newTotalInvested.divide(totalQty, 2, RoundingMode.HALF_UP);
                portfolio.setQuantity(portfolio.getQuantity() + order.getQuantity());
                portfolio.setBuyPrice(avgPrice);
                portfolio.setTotalInvested(newTotalInvested);
            } else {
                portfolio = new Portfolio();
                portfolio.setUserId(order.getUserId());
                portfolio.setSymbol(order.getSymbol());
                portfolio.setCompanyName(order.getCompanyName());
                portfolio.setQuantity(order.getQuantity());
                portfolio.setBuyPrice(price);
                portfolio.setTotalInvested(totalValue);
            }
            portfolioRepository.save(portfolio);

            // Save transaction
            saveTransaction(order.getUserId(), "TRADE", totalValue);

        } else if (order.getAction().equals("SELL")) {
            Portfolio portfolio = portfolioRepository
                    .findByUserIdAndSymbol(order.getUserId(), order.getSymbol())
                    .orElse(null);

            if (portfolio != null) {
                // Add sale value to balance
                AccountBalance account = balanceRepository
                        .findByUserId(order.getUserId()).orElse(null);
                if (account != null) {
                    account.setBalance(account.getBalance().add(totalValue));
                    balanceRepository.save(account);
                }

                // Update portfolio
                if (order.getQuantity() >= portfolio.getQuantity()) {
                    portfolioRepository.delete(portfolio);
                } else {
                    int remaining = portfolio.getQuantity() - order.getQuantity();
                    portfolio.setQuantity(remaining);
                    portfolio.setTotalInvested(
                            portfolio.getBuyPrice().multiply(BigDecimal.valueOf(remaining)));
                    portfolioRepository.save(portfolio);
                }

                saveTransaction(order.getUserId(), "TRADE", totalValue);
            }
        }
    }

    private void saveTransaction(Long userId, String type, BigDecimal amount) {
        Transaction tx = new Transaction();
        tx.setUserId(userId);
        tx.setType(type);
        tx.setAmount(amount);
        tx.setStatus("SUCCESS");
        transactionRepository.save(tx);
    }

    // Simulate market price for limit order checking
    private BigDecimal simulateCurrentPrice(String symbol) {
        java.util.Map<String, Double> basePrices = new java.util.HashMap<>();
        basePrices.put("RELIANCE", 2456.75); basePrices.put("TCS", 3891.20);
        basePrices.put("HDFCBANK", 1654.20); basePrices.put("INFY", 1567.80);
        basePrices.put("WIPRO", 456.30);     basePrices.put("HCLTECH", 1345.60);
        basePrices.put("ADANIENT", 2891.30); basePrices.put("TATAMOTORS", 987.45);
        basePrices.put("BAJFINANCE", 6782.10);basePrices.put("SBIN", 789.40);

        double base = basePrices.getOrDefault(symbol, 1000.0);
        double change = (Math.random() - 0.48) * base * 0.01;
        return BigDecimal.valueOf(base + change).setScale(2, RoundingMode.HALF_UP);
    }

    // Get real current market price from Yahoo Finance
    private BigDecimal getCurrentMarketPrice(String symbol) {
        try {
            System.out.println("Fetching market price for: " + symbol);
            var quote = marketDataService.getQuote(symbol);
            if (quote != null && quote.getPrice() > 0) {
                BigDecimal price = BigDecimal.valueOf(quote.getPrice()).setScale(2, RoundingMode.HALF_UP);
                System.out.println("Fetched price for " + symbol + ": " + price);
                return price;
            }
            System.out.println("No valid price returned for " + symbol);
        } catch (Exception e) {
            System.err.println("Error fetching market price for " + symbol + ": " + e.getMessage());
            // Don't print full stack trace to avoid log spam
        }
        return null;
    }

    private OrderResponse toResponse(Order o) {
        return new OrderResponse(o.getId(), o.getUserId(), o.getSymbol(),
                o.getCompanyName(), o.getOrderType(), o.getAction(),
                o.getQuantity(), o.getLimitPrice(), o.getExecutedPrice(),
                o.getStatus(), o.getCreatedAt(), o.getExecutedAt(), "Success");
    }
}
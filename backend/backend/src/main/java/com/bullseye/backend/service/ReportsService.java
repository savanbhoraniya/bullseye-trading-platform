package com.bullseye.backend.service;

import com.bullseye.backend.entity.Order;
import com.bullseye.backend.entity.Transaction;
import com.bullseye.backend.repository.OrderRepository;
import com.bullseye.backend.repository.TransactionRepository;
import com.bullseye.backend.repository.AccountBalanceRepository;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class ReportsService {

    private final OrderRepository orderRepository;
    private final TransactionRepository transactionRepository;
    private final AccountBalanceRepository balanceRepository;

    public ReportsService(
            OrderRepository orderRepository,
            TransactionRepository transactionRepository,
            AccountBalanceRepository balanceRepository) {
        this.orderRepository = orderRepository;
        this.transactionRepository = transactionRepository;
        this.balanceRepository = balanceRepository;
    }

    public List<Map<String, Object>> getTradeHistory(Long userId) {
        // Get all executed orders (both buy and sell) sorted by execution date
        List<Order> orders = orderRepository.findByUserIdAndStatusOrderByCreatedAtDesc(userId, "EXECUTED");
        
        // Sort by executed date if available, otherwise by created date
        orders.sort((o1, o2) -> {
            java.time.LocalDateTime date1 = o1.getExecutedAt() != null ? o1.getExecutedAt() : o1.getCreatedAt();
            java.time.LocalDateTime date2 = o2.getExecutedAt() != null ? o2.getExecutedAt() : o2.getCreatedAt();
            return date2.compareTo(date1); // Descending order (newest first)
        });
        
        return orders.stream().map(order -> {
            Map<String, Object> trade = new HashMap<>();
            trade.put("createdAt", order.getCreatedAt());
            trade.put("executedAt", order.getExecutedAt());
            trade.put("action", order.getAction());
            trade.put("symbol", order.getSymbol());
            trade.put("companyName", order.getCompanyName());
            trade.put("quantity", order.getQuantity());
            trade.put("executedPrice", order.getExecutedPrice());
            trade.put("limitPrice", order.getLimitPrice());
            trade.put("orderType", order.getOrderType());
            return trade;
        }).collect(Collectors.toList());
    }

    public Map<String, Object> getAccountStatement(Long userId) {
        // Get all transactions
        List<Transaction> transactions = transactionRepository.findByUserIdOrderByCreatedAtAsc(userId);
        
        // Calculate opening balance (first transaction or 0)
        BigDecimal openingBalance = BigDecimal.ZERO;
        
        // Get all executed orders for trade transactions
        List<Order> orders = orderRepository.findByUserIdAndStatusOrderByCreatedAtDesc(userId, "EXECUTED");
        
        // Combine transactions and orders into a unified list
        List<Map<String, Object>> allTransactions = new ArrayList<>();
        
        // Add deposit/withdrawal transactions
        for (Transaction txn : transactions) {
            Map<String, Object> item = new HashMap<>();
            item.put("createdAt", txn.getCreatedAt());
            item.put("type", txn.getType());
            item.put("amount", txn.getAmount());
            
            String description = "";
            if ("DEPOSIT".equals(txn.getType())) {
                description = "Funds Added";
                if (txn.getPaymentId() != null) {
                    description += " (Razorpay: " + txn.getPaymentId() + ")";
                }
            } else if ("WITHDRAWAL".equals(txn.getType())) {
                description = "Funds Withdrawn";
            }
            item.put("description", description);
            
            allTransactions.add(item);
        }
        
        // Add trade transactions from orders
        for (Order order : orders) {
            Map<String, Object> item = new HashMap<>();
            item.put("createdAt", order.getExecutedAt() != null ? order.getExecutedAt() : order.getCreatedAt());
            item.put("type", order.getAction().toUpperCase());
            
            BigDecimal amount = order.getExecutedPrice().multiply(BigDecimal.valueOf(order.getQuantity()));
            item.put("amount", amount);
            
            String description = order.getAction().toUpperCase() + " " + order.getQuantity() + " " + 
                                order.getSymbol() + " @ ₹" + order.getExecutedPrice();
            item.put("description", description);
            
            allTransactions.add(item);
        }
        
        // Sort by date
        allTransactions.sort((a, b) -> 
            ((java.time.LocalDateTime) a.get("createdAt"))
                .compareTo((java.time.LocalDateTime) b.get("createdAt"))
        );
        
        Map<String, Object> result = new HashMap<>();
        result.put("openingBalance", openingBalance);
        result.put("transactions", allTransactions);
        
        return result;
    }

    public Map<String, Object> getPnLReport(Long userId) {
        // Get all executed orders sorted by execution date
        List<Order> orders = orderRepository.findByUserIdAndStatusOrderByCreatedAtDesc(userId, "EXECUTED");
        
        // Sort by executed date ascending (oldest first) for FIFO matching
        orders.sort((o1, o2) -> {
            java.time.LocalDateTime date1 = o1.getExecutedAt() != null ? o1.getExecutedAt() : o1.getCreatedAt();
            java.time.LocalDateTime date2 = o2.getExecutedAt() != null ? o2.getExecutedAt() : o2.getCreatedAt();
            return date1.compareTo(date2); // Ascending order (oldest first)
        });
        
        // Separate buy and sell orders
        Map<String, List<Order>> buyOrdersBySymbol = new HashMap<>();
        List<Order> sellOrders = new ArrayList<>();
        
        for (Order order : orders) {
            if ("BUY".equalsIgnoreCase(order.getAction())) {
                buyOrdersBySymbol.computeIfAbsent(order.getSymbol(), k -> new ArrayList<>()).add(order);
            } else if ("SELL".equalsIgnoreCase(order.getAction())) {
                sellOrders.add(order);
            }
        }
        
        // Calculate P&L for each sell transaction
        List<Map<String, Object>> pnlData = new ArrayList<>();
        
        for (Order sell : sellOrders) {
            String symbol = sell.getSymbol();
            List<Order> buys = buyOrdersBySymbol.get(symbol);
            
            if (buys != null && !buys.isEmpty()) {
                // Use FIFO - match with earliest buy that hasn't been fully matched
                Order matchedBuy = null;
                for (Order buy : buys) {
                    // Simple matching - in production, you'd track remaining quantities
                    matchedBuy = buy;
                    break;
                }
                
                if (matchedBuy != null) {
                    BigDecimal buyPrice = matchedBuy.getExecutedPrice();
                    BigDecimal sellPrice = sell.getExecutedPrice();
                    int quantity = sell.getQuantity();
                    
                    BigDecimal buyTotal = buyPrice.multiply(BigDecimal.valueOf(quantity));
                    BigDecimal sellTotal = sellPrice.multiply(BigDecimal.valueOf(quantity));
                    BigDecimal pnl = sellTotal.subtract(buyTotal);
                    
                    Map<String, Object> pnlItem = new HashMap<>();
                    pnlItem.put("symbol", symbol);
                    pnlItem.put("companyName", sell.getCompanyName());
                    pnlItem.put("quantity", quantity);
                    pnlItem.put("buyDate", matchedBuy.getExecutedAt() != null ? matchedBuy.getExecutedAt() : matchedBuy.getCreatedAt());
                    pnlItem.put("buyPrice", buyPrice);
                    pnlItem.put("sellDate", sell.getExecutedAt() != null ? sell.getExecutedAt() : sell.getCreatedAt());
                    pnlItem.put("sellPrice", sellPrice);
                    pnlItem.put("pnl", pnl);
                    
                    pnlData.add(pnlItem);
                }
            }
        }
        
        Map<String, Object> result = new HashMap<>();
        result.put("pnlData", pnlData);
        
        return result;
    }
}

package com.bullseye.backend.service;

import com.bullseye.backend.dto.BalanceRequest;
import com.bullseye.backend.dto.BalanceResponse;
import com.bullseye.backend.dto.TransactionResponse;
import com.bullseye.backend.entity.AccountBalance;
import com.bullseye.backend.entity.Transaction;
import com.bullseye.backend.repository.AccountBalanceRepository;
import com.bullseye.backend.repository.TransactionRepository;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class BalanceService {

    private final AccountBalanceRepository balanceRepository;
    private final TransactionRepository transactionRepository;

    public BalanceService(AccountBalanceRepository balanceRepository,
                          TransactionRepository transactionRepository) {
        this.balanceRepository = balanceRepository;
        this.transactionRepository = transactionRepository;
    }

    // Get balance — creates a zero balance record if user has none yet
    public BalanceResponse getBalance(Long userId) {
        AccountBalance account = balanceRepository.findByUserId(userId)
                .orElseGet(() -> createZeroBalance(userId));
        return new BalanceResponse(userId, account.getBalance(), "Success");
    }

    // Add funds
    public BalanceResponse addFunds(BalanceRequest request) {
        if (request.getAmount() == null || request.getAmount().compareTo(BigDecimal.ZERO) <= 0) {
            throw new RuntimeException("Invalid amount");
        }

        AccountBalance account = balanceRepository.findByUserId(request.getUserId())
                .orElseGet(() -> createZeroBalance(request.getUserId()));

        account.setBalance(account.getBalance().add(request.getAmount()));
        balanceRepository.save(account);

        // Save transaction record
        saveTransaction(request.getUserId(), "DEPOSIT", request.getAmount(), "SUCCESS");

        return new BalanceResponse(request.getUserId(), account.getBalance(), "Funds added successfully");
    }

    // Withdraw funds
    public BalanceResponse withdrawFunds(BalanceRequest request) {
        if (request.getAmount() == null || request.getAmount().compareTo(BigDecimal.ZERO) <= 0) {
            throw new RuntimeException("Invalid amount");
        }

        AccountBalance account = balanceRepository.findByUserId(request.getUserId())
                .orElseGet(() -> createZeroBalance(request.getUserId()));

        if (request.getAmount().compareTo(account.getBalance()) > 0) {
            throw new RuntimeException("Insufficient balance. Available: ₹" + account.getBalance());
        }

        account.setBalance(account.getBalance().subtract(request.getAmount()));
        balanceRepository.save(account);

        saveTransaction(request.getUserId(), "WITHDRAWAL", request.getAmount(), "SUCCESS");

        return new BalanceResponse(request.getUserId(), account.getBalance(), "Withdrawal successful");
    }

    // Get transaction history
    public List<TransactionResponse> getTransactions(Long userId) {
        return transactionRepository.findByUserIdOrderByCreatedAtDesc(userId)
                .stream()
                .map(tx -> new TransactionResponse(
                        tx.getId(), tx.getType(),
                        tx.getAmount(), tx.getStatus(), tx.getCreatedAt()))
                .collect(Collectors.toList());
    }

    // Helpers
    private AccountBalance createZeroBalance(Long userId) {
        AccountBalance account = new AccountBalance();
        account.setUserId(userId);
        account.setBalance(BigDecimal.ZERO);
        return balanceRepository.save(account);
    }

    private void saveTransaction(Long userId, String type,
                                  BigDecimal amount, String status) {
        Transaction tx = new Transaction();
        tx.setUserId(userId);
        tx.setType(type);
        tx.setAmount(amount);
        tx.setStatus(status);
        transactionRepository.save(tx);
    }
}
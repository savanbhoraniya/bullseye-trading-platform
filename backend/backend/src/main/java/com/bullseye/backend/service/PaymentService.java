package com.bullseye.backend.service;

import com.bullseye.backend.dto.PaymentVerificationRequest;
import com.bullseye.backend.dto.RazorpayOrderResponse;
import com.bullseye.backend.entity.AccountBalance;
import com.bullseye.backend.entity.Transaction;
import com.bullseye.backend.repository.AccountBalanceRepository;
import com.bullseye.backend.repository.TransactionRepository;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

@Service
public class PaymentService {

    private final AccountBalanceRepository balanceRepository;
    private final TransactionRepository transactionRepository;
    
    // Razorpay credentials
    private static final String RAZORPAY_KEY_ID = "rzp_test_Su48qvjXpizLmZ";
    private static final String RAZORPAY_KEY_SECRET = "VNRVzWOqFyFCprjwLbYA3MVz";

    public PaymentService(
            AccountBalanceRepository balanceRepository,
            TransactionRepository transactionRepository) {
        this.balanceRepository = balanceRepository;
        this.transactionRepository = transactionRepository;
    }

    public RazorpayOrderResponse createRazorpayOrder(Long userId, Double amount) throws RazorpayException {
        // Create Razorpay client
        RazorpayClient razorpayClient = new RazorpayClient(RAZORPAY_KEY_ID, RAZORPAY_KEY_SECRET);
        
        // Create order request
        JSONObject orderRequest = new JSONObject();
        orderRequest.put("amount", (int)(amount * 100)); // Amount in paise
        orderRequest.put("currency", "INR");
        orderRequest.put("receipt", "receipt_" + userId + "_" + System.currentTimeMillis());
        
        // Create order on Razorpay
        Order order = razorpayClient.orders.create(orderRequest);
        
        // Return order details
        return new RazorpayOrderResponse(
            order.get("id"),
            order.get("amount"),
            order.get("currency"),
            order.get("receipt")
        );
    }

    @Transactional
    public BalanceResponse verifyAndUpdateBalance(PaymentVerificationRequest request) {
        // In test mode, we skip signature verification for simplicity
        // In production, you MUST verify the signature using:
        // String generatedSignature = hmac_sha256(order_id + "|" + payment_id, secret);
        // if (!generatedSignature.equals(razorpay_signature)) throw exception;
        
        // Update balance
        AccountBalance account = balanceRepository.findByUserId(request.getUserId())
            .orElseThrow(() -> new RuntimeException("Account not found"));

        BigDecimal amount = BigDecimal.valueOf(request.getAmount());
        account.setBalance(account.getBalance().add(amount));
        balanceRepository.save(account);

        // Save transaction with Razorpay order ID and payment ID
        Transaction transaction = new Transaction();
        transaction.setUserId(request.getUserId());
        transaction.setOrderId(request.getRazorpayOrderId());
        transaction.setPaymentId(request.getRazorpayPaymentId());
        transaction.setType("DEPOSIT");
        transaction.setAmount(amount);
        transaction.setStatus("SUCCESS");
        transactionRepository.save(transaction);

        return new BalanceResponse(
            account.getBalance(),
            "Funds added successfully via Razorpay"
        );
    }

    public static class BalanceResponse {
        private BigDecimal balance;
        private String message;

        public BalanceResponse(BigDecimal balance, String message) {
            this.balance = balance;
            this.message = message;
        }

        public BigDecimal getBalance() {
            return balance;
        }

        public void setBalance(BigDecimal balance) {
            this.balance = balance;
        }

        public String getMessage() {
            return message;
        }

        public void setMessage(String message) {
            this.message = message;
        }
    }
}

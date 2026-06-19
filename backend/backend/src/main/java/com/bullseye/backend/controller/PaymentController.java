package com.bullseye.backend.controller;

import com.bullseye.backend.dto.PaymentOrderRequest;
import com.bullseye.backend.dto.PaymentVerificationRequest;
import com.bullseye.backend.service.PaymentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/payment")
public class PaymentController {

    private final PaymentService paymentService;

    public PaymentController(PaymentService paymentService) {
        this.paymentService = paymentService;
    }

    @PostMapping("/create-order")
    public ResponseEntity<?> createOrder(@RequestBody PaymentOrderRequest request) {
        try {
            return ResponseEntity.ok(paymentService.createRazorpayOrder(
                request.getUserId(),
                request.getAmount()
            ));
        } catch (Exception e) {
            e.printStackTrace(); // Log the full error
            Map<String, String> error = new HashMap<>();
            error.put("message", "Failed to create payment order: " + e.getMessage());
            return ResponseEntity.badRequest().body(error);
        }
    }

    @PostMapping("/verify")
    public ResponseEntity<?> verifyPayment(@RequestBody PaymentVerificationRequest request) {
        try {
            return ResponseEntity.ok(paymentService.verifyAndUpdateBalance(request));
        } catch (Exception e) {
            Map<String, String> error = new HashMap<>();
            error.put("message", "Payment verification failed: " + e.getMessage());
            return ResponseEntity.badRequest().body(error);
        }
    }
}

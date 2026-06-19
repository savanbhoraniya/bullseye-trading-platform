package com.bullseye.backend.controller;

import com.bullseye.backend.dto.OrderRequest;
import com.bullseye.backend.dto.OrderResponse;
import com.bullseye.backend.service.OrderService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/orders")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/{userId}")
    public ResponseEntity<List<OrderResponse>> getAllOrders(@PathVariable Long userId) {
        return ResponseEntity.ok(orderService.getOrders(userId));
    }

    @GetMapping("/{userId}/pending")
    public ResponseEntity<List<OrderResponse>> getPendingOrders(@PathVariable Long userId) {
        return ResponseEntity.ok(orderService.getPendingOrders(userId));
    }

    @GetMapping("/{userId}/executed")
    public ResponseEntity<List<OrderResponse>> getExecutedOrders(@PathVariable Long userId) {
        return ResponseEntity.ok(orderService.getExecutedOrders(userId));
    }

    @PostMapping("/place")
    public ResponseEntity<OrderResponse> placeOrder(@RequestBody OrderRequest request) {
        try {
            return ResponseEntity.ok(orderService.placeOrder(request));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest().body(new OrderResponse(e.getMessage()));
        }
    }

    @PostMapping("/{orderId}/cancel")
    public ResponseEntity<OrderResponse> cancelOrder(
            @PathVariable Long orderId,
            @RequestBody java.util.Map<String, Long> body) {
        try {
            Long userId = body.get("userId");
            if (userId == null) {
                return ResponseEntity.badRequest().body(new OrderResponse("User ID is required"));
            }
            return ResponseEntity.ok(orderService.cancelOrder(orderId, userId));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest().body(new OrderResponse(e.getMessage()));
        }
    }

    @PutMapping("/{orderId}/cancel/{userId}")
    public ResponseEntity<OrderResponse> cancelOrderAlt(
            @PathVariable Long orderId,
            @PathVariable Long userId) {
        try {
            return ResponseEntity.ok(orderService.cancelOrder(orderId, userId));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest().body(new OrderResponse(e.getMessage()));
        }
    }
}
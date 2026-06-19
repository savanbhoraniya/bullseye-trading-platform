package com.bullseye.backend.controller;

import com.bullseye.backend.dto.WatchlistRequest;
import com.bullseye.backend.dto.WatchlistResponse;
import com.bullseye.backend.service.WatchlistService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/watchlist")
public class WatchlistController {

    private final WatchlistService watchlistService;

    public WatchlistController(WatchlistService watchlistService) {
        this.watchlistService = watchlistService;
    }

    @GetMapping("/{userId}")
    public ResponseEntity<List<WatchlistResponse>> getWatchlist(
            @PathVariable Long userId) {
        return ResponseEntity.ok(watchlistService.getWatchlist(userId));
    }

    @PostMapping("/add")
    public ResponseEntity<WatchlistResponse> addToWatchlist(
            @RequestBody WatchlistRequest request) {
        try {
            return ResponseEntity.ok(watchlistService.addToWatchlist(request));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new WatchlistResponse(e.getMessage()));
        }
    }

    @DeleteMapping("/{userId}/{symbol}")
    public ResponseEntity<String> removeFromWatchlist(
            @PathVariable Long userId,
            @PathVariable String symbol) {
        try {
            watchlistService.removeFromWatchlist(userId, symbol);
            return ResponseEntity.ok("Removed from watchlist");
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }
}
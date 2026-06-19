package com.bullseye.backend.service;

import com.bullseye.backend.dto.WatchlistRequest;
import com.bullseye.backend.dto.WatchlistResponse;
import com.bullseye.backend.entity.Watchlist;
import com.bullseye.backend.repository.WatchlistRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class WatchlistService {

    private final WatchlistRepository watchlistRepository;

    public WatchlistService(WatchlistRepository watchlistRepository) {
        this.watchlistRepository = watchlistRepository;
    }

    public List<WatchlistResponse> getWatchlist(Long userId) {
        return watchlistRepository.findByUserId(userId)
                .stream()
                .map(w -> new WatchlistResponse(
                        w.getId(), w.getUserId(),
                        w.getSymbol(), w.getCompanyName(), "Success"))
                .collect(Collectors.toList());
    }

    public WatchlistResponse addToWatchlist(WatchlistRequest request) {
        if (watchlistRepository.existsByUserIdAndSymbol(
                request.getUserId(), request.getSymbol())) {
            throw new RuntimeException(request.getSymbol() + " is already in your watchlist");
        }

        Watchlist watchlist = new Watchlist();
        watchlist.setUserId(request.getUserId());
        watchlist.setSymbol(request.getSymbol().toUpperCase());
        watchlist.setCompanyName(request.getCompanyName());

        Watchlist saved = watchlistRepository.save(watchlist);
        return new WatchlistResponse(saved.getId(), saved.getUserId(),
                saved.getSymbol(), saved.getCompanyName(),
                "Added to watchlist successfully");
    }

    @Transactional
    public void removeFromWatchlist(Long userId, String symbol) {
        if (!watchlistRepository.existsByUserIdAndSymbol(userId, symbol)) {
            throw new RuntimeException("Stock not found in watchlist");
        }
        watchlistRepository.deleteByUserIdAndSymbol(userId, symbol);
    }
}
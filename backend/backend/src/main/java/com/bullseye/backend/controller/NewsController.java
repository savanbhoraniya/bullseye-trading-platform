package com.bullseye.backend.controller;

import com.bullseye.backend.service.NewsService;

import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/news")
@CrossOrigin(origins = "http://localhost:4200")
public class NewsController {

    private final NewsService newsService;

    public NewsController(NewsService newsService) {
        this.newsService = newsService;
    }

    @GetMapping("/market")
    public List<Map<String, Object>> getMarketNews() {
        return newsService.getMarketNews();
    }

}

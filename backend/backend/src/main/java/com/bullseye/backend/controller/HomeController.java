package com.bullseye.backend.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "🚀 Bullseye Trading Platform API\n\n" +
               "✅ Status: Running\n" +
               "📍 Health Check: /health\n" +
               "📍 Auth Test: /api/auth/test\n" +
               "📍 API Base: /api/*\n\n" +
               "📚 Documentation: See API_TESTING_GUIDE.md\n" +
               "🔗 Frontend: Coming soon on Vercel";
    }
}

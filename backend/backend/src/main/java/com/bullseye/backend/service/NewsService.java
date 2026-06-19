package com.bullseye.backend.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.time.Instant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class NewsService {

    private final RestTemplate restTemplate;

    public NewsService(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @Cacheable(value = "marketNews", key = "'india-business'")
    public List<Map<String, Object>> getMarketNews() {
        try {
            // Using Google News RSS feed for Indian business news (no API key required)
            String rssUrl = "https://news.google.com/rss/search?q=indian+stock+market+OR+sensex+OR+nifty+when:1d&hl=en-IN&gl=IN&ceid=IN:en";
            
            HttpHeaders headers = new HttpHeaders();
            headers.set("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36");
            headers.set("Accept", "application/rss+xml, application/xml, text/xml");

            HttpEntity<String> entity = new HttpEntity<>(headers);

            ResponseEntity<String> response = restTemplate.exchange(
                    rssUrl,
                    HttpMethod.GET,
                    entity,
                    String.class
            );

            String xmlContent = response.getBody();
            List<Map<String, Object>> newsList = parseRssFeed(xmlContent);

            return newsList.isEmpty() ? getMockNews() : newsList;

        } catch (Exception e) {
            System.err.println("Error fetching news from RSS: " + e.getMessage());
            return getMockNews();
        }
    }

    private List<Map<String, Object>> parseRssFeed(String xml) {
        List<Map<String, Object>> newsList = new ArrayList<>();
        
        try {
            // Simple XML parsing for RSS feed
            String[] items = xml.split("<item>");
            
            for (int i = 1; i < Math.min(6, items.length); i++) {
                String item = items[i];
                
                Map<String, Object> newsItem = new HashMap<>();
                
                // Extract title
                String title = extractXmlTag(item, "title");
                if (title.isEmpty()) continue;
                
                // Extract link
                String link = extractXmlTag(item, "link");
                
                // Extract source from title (Google News format: "Title - Source")
                String source = "Google News";
                if (title.contains(" - ")) {
                    String[] parts = title.split(" - ");
                    if (parts.length > 1) {
                        source = parts[parts.length - 1];
                        title = String.join(" - ", java.util.Arrays.copyOf(parts, parts.length - 1));
                    }
                }
                
                // Extract published date
                String pubDate = extractXmlTag(item, "pubDate");
                String timeAgo = formatTimeFromRss(pubDate);
                
                newsItem.put("title", cleanHtml(title));
                newsItem.put("source", cleanHtml(source));
                newsItem.put("url", link);
                newsItem.put("time", timeAgo);
                
                newsList.add(newsItem);
            }
            
        } catch (Exception e) {
            System.err.println("Error parsing RSS feed: " + e.getMessage());
        }
        
        return newsList;
    }

    private String extractXmlTag(String xml, String tag) {
        try {
            String startTag = "<" + tag + ">";
            String endTag = "</" + tag + ">";
            
            int startIndex = xml.indexOf(startTag);
            if (startIndex == -1) return "";
            
            startIndex += startTag.length();
            int endIndex = xml.indexOf(endTag, startIndex);
            
            if (endIndex == -1) return "";
            
            return xml.substring(startIndex, endIndex).trim();
        } catch (Exception e) {
            return "";
        }
    }

    private String cleanHtml(String text) {
        // Remove HTML tags and decode entities
        return text.replaceAll("<[^>]*>", "")
                   .replace("&amp;", "&")
                   .replace("&lt;", "<")
                   .replace("&gt;", ">")
                   .replace("&quot;", "\"")
                   .replace("&#39;", "'")
                   .replace("&nbsp;", " ")
                   .trim();
    }

    private String formatTimeFromRss(String pubDate) {
        try {
            // Parse RFC 822 date format (e.g., "Wed, 27 May 2026 09:00:00 GMT")
            java.time.format.DateTimeFormatter formatter = 
                java.time.format.DateTimeFormatter.RFC_1123_DATE_TIME;
            
            Instant publishedTime = Instant.from(formatter.parse(pubDate));
            Instant now = Instant.now();
            
            long diffMinutes = (now.getEpochSecond() - publishedTime.getEpochSecond()) / 60;
            
            if (diffMinutes < 1) {
                return "Just now";
            } else if (diffMinutes < 60) {
                return diffMinutes + " minutes ago";
            } else if (diffMinutes < 1440) {
                long hours = diffMinutes / 60;
                return hours + (hours == 1 ? " hour ago" : " hours ago");
            } else {
                long days = diffMinutes / 1440;
                return days + (days == 1 ? " day ago" : " days ago");
            }
        } catch (Exception e) {
            return "Recently";
        }
    }

    private List<Map<String, Object>> getMockNews() {
        List<Map<String, Object>> mockNews = new ArrayList<>();
        
        Map<String, Object> news1 = new HashMap<>();
        news1.put("title", "Sensex rises 200 points, Nifty above 22,500 as IT stocks rally");
        news1.put("source", "Economic Times");
        news1.put("time", "2 hours ago");
        news1.put("url", "#");
        mockNews.add(news1);

        Map<String, Object> news2 = new HashMap<>();
        news2.put("title", "RBI keeps repo rate unchanged at 6.5%, maintains accommodative stance");
        news2.put("source", "Moneycontrol");
        news2.put("time", "4 hours ago");
        news2.put("url", "#");
        mockNews.add(news2);

        Map<String, Object> news3 = new HashMap<>();
        news3.put("title", "FII inflows surge to ₹5,000 crore in May amid global optimism");
        news3.put("source", "Business Standard");
        news3.put("time", "5 hours ago");
        news3.put("url", "#");
        mockNews.add(news3);

        Map<String, Object> news4 = new HashMap<>();
        news4.put("title", "Reliance Industries announces Q4 results, beats estimates");
        news4.put("source", "CNBC TV18");
        news4.put("time", "6 hours ago");
        news4.put("url", "#");
        mockNews.add(news4);

        Map<String, Object> news5 = new HashMap<>();
        news5.put("title", "Nifty Bank hits fresh all-time high on strong banking sector performance");
        news5.put("source", "Bloomberg Quint");
        news5.put("time", "8 hours ago");
        news5.put("url", "#");
        mockNews.add(news5);

        return mockNews;
    }

}

package com.bullseye.backend.config;

import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import javax.sql.DataSource;
import java.net.URI;
import java.net.URISyntaxException;

/**
 * Database configuration for production deployment (Render).
 * Converts Render's DATABASE_URL format (PostgreSQL connection string) to JDBC format.
 * 
 * Expected DATABASE_URL format: postgresql://username:password@host:port/database
 * Converts to JDBC format: jdbc:postgresql://host:port/database
 */
@Configuration
@Profile("prod")
public class DatabaseConfig {

    @Bean
    public DataSource dataSource() {
        String databaseUrl = System.getenv("DATABASE_URL");
        
        if (databaseUrl == null || databaseUrl.isEmpty()) {
            throw new IllegalStateException("DATABASE_URL environment variable is not set");
        }

        try {
            // Parse the DATABASE_URL
            URI dbUri = new URI(databaseUrl);
            
            // Validate and extract user info
            if (dbUri.getUserInfo() == null || !dbUri.getUserInfo().contains(":")) {
                throw new IllegalStateException("DATABASE_URL does not contain valid credentials");
            }
            
            String[] userInfo = dbUri.getUserInfo().split(":");
            String username = userInfo[0];
            String password = userInfo[1];
            String host = dbUri.getHost();
            
            // Get port, default to 5432 if not specified or invalid
            int port = dbUri.getPort();
            if (port == -1) {
                port = 5432; // Default PostgreSQL port
                System.out.println("Port not specified in DATABASE_URL, using default: 5432");
            }
            
            // Validate and extract database name
            if (dbUri.getPath() == null || dbUri.getPath().length() <= 1) {
                throw new IllegalStateException("DATABASE_URL does not contain a valid database name");
            }
            String database = dbUri.getPath().substring(1); // Remove leading '/'
            
            // Build JDBC URL without credentials
            String jdbcUrl = String.format("jdbc:postgresql://%s:%d/%s", host, port, database);
            
            // Log connection details (without password)
            System.out.println("=== Database Configuration ===");
            System.out.println("JDBC URL: " + jdbcUrl);
            System.out.println("Username: " + username);
            System.out.println("Host: " + host);
            System.out.println("Port: " + port);
            System.out.println("Database: " + database);
            System.out.println("==============================");
            
            // Build DataSource with proper configuration
            return DataSourceBuilder
                    .create()
                    .driverClassName("org.postgresql.Driver")
                    .url(jdbcUrl)
                    .username(username)
                    .password(password)
                    .build();
                    
        } catch (URISyntaxException e) {
            throw new IllegalStateException("Invalid DATABASE_URL format: " + databaseUrl, e);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new IllegalStateException("DATABASE_URL credentials format is invalid", e);
        }
    }
}

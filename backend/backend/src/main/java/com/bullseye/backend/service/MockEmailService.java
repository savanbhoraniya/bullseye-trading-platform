package com.bullseye.backend.service;

import org.springframework.stereotype.Service;

/**
 * Mock Email Service for Development/Testing
 * Logs emails to console instead of actually sending them
 * Use this when SMTP is blocked or for local testing
 */
@Service
public class MockEmailService {

    /**
     * Mock send OTP email - just logs to console
     */
    public void sendOtpEmail(String toEmail, String otpCode) {
        System.out.println("\n" + "=".repeat(80));
        System.out.println("📧 MOCK EMAIL SERVICE - OTP EMAIL");
        System.out.println("=".repeat(80));
        System.out.println("To: " + toEmail);
        System.out.println("Subject: BullsEye - Your Login OTP");
        System.out.println("OTP Code: " + otpCode);
        System.out.println("Valid for: 5 minutes");
        System.out.println("=".repeat(80));
        System.out.println("✅ OTP email logged successfully (not actually sent)");
        System.out.println("=".repeat(80) + "\n");
        
        // In a real scenario, this would send the email
        // For now, we just log it so you can see the OTP in the console
    }

    /**
     * Mock send password reset email - just logs to console
     */
    public void sendPasswordResetEmail(String toEmail, String otpCode) {
        System.out.println("\n" + "=".repeat(80));
        System.out.println("📧 MOCK EMAIL SERVICE - PASSWORD RESET OTP");
        System.out.println("=".repeat(80));
        System.out.println("To: " + toEmail);
        System.out.println("Subject: BullsEye - Password Reset OTP");
        System.out.println("OTP Code: " + otpCode);
        System.out.println("Valid for: 5 minutes");
        System.out.println("=".repeat(80));
        System.out.println("✅ Password reset OTP logged successfully (not actually sent)");
        System.out.println("=".repeat(80) + "\n");
    }
}

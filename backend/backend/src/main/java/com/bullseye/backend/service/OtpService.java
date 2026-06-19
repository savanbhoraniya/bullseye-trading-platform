package com.bullseye.backend.service;

import com.bullseye.backend.entity.Otp;
import com.bullseye.backend.entity.User;
import com.bullseye.backend.repository.OtpRepository;
import com.bullseye.backend.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.security.SecureRandom;
import java.time.LocalDateTime;
import java.util.Optional;

@Service
public class OtpService {

    @Autowired
    private OtpRepository otpRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private EmailService emailService;

    private static final int OTP_LENGTH = 6;
    private static final int OTP_EXPIRY_MINUTES = 5;
    private static final int MAX_OTP_PER_HOUR = 3;
    private static final SecureRandom random = new SecureRandom();

    /**
     * Generate and send OTP to user's email
     */
    @Transactional
    public void sendOtp(String email) {
        // Check if user exists
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new RuntimeException("User not found with email: " + email));

        // Rate limiting: Check if user has requested too many OTPs
        LocalDateTime oneHourAgo = LocalDateTime.now().minusHours(1);
        long recentOtpCount = otpRepository.countRecentOtpsByEmail(email, oneHourAgo);
        
        if (recentOtpCount >= MAX_OTP_PER_HOUR) {
            throw new RuntimeException("Too many OTP requests. Please try again after 1 hour.");
        }

        // Invalidate any existing OTPs for this email
        otpRepository.deleteByEmail(email);

        // Generate new OTP
        String otpCode = generateOtp();
        LocalDateTime expiresAt = LocalDateTime.now().plusMinutes(OTP_EXPIRY_MINUTES);

        // Save OTP to database
        Otp otp = new Otp(user.getId(), email, otpCode, expiresAt);
        otpRepository.save(otp);

        // Send OTP via email
        try {
            System.out.println("Calling emailService.sendOtpEmail for: " + email);
            emailService.sendOtpEmail(email, otpCode);
            System.out.println("Email service call completed successfully");
        } catch (Exception e) {
            System.err.println("Failed to send OTP email: " + e.getMessage());
            e.printStackTrace();
            // Delete the OTP from database since email failed
            otpRepository.delete(otp);
            throw new RuntimeException("Failed to send OTP email: " + e.getMessage());
        }
    }

    /**
     * Verify OTP and return user ID if valid
     */
    @Transactional
    public Long verifyOtp(String email, String otpCode) {
        // Find the latest OTP for this email
        Otp otp = otpRepository.findTopByEmailAndVerifiedFalseOrderByCreatedAtDesc(email)
                .orElseThrow(() -> new RuntimeException("No OTP found for this email. Please request a new OTP."));

        // Check if OTP has expired
        if (otp.isExpired()) {
            throw new RuntimeException("OTP has expired. Please request a new OTP.");
        }

        // Check if maximum attempts exceeded
        if (!otp.canRetry()) {
            throw new RuntimeException("Maximum OTP verification attempts exceeded. Please request a new OTP.");
        }

        // Verify OTP code
        if (!otp.getOtpCode().equals(otpCode)) {
            otp.incrementAttempts();
            otpRepository.save(otp);
            
            int remainingAttempts = 3 - otp.getAttempts();
            if (remainingAttempts > 0) {
                throw new RuntimeException("Invalid OTP. " + remainingAttempts + " attempts remaining.");
            } else {
                throw new RuntimeException("Invalid OTP. Maximum attempts exceeded. Please request a new OTP.");
            }
        }

        // OTP is valid - mark as verified
        otp.setVerified(true);
        otpRepository.save(otp);

        // Clean up old OTPs for this email
        otpRepository.deleteByEmail(email);

        return otp.getUserId();
    }

    /**
     * Generate random 6-digit OTP
     */
    private String generateOtp() {
        int otp = 100000 + random.nextInt(900000);
        return String.valueOf(otp);
    }

    /**
     * Scheduled task to clean up expired OTPs (runs every 6 hours to reduce resource usage)
     */
    @Scheduled(fixedRate = 21600000) // 6 hours in milliseconds
    @Transactional
    public void cleanupExpiredOtps() {
        try {
            LocalDateTime now = LocalDateTime.now();
            otpRepository.deleteExpiredOtps(now);
            System.out.println("Cleaned up expired OTPs at: " + now);
        } catch (Exception e) {
            System.err.println("Error cleaning up expired OTPs: " + e.getMessage());
        }
    }

    /**
     * Resend OTP (same as sendOtp but with additional validation)
     */
    @Transactional
    public void resendOtp(String email) {
        // Check if there's a recent OTP (within last 30 seconds)
        Optional<Otp> recentOtp = otpRepository.findTopByEmailAndVerifiedFalseOrderByCreatedAtDesc(email);
        
        if (recentOtp.isPresent()) {
            LocalDateTime thirtySecondsAgo = LocalDateTime.now().minusSeconds(30);
            if (recentOtp.get().getCreatedAt().isAfter(thirtySecondsAgo)) {
                throw new RuntimeException("Please wait 30 seconds before requesting a new OTP.");
            }
        }

        // Send new OTP
        sendOtp(email);
    }

    /**
     * Send OTP for password reset
     */
    @Transactional
    public void sendPasswordResetOtp(String email) {
        // Check if user exists
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new RuntimeException("Email not registered"));

        // Rate limiting: Check if user has requested too many OTPs
        LocalDateTime oneHourAgo = LocalDateTime.now().minusHours(1);
        long recentOtpCount = otpRepository.countRecentOtpsByEmail(email, oneHourAgo);
        
        if (recentOtpCount >= MAX_OTP_PER_HOUR) {
            throw new RuntimeException("Too many OTP requests. Please try again after 1 hour.");
        }

        // Invalidate any existing OTPs for this email
        otpRepository.deleteByEmail(email);

        // Generate new OTP
        String otpCode = generateOtp();
        LocalDateTime expiresAt = LocalDateTime.now().plusMinutes(OTP_EXPIRY_MINUTES);

        // Save OTP to database with PASSWORD_RESET type
        Otp otp = new Otp(user.getId(), email, otpCode, expiresAt);
        otp.setOtpType("PASSWORD_RESET");
        otpRepository.save(otp);

        // Send password reset OTP via email
        try {
            System.out.println("Calling emailService.sendPasswordResetEmail for: " + email);
            emailService.sendPasswordResetEmail(email, otpCode);
            System.out.println("Password reset email service call completed successfully");
        } catch (Exception e) {
            System.err.println("Failed to send password reset OTP email: " + e.getMessage());
            e.printStackTrace();
            // Delete the OTP from database since email failed
            otpRepository.delete(otp);
            throw new RuntimeException("Failed to send OTP email: " + e.getMessage());
        }
    }

    /**
     * Verify OTP for password reset
     */
    @Transactional
    public void verifyPasswordResetOtp(String email, String otpCode) {
        // Find the latest OTP for this email
        Otp otp = otpRepository.findTopByEmailAndVerifiedFalseOrderByCreatedAtDesc(email)
                .orElseThrow(() -> new RuntimeException("No OTP found for this email. Please request a new OTP."));

        // Check if OTP has expired
        if (otp.isExpired()) {
            throw new RuntimeException("OTP has expired. Please request a new OTP.");
        }

        // Check if maximum attempts exceeded
        if (!otp.canRetry()) {
            throw new RuntimeException("Maximum OTP verification attempts exceeded. Please request a new OTP.");
        }

        // Verify OTP code
        if (!otp.getOtpCode().equals(otpCode)) {
            otp.incrementAttempts();
            otpRepository.save(otp);
            
            int remainingAttempts = 3 - otp.getAttempts();
            if (remainingAttempts > 0) {
                throw new RuntimeException("Invalid OTP. " + remainingAttempts + " attempts remaining.");
            } else {
                throw new RuntimeException("Invalid OTP. Maximum attempts exceeded. Please request a new OTP.");
            }
        }

        // OTP is valid - mark as verified
        otp.setVerified(true);
        otpRepository.save(otp);
    }
}

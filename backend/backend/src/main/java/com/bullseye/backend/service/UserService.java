package com.bullseye.backend.service;

import com.bullseye.backend.dto.ChangePasswordRequest;
import com.bullseye.backend.dto.LoginRequest;
import com.bullseye.backend.dto.LoginResponse;
import com.bullseye.backend.dto.RegisterRequest;
import com.bullseye.backend.entity.User;
import com.bullseye.backend.entity.Otp;
import com.bullseye.backend.repository.UserRepository;
import com.bullseye.backend.repository.OtpRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.UUID;

@Service
public class UserService {

    private final UserRepository userRepository;
    
    @Autowired
    private OtpRepository otpRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User register(RegisterRequest request) {
        userRepository.findByEmail(request.getEmail())
                .ifPresent(user -> {
                    throw new RuntimeException("User is already registered");
                });

        User user = new User();
        user.setName(request.getFullName());
        user.setEmail(request.getEmail());
        user.setPassword(request.getPassword());

        return userRepository.save(user);
    }

    public LoginResponse login(LoginRequest request) {
        User user = userRepository.findByEmail(request.getEmail())
                .orElseThrow(() -> new RuntimeException("Invalid email or password"));

        if (!user.getPassword().equals(request.getPassword())) {
            throw new RuntimeException("Invalid email or password");
        }

        String token = UUID.randomUUID().toString();
        return new LoginResponse(token, "Login successful", user.getId());
    }

    public void changePassword(ChangePasswordRequest request) {
        User user = userRepository.findById(request.getUserId())
                .orElseThrow(() -> new RuntimeException("User not found"));

        if (!user.getPassword().equals(request.getCurrentPassword())) {
            throw new RuntimeException("Current password is incorrect");
        }

        if (request.getNewPassword() == null || request.getNewPassword().length() < 6) {
            throw new RuntimeException("New password must be at least 6 characters");
        }

        user.setPassword(request.getNewPassword());
        userRepository.save(user);
    }

    /**
     * Reset password using verified OTP
     */
    public void resetPassword(String email, String otpCode, String newPassword) {
        // Validate new password
        if (newPassword == null || newPassword.length() < 6) {
            throw new RuntimeException("New password must be at least 6 characters");
        }

        // Find user by email
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new RuntimeException("User not found"));

        // Find the most recent OTP for this email (verified or not)
        Otp otp = otpRepository.findTopByEmailOrderByCreatedAtDesc(email)
                .orElse(null);
        
        // Check if OTP exists, matches, and is verified
        if (otp == null) {
            throw new RuntimeException("No OTP found. Please request a new OTP.");
        }
        
        if (!otp.getOtpCode().equals(otpCode)) {
            throw new RuntimeException("Invalid OTP code.");
        }
        
        if (!otp.getVerified()) {
            throw new RuntimeException("OTP not verified. Please verify OTP first.");
        }

        // Update password
        user.setPassword(newPassword);
        userRepository.save(user);

        // Delete used OTP
        otpRepository.deleteByEmail(email);
    }
}
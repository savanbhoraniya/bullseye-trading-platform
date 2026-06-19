package com.bullseye.backend.controller;

import com.bullseye.backend.dto.RegisterRequest;
import com.bullseye.backend.dto.RegisterResponse;
import com.bullseye.backend.dto.ChangePasswordRequest;
import com.bullseye.backend.dto.ResetPasswordRequest;
import com.bullseye.backend.dto.SendOtpRequest;
import com.bullseye.backend.dto.VerifyOtpRequest;
import com.bullseye.backend.dto.OtpResponse;
import com.bullseye.backend.entity.User;
import com.bullseye.backend.service.UserService;
import com.bullseye.backend.service.OtpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.bullseye.backend.dto.LoginRequest;
import com.bullseye.backend.dto.LoginResponse;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final UserService userService;
    
    @Autowired
    private OtpService otpService;

    public AuthController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/register")
    public ResponseEntity<RegisterResponse> registerUser(
            @RequestBody RegisterRequest request) {
        try {
            User user = userService.register(request);
            RegisterResponse response = new RegisterResponse(
                "User registered successfully with ID: " + user.getId(),
                user.getId()
            );
            return ResponseEntity.ok(response);
        } catch (RuntimeException e) {
            RegisterResponse errorResponse = new RegisterResponse(e.getMessage(), null);
            return ResponseEntity.badRequest().body(errorResponse);
        }
    }

    @GetMapping("/test")
    public String test() {
        return "Auth controller working";
    }

    @PostMapping("/login")
    public ResponseEntity<LoginResponse> login(
            @RequestBody LoginRequest request) {
        LoginResponse response = userService.login(request);
        return ResponseEntity.ok(response);
    }

    @PostMapping("/change-password")
    public ResponseEntity<String> changePassword(
            @RequestBody ChangePasswordRequest request) {
        try {
            userService.changePassword(request);
            return ResponseEntity.ok("Password changed successfully");
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    // ========== FORGOT PASSWORD ENDPOINTS ==========

    /**
     * Send OTP for password reset
     */
    @PostMapping("/forgot-password/send-otp")
    public ResponseEntity<OtpResponse> sendPasswordResetOtp(@RequestBody SendOtpRequest request) {
        try {
            otpService.sendPasswordResetOtp(request.getEmail());
            return ResponseEntity.ok(new OtpResponse("OTP sent successfully to " + request.getEmail(), true, 5));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new OtpResponse(e.getMessage(), false, null));
        }
    }

    /**
     * Verify OTP for password reset
     */
    @PostMapping("/forgot-password/verify-otp")
    public ResponseEntity<OtpResponse> verifyPasswordResetOtp(@RequestBody VerifyOtpRequest request) {
        try {
            otpService.verifyPasswordResetOtp(request.getEmail(), request.getOtpCode());
            return ResponseEntity.ok(new OtpResponse("OTP verified successfully", true, null));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new OtpResponse(e.getMessage(), false, null));
        }
    }

    /**
     * Reset password after OTP verification
     */
    @PostMapping("/forgot-password/reset")
    public ResponseEntity<String> resetPassword(@RequestBody ResetPasswordRequest request) {
        try {
            userService.resetPassword(request.getEmail(), request.getOtpCode(), request.getNewPassword());
            return ResponseEntity.ok("Password reset successfully");
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }
}
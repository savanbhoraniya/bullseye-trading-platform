package com.bullseye.backend.controller;

import com.bullseye.backend.dto.LoginResponse;
import com.bullseye.backend.dto.OtpResponse;
import com.bullseye.backend.dto.SendOtpRequest;
import com.bullseye.backend.dto.VerifyOtpRequest;
import com.bullseye.backend.entity.User;
import com.bullseye.backend.repository.UserRepository;
import com.bullseye.backend.service.OtpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/auth")
public class OtpController {

    @Autowired
    private OtpService otpService;

    @Autowired
    private UserRepository userRepository;

    /**
     * Send OTP to user's email
     * POST /api/auth/send-otp
     */
    @PostMapping("/send-otp")
    public ResponseEntity<?> sendOtp(@RequestBody SendOtpRequest request) {
        try {
            if (request.getEmail() == null || request.getEmail().trim().isEmpty()) {
                return ResponseEntity.badRequest()
                        .body(new OtpResponse("Email is required", false));
            }

            otpService.sendOtp(request.getEmail());
            
            return ResponseEntity.ok(
                    new OtpResponse("OTP sent successfully to " + request.getEmail(), true, 5)
            );
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new OtpResponse(e.getMessage(), false));
        } catch (Exception e) {
            return ResponseEntity.internalServerError()
                    .body(new OtpResponse("Failed to send OTP. Please try again.", false));
        }
    }

    /**
     * Verify OTP and login user
     * POST /api/auth/verify-otp
     */
    @PostMapping("/verify-otp")
    public ResponseEntity<?> verifyOtp(@RequestBody VerifyOtpRequest request) {
        try {
            if (request.getEmail() == null || request.getEmail().trim().isEmpty()) {
                return ResponseEntity.badRequest()
                        .body(new OtpResponse("Email is required", false));
            }

            if (request.getOtpCode() == null || request.getOtpCode().trim().isEmpty()) {
                return ResponseEntity.badRequest()
                        .body(new OtpResponse("OTP code is required", false));
            }

            if (request.getOtpCode().length() != 6) {
                return ResponseEntity.badRequest()
                        .body(new OtpResponse("OTP must be 6 digits", false));
            }

            // Verify OTP
            Long userId = otpService.verifyOtp(request.getEmail(), request.getOtpCode());

            // Get user details
            User user = userRepository.findById(userId)
                    .orElseThrow(() -> new RuntimeException("User not found"));

            // Generate token (same as regular login)
            String token = UUID.randomUUID().toString();

            // Return login response
            LoginResponse response = new LoginResponse();
            response.setToken(token);
            response.setUserId(userId);
            response.setMessage("Login successful");

            return ResponseEntity.ok(response);

        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new OtpResponse(e.getMessage(), false));
        } catch (Exception e) {
            return ResponseEntity.internalServerError()
                    .body(new OtpResponse("Failed to verify OTP. Please try again.", false));
        }
    }

    /**
     * Resend OTP to user's email
     * POST /api/auth/resend-otp
     */
    @PostMapping("/resend-otp")
    public ResponseEntity<?> resendOtp(@RequestBody SendOtpRequest request) {
        try {
            if (request.getEmail() == null || request.getEmail().trim().isEmpty()) {
                return ResponseEntity.badRequest()
                        .body(new OtpResponse("Email is required", false));
            }

            otpService.resendOtp(request.getEmail());
            
            return ResponseEntity.ok(
                    new OtpResponse("OTP resent successfully to " + request.getEmail(), true, 5)
            );
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest()
                    .body(new OtpResponse(e.getMessage(), false));
        } catch (Exception e) {
            return ResponseEntity.internalServerError()
                    .body(new OtpResponse("Failed to resend OTP. Please try again.", false));
        }
    }

    /**
     * Test endpoint to check if OTP service is working
     * GET /api/auth/otp-test
     */
    @GetMapping("/otp-test")
    public ResponseEntity<String> testOtp() {
        return ResponseEntity.ok("OTP service is running!");
    }
}

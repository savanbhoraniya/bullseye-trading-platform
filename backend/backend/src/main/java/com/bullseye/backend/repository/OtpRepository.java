package com.bullseye.backend.repository;

import com.bullseye.backend.entity.Otp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.Optional;

@Repository
public interface OtpRepository extends JpaRepository<Otp, Long> {

    // Find latest OTP for email that is not verified and not expired
    Optional<Otp> findTopByEmailAndVerifiedFalseOrderByCreatedAtDesc(String email);

    // Find latest OTP for email (verified or not)
    Optional<Otp> findTopByEmailOrderByCreatedAtDesc(String email);

    // Find OTP by email and code
    Optional<Otp> findByEmailAndOtpCodeAndVerifiedFalse(String email, String otpCode);

    // Count OTPs created in last hour for rate limiting
    @Query("SELECT COUNT(o) FROM Otp o WHERE o.email = ?1 AND o.createdAt > ?2")
    long countRecentOtpsByEmail(String email, LocalDateTime since);

    // Delete expired OTPs (cleanup)
    @Modifying
    @Transactional
    @Query("DELETE FROM Otp o WHERE o.expiresAt < ?1")
    void deleteExpiredOtps(LocalDateTime now);

    // Delete all OTPs for an email (when user successfully logs in)
    @Modifying
    @Transactional
    void deleteByEmail(String email);
}

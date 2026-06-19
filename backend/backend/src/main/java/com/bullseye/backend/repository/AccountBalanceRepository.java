package com.bullseye.backend.repository;

import com.bullseye.backend.entity.AccountBalance;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface AccountBalanceRepository extends JpaRepository<AccountBalance, Long> {
    Optional<AccountBalance> findByUserId(Long userId);
}
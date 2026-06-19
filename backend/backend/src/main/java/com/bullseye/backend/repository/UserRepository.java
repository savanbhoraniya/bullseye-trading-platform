package com.bullseye.backend.repository;

import com.bullseye.backend.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

import com.bullseye.backend.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByEmail(String email);
}
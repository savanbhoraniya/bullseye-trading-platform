package com.bullseye.backend.service;

import com.bullseye.backend.dto.BankAccountRequest;
import com.bullseye.backend.dto.BankAccountResponse;
import com.bullseye.backend.entity.BankAccount;
import com.bullseye.backend.repository.BankAccountRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BankAccountService {

    private final BankAccountRepository bankAccountRepository;

    public BankAccountService(BankAccountRepository bankAccountRepository) {
        this.bankAccountRepository = bankAccountRepository;
    }

    // Get bank account by userId
    public BankAccountResponse getBankAccount(Long userId) {
        return bankAccountRepository.findByUserId(userId)
                .map(b -> new BankAccountResponse(
                        b.getId(), b.getUserId(), b.getBankName(),
                        b.getAccountHolder(), b.getAccountNumber(),
                        b.getIfscCode(), "Success"))
                .orElse(new BankAccountResponse("No bank account linked"));
    }

    // Add bank account
    public BankAccountResponse addBankAccount(BankAccountRequest request) {
        if (bankAccountRepository.existsByUserId(request.getUserId())) {
            throw new RuntimeException("A bank account is already linked. Remove it first.");
        }

        if (request.getAccountNumber() == null || request.getAccountNumber().length() < 9) {
            throw new RuntimeException("Invalid account number");
        }

        if (request.getIfscCode() == null || request.getIfscCode().length() != 11) {
            throw new RuntimeException("Invalid IFSC code — must be 11 characters");
        }

        BankAccount account = new BankAccount();
        account.setUserId(request.getUserId());
        account.setBankName(request.getBankName());
        account.setAccountHolder(request.getAccountHolder());
        account.setAccountNumber(request.getAccountNumber());
        account.setIfscCode(request.getIfscCode().toUpperCase());

        BankAccount saved = bankAccountRepository.save(account);

        return new BankAccountResponse(
                saved.getId(), saved.getUserId(), saved.getBankName(),
                saved.getAccountHolder(), saved.getAccountNumber(),
                saved.getIfscCode(), "Bank account linked successfully");
    }

    // Remove bank account
    @Transactional
    public void removeBankAccount(Long userId) {
        if (!bankAccountRepository.existsByUserId(userId)) {
            throw new RuntimeException("No bank account found for this user");
        }
        bankAccountRepository.deleteByUserId(userId);
    }
}
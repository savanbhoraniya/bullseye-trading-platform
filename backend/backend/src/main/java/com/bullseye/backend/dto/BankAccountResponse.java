package com.bullseye.backend.dto;

public class BankAccountResponse {
    private Long id;
    private Long userId;
    private String bankName;
    private String accountHolder;
    private String accountNumber;
    private String ifscCode;
    private String message;

    public BankAccountResponse() {}

    public BankAccountResponse(String message) {
        this.message = message;
    }

    public BankAccountResponse(Long id, Long userId, String bankName,
                                String accountHolder, String accountNumber,
                                String ifscCode, String message) {
        this.id = id;
        this.userId = userId;
        this.bankName = bankName;
        this.accountHolder = accountHolder;
        this.accountNumber = accountNumber;
        this.ifscCode = ifscCode;
        this.message = message;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public Long getUserId() { return userId; }
    public void setUserId(Long userId) { this.userId = userId; }

    public String getBankName() { return bankName; }
    public void setBankName(String bankName) { this.bankName = bankName; }

    public String getAccountHolder() { return accountHolder; }
    public void setAccountHolder(String accountHolder) { this.accountHolder = accountHolder; }

    public String getAccountNumber() { return accountNumber; }
    public void setAccountNumber(String accountNumber) { this.accountNumber = accountNumber; }

    public String getIfscCode() { return ifscCode; }
    public void setIfscCode(String ifscCode) { this.ifscCode = ifscCode; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
}
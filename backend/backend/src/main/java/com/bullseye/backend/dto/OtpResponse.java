package com.bullseye.backend.dto;

public class OtpResponse {
    private String message;
    private boolean success;
    private Integer expiresInMinutes;

    public OtpResponse() {}

    public OtpResponse(String message, boolean success) {
        this.message = message;
        this.success = success;
    }

    public OtpResponse(String message, boolean success, Integer expiresInMinutes) {
        this.message = message;
        this.success = success;
        this.expiresInMinutes = expiresInMinutes;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public Integer getExpiresInMinutes() {
        return expiresInMinutes;
    }

    public void setExpiresInMinutes(Integer expiresInMinutes) {
        this.expiresInMinutes = expiresInMinutes;
    }
}

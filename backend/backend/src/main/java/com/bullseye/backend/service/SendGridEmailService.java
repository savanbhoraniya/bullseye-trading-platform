package com.bullseye.backend.service;

import com.sendgrid.*;
import com.sendgrid.helpers.mail.Mail;
import com.sendgrid.helpers.mail.objects.Content;
import com.sendgrid.helpers.mail.objects.Email;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service
public class SendGridEmailService {

    @Value("${sendgrid.api.key:}")
    private String sendGridApiKey;

    @Value("${sendgrid.from.email:noreply@bullseye.com}")
    private String fromEmail;

    @Value("${sendgrid.from.name:BullsEye Trading}")
    private String fromName;

    /**
     * Send OTP email using SendGrid HTTP API
     */
    public void sendOtpEmail(String toEmail, String otpCode) {
        try {
            System.out.println("=== Attempting to send OTP email via SendGrid ===");
            System.out.println("To: " + toEmail);
            System.out.println("From: " + fromEmail);
            System.out.println("OTP Code: " + otpCode);
            System.out.println("API Key configured: " + (sendGridApiKey != null && !sendGridApiKey.isEmpty()));

            Email from = new Email(fromEmail, fromName);
            Email to = new Email(toEmail);
            String subject = "BullsEye - Your Login OTP";
            Content content = new Content("text/html", buildOtpEmailHtml(otpCode));
            
            Mail mail = new Mail(from, subject, to, content);

            SendGrid sg = new SendGrid(sendGridApiKey);
            Request request = new Request();
            
            request.setMethod(Method.POST);
            request.setEndpoint("mail/send");
            request.setBody(mail.build());
            
            System.out.println("Sending email via SendGrid API...");
            Response response = sg.api(request);
            
            System.out.println("SendGrid Response Status: " + response.getStatusCode());
            System.out.println("SendGrid Response Body: " + response.getBody());
            
            if (response.getStatusCode() >= 200 && response.getStatusCode() < 300) {
                System.out.println("✅ OTP email sent successfully via SendGrid to: " + toEmail);
            } else {
                throw new RuntimeException("SendGrid returned status: " + response.getStatusCode());
            }
            
        } catch (IOException e) {
            System.err.println("❌ SendGrid API error: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Failed to send OTP email via SendGrid: " + e.getMessage());
        } catch (Exception e) {
            System.err.println("❌ Failed to send OTP email: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Failed to send OTP email. Please try again.");
        }
    }

    /**
     * Send password reset OTP email using SendGrid
     */
    public void sendPasswordResetEmail(String toEmail, String otpCode) {
        try {
            System.out.println("=== Attempting to send password reset OTP via SendGrid ===");
            System.out.println("To: " + toEmail);
            System.out.println("From: " + fromEmail);
            System.out.println("OTP Code: " + otpCode);

            Email from = new Email(fromEmail, fromName);
            Email to = new Email(toEmail);
            String subject = "BullsEye - Password Reset OTP";
            Content content = new Content("text/html", buildPasswordResetEmailHtml(otpCode));
            
            Mail mail = new Mail(from, subject, to, content);

            SendGrid sg = new SendGrid(sendGridApiKey);
            Request request = new Request();
            
            request.setMethod(Method.POST);
            request.setEndpoint("mail/send");
            request.setBody(mail.build());
            
            System.out.println("Sending password reset email via SendGrid API...");
            Response response = sg.api(request);
            
            System.out.println("SendGrid Response Status: " + response.getStatusCode());
            
            if (response.getStatusCode() >= 200 && response.getStatusCode() < 300) {
                System.out.println("✅ Password reset OTP sent successfully via SendGrid to: " + toEmail);
            } else {
                throw new RuntimeException("SendGrid returned status: " + response.getStatusCode());
            }
            
        } catch (IOException e) {
            System.err.println("❌ SendGrid API error: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Failed to send password reset email via SendGrid: " + e.getMessage());
        } catch (Exception e) {
            System.err.println("❌ Failed to send password reset email: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Failed to send password reset email. Please try again.");
        }
    }

    private String buildOtpEmailHtml(String otpCode) {
        return "<!DOCTYPE html>" +
               "<html>" +
               "<head>" +
               "    <meta charset='UTF-8'>" +
               "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
               "    <style>" +
               "        body { margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f5f5f5; }" +
               "        .email-container { max-width: 600px; margin: 0 auto; background-color: #ffffff; }" +
               "        .header { background: linear-gradient(135deg, #fff4ed 0%, #ffe8d9 100%); padding: 40px 20px; text-align: center; border-bottom: 3px solid #FFD4B8; }" +
               "        .logo { font-size: 48px; font-weight: 900; letter-spacing: 2px; margin: 0; }" +
               "        .logo-bulls { color: #f97316; }" +
               "        .logo-eye { color: #3b82f6; }" +
               "        .tagline { color: #f97316; font-size: 14px; font-weight: 600; letter-spacing: 3px; margin-top: 8px; }" +
               "        .content { padding: 40px 30px; }" +
               "        .greeting { font-size: 18px; color: #1f2937; margin-bottom: 20px; }" +
               "        .message { font-size: 16px; color: #4b5563; line-height: 1.6; margin-bottom: 30px; }" +
               "        .otp-container { background: #ffffff; border: 2px solid #FFD4B8; border-radius: 12px; padding: 25px; text-align: center; margin: 30px 0; }" +
               "        .otp-label { font-size: 13px; color: #666; font-weight: 600; text-transform: uppercase; letter-spacing: 1px; margin-bottom: 12px; }" +
               "        .otp-code { font-size: 36px; font-weight: 900; color: #f97316; letter-spacing: 6px; font-family: 'Courier New', monospace; }" +
               "        .validity { background-color: #fef2f2; border-left: 4px solid #ef4444; padding: 12px 15px; margin: 20px 0; border-radius: 4px; }" +
               "        .validity-text { color: #991b1b; font-size: 13px; margin: 0; }" +
               "        .security-note { background-color: #f0f9ff; border-left: 4px solid #3b82f6; padding: 12px 15px; margin: 20px 0; border-radius: 4px; }" +
               "        .security-text { color: #1e40af; font-size: 13px; margin: 0; }" +
               "        .footer { background: linear-gradient(135deg, #fff4ed 0%, #ffe8d9 100%); color: #666; padding: 30px; text-align: center; border-top: 3px solid #FFD4B8; }" +
               "        .footer-brand { font-size: 24px; font-weight: 900; margin-bottom: 5px; }" +
               "        .footer-bulls { color: #f97316; }" +
               "        .footer-eye { color: #3b82f6; }" +
               "        .footer-tagline { font-size: 12px; letter-spacing: 2px; margin-bottom: 15px; color: #f97316; font-weight: 600; }" +
               "        .footer-text { font-size: 12px; line-height: 1.6; margin: 5px 0; color: #666; }" +
               "        .footer-disclaimer { font-size: 11px; margin-top: 15px; color: #999; font-style: italic; }" +
               "    </style>" +
               "</head>" +
               "<body>" +
               "    <div class='email-container'>" +
               "        <div class='header'>" +
               "            <div class='logo'>" +
               "                <span class='logo-bulls'>BULLS</span><span class='logo-eye'>EYE</span>" +
               "            </div>" +
               "            <div class='tagline'>TRADE LIKE A PRO</div>" +
               "        </div>" +
               "        <div class='content'>" +
               "            <div class='greeting'>Hello Trader! 👋</div>" +
               "            <div class='message'>" +
               "                You've requested to login to your <strong>BullsEye</strong> account. Use the OTP below to complete your login:" +
               "            </div>" +
               "            <div class='otp-container'>" +
               "                <div class='otp-label'>Your One-Time Password</div>" +
               "                <div class='otp-code'>" + otpCode + "</div>" +
               "            </div>" +
               "            <div class='validity'>" +
               "                <p class='validity-text'>⏰ <strong>Valid for 5 minutes only</strong> - Please use this OTP immediately</p>" +
               "            </div>" +
               "            <div class='security-note'>" +
               "                <p class='security-text'>🔒 <strong>Security Tip:</strong> Never share this OTP with anyone. BullsEye will never ask for your OTP via phone or email.</p>" +
               "            </div>" +
               "        </div>" +
               "        <div class='footer'>" +
               "            <div class='footer-brand'>" +
               "                <span class='footer-bulls'>BULLS</span><span class='footer-eye'>EYE</span>" +
               "            </div>" +
               "            <div class='footer-tagline'>TRADE LIKE A PRO</div>" +
               "            <div class='footer-text'>India's Most Trusted Trading Platform</div>" +
               "            <div class='footer-text'>© 2026 <span style='color: #f97316; font-weight: 600;'>BullsEye Broking Pvt. Ltd.</span> All rights reserved.</div>" +
               "            <div class='footer-text'>Made by Savan. Made for Educational purpose only.</div>" +
               "            <div class='footer-disclaimer'>This is an automated mail, please do not reply to this mail.</div>" +
               "        </div>" +
               "    </div>" +
               "</body>" +
               "</html>";
    }

    private String buildPasswordResetEmailHtml(String otpCode) {
        return "<!DOCTYPE html>" +
               "<html>" +
               "<head>" +
               "    <meta charset='UTF-8'>" +
               "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
               "    <style>" +
               "        body { margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f5f5f5; }" +
               "        .email-container { max-width: 600px; margin: 0 auto; background-color: #ffffff; }" +
               "        .header { background: linear-gradient(135deg, #fff4ed 0%, #ffe8d9 100%); padding: 40px 20px; text-align: center; border-bottom: 3px solid #FFD4B8; }" +
               "        .logo { font-size: 48px; font-weight: 900; letter-spacing: 2px; margin: 0; }" +
               "        .logo-bulls { color: #f97316; }" +
               "        .logo-eye { color: #3b82f6; }" +
               "        .tagline { color: #f97316; font-size: 14px; font-weight: 600; letter-spacing: 3px; margin-top: 8px; }" +
               "        .content { padding: 40px 30px; }" +
               "        .greeting { font-size: 18px; color: #1f2937; margin-bottom: 20px; }" +
               "        .message { font-size: 16px; color: #4b5563; line-height: 1.6; margin-bottom: 30px; }" +
               "        .otp-container { background: #ffffff; border: 2px solid #FFD4B8; border-radius: 12px; padding: 25px; text-align: center; margin: 30px 0; }" +
               "        .otp-label { font-size: 13px; color: #666; font-weight: 600; text-transform: uppercase; letter-spacing: 1px; margin-bottom: 12px; }" +
               "        .otp-code { font-size: 36px; font-weight: 900; color: #f97316; letter-spacing: 6px; font-family: 'Courier New', monospace; }" +
               "        .validity { background-color: #fef2f2; border-left: 4px solid #ef4444; padding: 12px 15px; margin: 20px 0; border-radius: 4px; }" +
               "        .validity-text { color: #991b1b; font-size: 13px; margin: 0; }" +
               "        .security-note { background-color: #f0f9ff; border-left: 4px solid #3b82f6; padding: 12px 15px; margin: 20px 0; border-radius: 4px; }" +
               "        .security-text { color: #1e40af; font-size: 13px; margin: 0; }" +
               "        .footer { background: linear-gradient(135deg, #fff4ed 0%, #ffe8d9 100%); color: #666; padding: 30px; text-align: center; border-top: 3px solid #FFD4B8; }" +
               "        .footer-brand { font-size: 24px; font-weight: 900; margin-bottom: 5px; }" +
               "        .footer-bulls { color: #f97316; }" +
               "        .footer-eye { color: #3b82f6; }" +
               "        .footer-tagline { font-size: 12px; letter-spacing: 2px; margin-bottom: 15px; color: #f97316; font-weight: 600; }" +
               "        .footer-text { font-size: 12px; line-height: 1.6; margin: 5px 0; color: #666; }" +
               "        .footer-disclaimer { font-size: 11px; margin-top: 15px; color: #999; font-style: italic; }" +
               "    </style>" +
               "</head>" +
               "<body>" +
               "    <div class='email-container'>" +
               "        <div class='header'>" +
               "            <div class='logo'>" +
               "                <span class='logo-bulls'>BULLS</span><span class='logo-eye'>EYE</span>" +
               "            </div>" +
               "            <div class='tagline'>TRADE LIKE A PRO</div>" +
               "        </div>" +
               "        <div class='content'>" +
               "            <div class='greeting'>Hello! 👋</div>" +
               "            <div class='message'>" +
               "                You've requested to reset your password for your <strong>BullsEye</strong> account. Use the OTP below to verify your identity:" +
               "            </div>" +
               "            <div class='otp-container'>" +
               "                <div class='otp-label'>Password Reset OTP</div>" +
               "                <div class='otp-code'>" + otpCode + "</div>" +
               "            </div>" +
               "            <div class='validity'>" +
               "                <p class='validity-text'>⏰ <strong>Valid for 5 minutes only</strong> - Please use this OTP immediately</p>" +
               "            </div>" +
               "            <div class='security-note'>" +
               "                <p class='security-text'>🔒 <strong>Security Tip:</strong> If you didn't request a password reset, please ignore this email and your password will remain unchanged.</p>" +
               "            </div>" +
               "        </div>" +
               "        <div class='footer'>" +
               "            <div class='footer-brand'>" +
               "                <span class='footer-bulls'>BULLS</span><span class='footer-eye'>EYE</span>" +
               "            </div>" +
               "            <div class='footer-tagline'>TRADE LIKE A PRO</div>" +
               "            <div class='footer-text'>India's Most Trusted Trading Platform</div>" +
               "            <div class='footer-text'>© 2026 <span style='color: #f97316; font-weight: 600;'>BullsEye Broking Pvt. Ltd.</span> All rights reserved.</div>" +
               "            <div class='footer-text'>Made by Savan. Made for Educational purpose only.</div>" +
               "            <div class='footer-disclaimer'>This is an automated mail, please do not reply to this mail.</div>" +
               "        </div>" +
               "    </div>" +
               "</body>" +
               "</html>";
    }
}

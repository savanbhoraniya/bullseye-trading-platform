package com.bullseye.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    @Value("${spring.mail.username:noreply@bullseye.com}")
    private String fromEmail;

    public void sendOtpEmail(String toEmail, String otpCode) {
        try {
            System.out.println("=== Attempting to send OTP email ===");
            System.out.println("To: " + toEmail);
            System.out.println("From: " + fromEmail);
            System.out.println("OTP Code: " + otpCode);
            
            MimeMessage mimeMessage = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            
            helper.setFrom(fromEmail);
            helper.setTo(toEmail);
            helper.setSubject("BullsEye - Your Login OTP");
            helper.setText(buildOtpEmailHtml(otpCode), true);
            
            System.out.println("Sending email via JavaMailSender...");
            mailSender.send(mimeMessage);
            System.out.println("✅ OTP email sent successfully to: " + toEmail);
        } catch (jakarta.mail.AuthenticationFailedException e) {
            System.err.println("❌ Authentication failed - Check Gmail credentials");
            System.err.println("Error: " + e.getMessage());
            throw new RuntimeException("Email authentication failed. Please check Gmail app password.");
        } catch (jakarta.mail.MessagingException e) {
            System.err.println("❌ Messaging error: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Failed to send OTP email: " + e.getMessage());
        } catch (Exception e) {
            System.err.println("❌ Failed to send OTP email: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Failed to send OTP email. Please try again.");
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
               "        " +
               "        <div class='content'>" +
               "            <div class='greeting'>Hello Trader! 👋</div>" +
               "            " +
               "            <div class='message'>" +
               "                You've requested to login to your <strong>BullsEye</strong> account. Use the OTP below to complete your login:" +
               "            </div>" +
               "            " +
               "            <div class='otp-container'>" +
               "                <div class='otp-label'>Your One-Time Password</div>" +
               "                <div class='otp-code'>" + otpCode + "</div>" +
               "            </div>" +
               "            " +
               "            <div class='validity'>" +
               "                <p class='validity-text'>⏰ <strong>Valid for 5 minutes only</strong> - Please use this OTP immediately</p>" +
               "            </div>" +
               "            " +
               "            <div class='security-note'>" +
               "                <p class='security-text'>🔒 <strong>Security Tip:</strong> Never share this OTP with anyone. BullsEye will never ask for your OTP via phone or email.</p>" +
               "            </div>" +
               "        </div>" +
               "        " +
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

    public void sendWelcomeEmail(String toEmail, String userName) {
        try {
            MimeMessage mimeMessage = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            
            helper.setFrom(fromEmail);
            helper.setTo(toEmail);
            helper.setSubject("Welcome to BullsEye - Start Your Trading Journey!");
            helper.setText(buildWelcomeEmailHtml(userName), true);
            
            mailSender.send(mimeMessage);
        } catch (Exception e) {
            System.err.println("Failed to send welcome email: " + e.getMessage());
        }
    }

    private String buildWelcomeEmailHtml(String userName) {
        return "<!DOCTYPE html>" +
               "<html>" +
               "<head>" +
               "    <meta charset='UTF-8'>" +
               "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
               "    <style>" +
               "        body { margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f5f5f5; }" +
               "        .email-container { max-width: 600px; margin: 0 auto; background-color: #ffffff; }" +
               "        .header { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); padding: 40px 20px; text-align: center; }" +
               "        .logo { font-size: 48px; font-weight: 900; letter-spacing: 2px; margin: 0; }" +
               "        .logo-bulls { background: linear-gradient(135deg, #f97316 0%, #fb923c 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }" +
               "        .logo-eye { background: linear-gradient(135deg, #3b82f6 0%, #60a5fa 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }" +
               "        .tagline { color: #ffffff; font-size: 14px; font-weight: 600; letter-spacing: 3px; margin-top: 8px; }" +
               "        .content { padding: 40px 30px; }" +
               "        .welcome-title { font-size: 28px; color: #1f2937; font-weight: 700; margin-bottom: 20px; text-align: center; }" +
               "        .message { font-size: 16px; color: #4b5563; line-height: 1.6; margin-bottom: 20px; }" +
               "        .footer { background-color: #1f2937; color: #9ca3af; padding: 30px; text-align: center; }" +
               "        .footer-text { font-size: 12px; line-height: 1.6; margin: 5px 0; }" +
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
               "            <div class='welcome-title'>🎉 Welcome to BullsEye!</div>" +
               "            <div class='message'>Dear " + userName + ",</div>" +
               "            <div class='message'>Welcome to BullsEye - India's Most Trusted Trading Platform!</div>" +
               "            <div class='message'>You can now login using OTP or your password.</div>" +
               "            <div class='message'>Happy Trading!</div>" +
               "            <div class='message'>Best regards,<br>BullsEye Team</div>" +
               "        </div>" +
               "        <div class='footer'>" +
               "            <div class='footer-text'>© 2024 BullsEye. All rights reserved.</div>" +
               "        </div>" +
               "    </div>" +
               "</body>" +
               "</html>";
    }

    /**
     * Send password reset OTP email
     */
    public void sendPasswordResetEmail(String toEmail, String otpCode) {
        try {
            System.out.println("=== Attempting to send password reset OTP email ===");
            System.out.println("To: " + toEmail);
            System.out.println("From: " + fromEmail);
            System.out.println("OTP Code: " + otpCode);
            
            MimeMessage mimeMessage = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            
            helper.setFrom(fromEmail);
            helper.setTo(toEmail);
            helper.setSubject("BullsEye - Password Reset OTP");
            helper.setText(buildPasswordResetEmailHtml(otpCode), true);
            
            System.out.println("Sending password reset email via JavaMailSender...");
            mailSender.send(mimeMessage);
            System.out.println("✅ Password reset OTP email sent successfully to: " + toEmail);
        } catch (jakarta.mail.AuthenticationFailedException e) {
            System.err.println("❌ Authentication failed - Check Gmail credentials");
            System.err.println("Error: " + e.getMessage());
            throw new RuntimeException("Email authentication failed. Please check Gmail app password.");
        } catch (jakarta.mail.MessagingException e) {
            System.err.println("❌ Messaging error: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Failed to send password reset email: " + e.getMessage());
        } catch (Exception e) {
            System.err.println("❌ Failed to send password reset email: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Failed to send password reset email. Please try again.");
        }
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
               "        " +
               "        <div class='content'>" +
               "            <div class='greeting'>Hello! 👋</div>" +
               "            " +
               "            <div class='message'>" +
               "                You've requested to reset your password for your <strong>BullsEye</strong> account. Use the OTP below to verify your identity:" +
               "            </div>" +
               "            " +
               "            <div class='otp-container'>" +
               "                <div class='otp-label'>Password Reset OTP</div>" +
               "                <div class='otp-code'>" + otpCode + "</div>" +
               "            </div>" +
               "            " +
               "            <div class='validity'>" +
               "                <p class='validity-text'>⏰ <strong>Valid for 5 minutes only</strong> - Please use this OTP immediately</p>" +
               "            </div>" +
               "            " +
               "            <div class='security-note'>" +
               "                <p class='security-text'>🔒 <strong>Security Tip:</strong> If you didn't request a password reset, please ignore this email and your password will remain unchanged.</p>" +
               "            </div>" +
               "        </div>" +
               "        " +
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

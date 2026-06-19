import { Component, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { OtpService } from '../../services/otp.service';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'app-forgot-password',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterModule],
  templateUrl: './forgot-password.html',
  styleUrls: ['./forgot-password.css']
})
export class ForgotPasswordComponent {
  
  // Steps: 1=Email, 2=OTP, 3=NewPassword
  currentStep = 1;
  
  email = '';
  otpCode = '';
  newPassword = '';
  confirmPassword = '';
  
  errorMessage = '';
  successMessage = '';
  isLoading = false;
  
  countdown = 0;
  canResend = false;
  private countdownInterval: any;
  
  constructor(
    private router: Router,
    private otpService: OtpService,
    private authService: AuthService,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnDestroy() {
    if (this.countdownInterval) {
      clearInterval(this.countdownInterval);
    }
  }
  
  // Step 1: Send OTP
  sendOtp() {
    if (!this.email) {
      this.errorMessage = 'Email is required';
      this.cdr.detectChanges();
      return;
    }
    
    this.errorMessage = '';
    this.successMessage = '';
    this.isLoading = true;
    this.cdr.detectChanges();
    
    this.otpService.sendPasswordResetOtp(this.email).subscribe({
      next: (response) => {
        this.isLoading = false;
        this.currentStep = 2;
        this.successMessage = 'OTP sent to your email';
        this.startCountdown(30);
        this.cdr.detectChanges();
      },
      error: (error) => {
        this.isLoading = false;
        this.errorMessage = error.error?.message || 'Failed to send OTP';
        this.cdr.detectChanges();
      }
    });
  }
  
  // Step 2: Verify OTP
  verifyOtp() {
    if (!this.otpCode || this.otpCode.length !== 6) {
      this.errorMessage = 'Please enter 6-digit OTP';
      this.cdr.detectChanges();
      return;
    }
    
    this.errorMessage = '';
    this.successMessage = '';
    this.isLoading = true;
    this.cdr.detectChanges();
    
    this.otpService.verifyPasswordResetOtp(this.email, this.otpCode).subscribe({
      next: (response) => {
        this.isLoading = false;
        this.currentStep = 3;
        this.successMessage = 'OTP verified! Set your new password';
        this.cdr.detectChanges();
      },
      error: (error) => {
        this.isLoading = false;
        this.errorMessage = error.error?.message || 'Invalid OTP';
        this.cdr.detectChanges();
      }
    });
  }
  
  // Step 3: Reset Password
  resetPassword() {
    if (!this.newPassword || !this.confirmPassword) {
      this.errorMessage = 'Please fill all fields';
      this.cdr.detectChanges();
      return;
    }
    
    if (this.newPassword !== this.confirmPassword) {
      this.errorMessage = 'Passwords do not match';
      this.cdr.detectChanges();
      return;
    }
    
    if (this.newPassword.length < 6) {
      this.errorMessage = 'Password must be at least 6 characters';
      this.cdr.detectChanges();
      return;
    }
    
    this.errorMessage = '';
    this.successMessage = '';
    this.isLoading = true;
    this.cdr.detectChanges();
    
    this.authService.resetPassword(this.email, this.otpCode, this.newPassword).subscribe({
      next: (response) => {
        this.isLoading = false;
        this.successMessage = 'Password reset successfully! Redirecting to login...';
        this.cdr.detectChanges();
        setTimeout(() => {
          this.router.navigate(['/login']);
        }, 2000);
      },
      error: (error) => {
        this.isLoading = false;
        this.errorMessage = error.error || 'Failed to reset password';
        this.cdr.detectChanges();
      }
    });
  }
  
  // Resend OTP
  resendOtp() {
    if (!this.canResend) return;
    
    this.errorMessage = '';
    this.successMessage = '';
    this.otpCode = '';
    this.sendOtp();
  }
  
  // Countdown timer
  startCountdown(seconds: number) {
    this.countdown = seconds;
    this.canResend = false;
    
    if (this.countdownInterval) {
      clearInterval(this.countdownInterval);
    }
    
    this.countdownInterval = setInterval(() => {
      this.countdown--;
      if (this.countdown <= 0) {
        clearInterval(this.countdownInterval);
        this.canResend = true;
      }
      this.cdr.detectChanges();
    }, 1000);
  }

  // Change email (go back to step 1)
  changeEmail() {
    this.currentStep = 1;
    this.otpCode = '';
    this.errorMessage = '';
    this.successMessage = '';
    if (this.countdownInterval) {
      clearInterval(this.countdownInterval);
    }
  }
}

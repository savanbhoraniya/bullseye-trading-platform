import { Component, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { RouterModule } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { OtpService } from '../../services/otp.service';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterModule],
  templateUrl: './login.html',
  styleUrls: ['./login.css']
})
export class LoginComponent {

  // Login mode toggle
  loginMode: 'password' | 'otp' = 'password';

  // Common fields
  email = '';
  errorMessage = '';
  successMessage = '';
  isLoading = false;

  // Password login
  password = '';

  // OTP login
  otpSent = false;
  otpCode = '';
  countdown = 0;
  canResend = false;
  private countdownInterval: any;

  constructor(
    private router: Router,
    private authService: AuthService,
    private otpService: OtpService,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnDestroy() {
    if (this.countdownInterval) {
      clearInterval(this.countdownInterval);
    }
  }

  toggleLoginMode() {
    this.loginMode = this.loginMode === 'password' ? 'otp' : 'password';
    this.resetForm();
  }

  resetForm() {
    this.email = '';
    this.password = '';
    this.otpCode = '';
    this.otpSent = false;
    this.errorMessage = '';
    this.successMessage = '';
    this.isLoading = false;
    this.countdown = 0;
    this.canResend = false;
    if (this.countdownInterval) {
      clearInterval(this.countdownInterval);
    }
  }

  // Password Login
  onPasswordLogin() {
    if (!this.email || !this.password) {
      this.errorMessage = 'Email and password are required';
      this.cdr.detectChanges();
      return;
    }

    this.errorMessage = '';
    this.isLoading = true;
    this.cdr.detectChanges();

    const loginData = {
      email: this.email,
      password: this.password
    };

    this.authService.login(loginData).subscribe({
      next: (response) => {
        this.isLoading = false;
        if (response.token) {
          localStorage.setItem('token', response.token);
          localStorage.setItem('userId', response.userId || '');
          localStorage.setItem('user', JSON.stringify({
            id: response.userId || '',
            email: this.email
          }));
        }
        this.cdr.detectChanges();
        this.router.navigate(['/dashboard']);
      },
      error: (error) => {
        this.isLoading = false;
        this.errorMessage = 'Invalid email or password';
        this.cdr.detectChanges();
      }
    });
  }

  // OTP Login - Send OTP
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

    // Safety timeout to reset loading state after 10 seconds
    const safetyTimeout = setTimeout(() => {
      if (this.isLoading) {
        console.warn('OTP request timed out, resetting loading state');
        this.isLoading = false;
        this.errorMessage = 'Request timed out. Please try again.';
        this.cdr.detectChanges();
      }
    }, 10000);

    this.otpService.sendOtp(this.email).subscribe({
      next: (response) => {
        clearTimeout(safetyTimeout);
        console.log('OTP sent successfully:', response);
        this.isLoading = false;
        this.otpSent = true;
        this.successMessage = 'OTP sent successfully! Check your email.';
        this.startCountdown(30);
        this.cdr.detectChanges();
      },
      error: (error) => {
        clearTimeout(safetyTimeout);
        console.error('Failed to send OTP:', error);
        this.isLoading = false;
        this.otpSent = false;
        this.errorMessage = error.error?.message || 'Failed to send OTP. Please try again.';
        this.cdr.detectChanges();
      }
    });
  }

  // OTP Login - Verify OTP
  verifyOtp() {
    if (!this.otpCode || this.otpCode.length !== 6) {
      this.errorMessage = 'Please enter 6-digit OTP';
      this.cdr.detectChanges();
      return;
    }

    this.errorMessage = '';
    this.isLoading = true;
    this.cdr.detectChanges();

    this.otpService.verifyOtp(this.email, this.otpCode).subscribe({
      next: (response) => {
        this.isLoading = false;
        if (response.token) {
          localStorage.setItem('token', response.token);
          localStorage.setItem('userId', response.userId || '');
          localStorage.setItem('user', JSON.stringify({
            id: response.userId || '',
            email: this.email
          }));
        }
        this.cdr.detectChanges();
        this.router.navigate(['/dashboard']);
      },
      error: (error) => {
        this.isLoading = false;
        this.errorMessage = error.error?.message || 'Invalid OTP. Please try again.';
        this.cdr.detectChanges();
      }
    });
  }

  // Resend OTP
  resendOtp() {
    if (!this.canResend) return;

    this.errorMessage = '';
    this.successMessage = '';
    this.isLoading = true;
    this.cdr.detectChanges();

    this.otpService.resendOtp(this.email).subscribe({
      next: (response) => {
        this.isLoading = false;
        this.successMessage = 'OTP resent successfully!';
        this.otpCode = '';
        this.startCountdown(30);
        this.cdr.detectChanges();
      },
      error: (error) => {
        this.isLoading = false;
        this.errorMessage = error.error?.message || 'Failed to resend OTP.';
        this.cdr.detectChanges();
      }
    });
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

  // Remove auto-submit - user must click Verify & Login button
  onOtpInput() {
    // Just validate length, don't auto-submit
    if (this.otpCode.length > 6) {
      this.otpCode = this.otpCode.substring(0, 6);
    }
  }
}
import { Component, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { RouterModule } from '@angular/router';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'app-register',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterModule],
  templateUrl: './register.html',
  styleUrls: ['./register.css']
})
export class RegisterComponent {

  fullName = '';
  email = '';
  password = '';
  confirmPassword = '';
  errorMessage = '';
  successMessage = '';
  isLoading = false;

  constructor(
    private router: Router,
    private authService: AuthService,
    private cdr: ChangeDetectorRef
  ) {}

  onSubmit() {
    if (!this.fullName || !this.email || !this.password || !this.confirmPassword) {
      this.errorMessage = 'All fields are required';
      this.cdr.detectChanges();
      return;
    }

    if (this.password.length < 6) {
      this.errorMessage = 'Password must be at least 6 characters';
      this.cdr.detectChanges();
      return;
    }

    if (this.password !== this.confirmPassword) {
      this.errorMessage = 'Passwords do not match';
      this.cdr.detectChanges();
      return;
    }

    this.errorMessage = '';
    this.successMessage = '';
    this.isLoading = true;
    this.cdr.detectChanges();

    const registerData = {
      fullName: this.fullName,
      email: this.email,
      password: this.password
    };

    this.authService.register(registerData).subscribe({
      next: (response: any) => {
        this.isLoading = false;
        
        // Always show user-friendly message regardless of backend response
        this.successMessage = 'Registration successful! Redirecting to login...';
        
        this.cdr.detectChanges();
        setTimeout(() => {
          this.router.navigate(['/login']);
        }, 2000);
      },
      error: (error: any) => {
        this.isLoading = false;

        let errorMsg = '';
        if (typeof error.error === 'string') {
          errorMsg = error.error;
        } else if (error.error && error.error.message) {
          errorMsg = error.error.message;
        } else if (typeof error.message === 'string') {
          errorMsg = error.message;
        }

        if (errorMsg.includes('User is already registered')) {
          this.errorMessage = 'Email ID already exists. Please use a different email.';
        } else {
          this.errorMessage = errorMsg || 'Registration failed. Please try again.';
        }
        this.cdr.detectChanges();
      }
    });
  }
}
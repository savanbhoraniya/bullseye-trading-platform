import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';

@Injectable({ providedIn: 'root' })
export class OtpService {

  private baseUrl = `${environment.apiUrl}/api/auth`;

  constructor(private http: HttpClient) {}

  sendOtp(email: string): Observable<any> {
    return this.http.post(`${this.baseUrl}/send-otp`, { email });
  }

  verifyOtp(email: string, otpCode: string): Observable<any> {
    return this.http.post(`${this.baseUrl}/verify-otp`, { email, otpCode });
  }

  resendOtp(email: string): Observable<any> {
    return this.http.post(`${this.baseUrl}/resend-otp`, { email });
  }

  // Forgot Password methods
  sendPasswordResetOtp(email: string): Observable<any> {
    return this.http.post(`${this.baseUrl}/forgot-password/send-otp`, { email });
  }

  verifyPasswordResetOtp(email: string, otpCode: string): Observable<any> {
    return this.http.post(`${this.baseUrl}/forgot-password/verify-otp`, { email, otpCode });
  }
}

import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({ providedIn: 'root' })
export class AuthService {

  private baseUrl = 'http://localhost:8081/api/auth';

  constructor(private http: HttpClient) {}

  login(data: { email: string; password: string }): Observable<any> {
    return this.http.post(`${this.baseUrl}/login`, data);
  }

  register(data: { fullName: string; email: string; password: string }): Observable<any> {
    return this.http.post(`${this.baseUrl}/register`, data);
  }

  changePassword(data: { userId: number; currentPassword: string; newPassword: string }): Observable<any> {
    return this.http.post(`${this.baseUrl}/change-password`, data, { responseType: 'text' });
  }

  // Forgot Password - Reset password
  resetPassword(email: string, otpCode: string, newPassword: string): Observable<any> {
    return this.http.post(`${this.baseUrl}/forgot-password/reset`, 
      { email, otpCode, newPassword }, 
      { responseType: 'text' }
    );
  }
}

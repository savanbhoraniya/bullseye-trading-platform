import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';

@Injectable({ providedIn: 'root' })
export class BalanceService {

  private baseUrl = `${environment.apiUrl}/api/balance`;

  constructor(private http: HttpClient) {}

  getBalance(userId: number): Observable<any> {
    return this.http.get(`${this.baseUrl}/${userId}`);
  }

  addFunds(userId: number, amount: number): Observable<any> {
    return this.http.post(`${this.baseUrl}/add`, { userId, amount });
  }

  withdrawFunds(userId: number, amount: number): Observable<any> {
    return this.http.post(`${this.baseUrl}/withdraw`, { userId, amount });
  }

  getTransactions(userId: number): Observable<any> {
    return this.http.get(`${this.baseUrl}/transactions/${userId}`);
  }
}
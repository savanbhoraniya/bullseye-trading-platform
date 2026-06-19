import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';

@Injectable({ providedIn: 'root' })
export class BankService {

  private baseUrl = `${environment.apiUrl}/api/bank`;

  constructor(private http: HttpClient) {}

  getBankAccount(userId: number): Observable<any> {
    return this.http.get(`${this.baseUrl}/${userId}`);
  }

  addBankAccount(data: {
    userId: number;
    bankName: string;
    accountHolder: string;
    accountNumber: string;
    ifscCode: string;
  }): Observable<any> {
    return this.http.post(`${this.baseUrl}/add`, data);
  }

  removeBankAccount(userId: number): Observable<any> {
    return this.http.delete(`${this.baseUrl}/${userId}`, { responseType: 'text' });
  }
}
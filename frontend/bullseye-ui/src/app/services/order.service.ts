import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface OrderRequest {
  userId: number;
  symbol: string;
  companyName: string;
  quantity: number;
  orderType: 'MARKET' | 'LIMIT';
  action: 'BUY' | 'SELL';
  limitPrice?: number;
  currentPrice?: number;
}

export interface Order {
  id: number;
  userId: number;
  symbol: string;
  companyName: string;
  orderType: string;
  action: string;
  quantity: number;
  limitPrice: number | null;
  executedPrice: number | null;
  status: string;
  createdAt: string;
  executedAt: string | null;
  message: string;
}

@Injectable({
  providedIn: 'root'
})
export class OrderService {
  private baseUrl = 'http://localhost:8081/api/orders';

  constructor(private http: HttpClient) {}

  getAllOrders(userId: number): Observable<Order[]> {
    return this.http.get<Order[]>(`${this.baseUrl}/${userId}`);
  }

  getPendingOrders(userId: number): Observable<Order[]> {
    return this.http.get<Order[]>(`${this.baseUrl}/${userId}/pending`);
  }

  getExecutedOrders(userId: number): Observable<Order[]> {
    return this.http.get<Order[]>(`${this.baseUrl}/${userId}/executed`);
  }

  placeOrder(request: OrderRequest): Observable<Order> {
    return this.http.post<Order>(`${this.baseUrl}/place`, request);
  }

  cancelOrder(orderId: number, userId: number): Observable<Order> {
    return this.http.post<Order>(`${this.baseUrl}/${orderId}/cancel`, { userId });
  }
}

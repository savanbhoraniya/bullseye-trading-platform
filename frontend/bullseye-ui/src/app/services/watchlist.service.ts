import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';

import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class WatchlistService {

  private baseUrl =
    `${environment.apiUrl}/api`;

  constructor(
    private http: HttpClient
  ) {}

  getWatchlist(
    userId: number
  ): Observable<any> {

    return this.http.get(

      `${this.baseUrl}/watchlist/${userId}`

    );

  }

  addToWatchlist(
    data: {
      userId: number;
      symbol: string;
      companyName: string;
    }
  ): Observable<any> {

    return this.http.post(

      `${this.baseUrl}/watchlist/add`,
      data

    );

  }

  removeFromWatchlist(
    userId: number,
    symbol: string
  ): Observable<any> {

    return this.http.delete(

      `${this.baseUrl}/watchlist/${userId}/${symbol}`,

      {
        responseType: 'text'
      }

    );

  }

  buyStock(
    data: {
      userId: number;
      symbol: string;
      companyName: string;
      quantity: number;
      price: number;
    }
  ): Observable<any> {

    return this.http.post(

      `${this.baseUrl}/portfolio/buy`,
      data

    );

  }

  getBalance(
    userId: number
  ): Observable<any> {

    return this.http.get(

      `${this.baseUrl}/balance/${userId}`

    );

  }

  getBulkQuotes(
    symbols: string[]
  ): Observable<any[]> {

    return this.http.post<any[]>(

      `${this.baseUrl}/market/bulk`,

      {
        symbols
      }

    );

  }

}
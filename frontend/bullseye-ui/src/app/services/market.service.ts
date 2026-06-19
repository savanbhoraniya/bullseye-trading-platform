import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class MarketService {

  private baseUrl =
    'http://localhost:8081/api/market';

  constructor(
    private http: HttpClient
  ) {}

  getQuote(
    symbol: string
  ): Observable<any> {

    return this.http.get(

      `${this.baseUrl}/quote/${symbol}`

    );

  }

  getBulkQuotes(
    symbols: string[]
  ): Observable<any[]> {

    return this.http.post<any[]>(

      `${this.baseUrl}/bulk`,

      {
        symbols
      }

    );

  }

}
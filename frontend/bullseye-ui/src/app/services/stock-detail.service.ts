import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';

export interface StockDetail {
  symbol: string;
  name: string;
  currentPrice: number;
  change: number;
  percentChange: number;
  open: number;
  high: number;
  low: number;
  previousClose: number;
  volume: number;
  marketCap: number;
  fiftyTwoWeekHigh: number;
  fiftyTwoWeekLow: number;
  peRatio: number;
  eps: number;
  bookValue: number;
  marketStatus: string;
}

export interface HistoricalData {
  date: string;
  open: number;
  high: number;
  low: number;
  close: number;
  volume: number;
}

export interface MarketDepth {
  symbol: string;
  buyOrders: OrderBookEntry[];
  sellOrders: OrderBookEntry[];
  totalBuyQuantity: number;
  totalSellQuantity: number;
}

export interface OrderBookEntry {
  price: number;
  quantity: number;
  orders: number;
}

export interface CorporateAction {
  symbol: string;
  actionType: string;
  description: string;
  exDate: string;
  recordDate: string;
  details: string;
}

export interface StockNews {
  title: string;
  description: string;
  url: string;
  imageUrl: string;
  source: string;
  publishedAt: string;
}

@Injectable({
  providedIn: 'root'
})
export class StockDetailService {

  private baseUrl = `${environment.apiUrl}/api/stock`;

  constructor(private http: HttpClient) {}

  getStockDetails(symbol: string): Observable<StockDetail> {
    return this.http.get<StockDetail>(`${this.baseUrl}/${symbol}/details`);
  }

  getHistoricalData(symbol: string, period: string = '1M'): Observable<HistoricalData[]> {
    return this.http.get<HistoricalData[]>(
      `${this.baseUrl}/${symbol}/historical?period=${period}`
    );
  }

  getMarketDepth(symbol: string): Observable<MarketDepth> {
    return this.http.get<MarketDepth>(`${this.baseUrl}/${symbol}/market-depth`);
  }

  getCorporateActions(symbol: string): Observable<CorporateAction[]> {
    return this.http.get<CorporateAction[]>(
      `${this.baseUrl}/${symbol}/corporate-actions`
    );
  }

  getStockNews(symbol: string): Observable<StockNews[]> {
    return this.http.get<StockNews[]>(`${this.baseUrl}/${symbol}/news`);
  }
}

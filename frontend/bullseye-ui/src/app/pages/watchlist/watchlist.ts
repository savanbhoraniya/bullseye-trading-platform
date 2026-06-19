import {
  Component,
  OnInit,
  OnDestroy,
  ChangeDetectorRef,
  NgZone
} from '@angular/core';

import {
  CommonModule,
  DecimalPipe
} from '@angular/common';

import { FormsModule } from '@angular/forms';

import { Router, RouterModule } from '@angular/router';

import { HttpClient } from '@angular/common/http';

import { MarketService } from '../../services/market.service';

import { OrderService } from '../../services/order.service';

interface WatchlistStock {

  id: number;

  symbol: string;

  companyName: string;

  price: number;

  change: number;

  changePercent: number;

  open: number;

  dayHigh: number;

  dayLow: number;

  high52w: number;

  low52w: number;

}

interface NSEStock {

  symbol: string;

  companyName: string;

}

@Component({
  selector: 'app-watchlist',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    DecimalPipe,
    RouterModule
  ],
  templateUrl: './watchlist.html',
  styleUrls: ['./watchlist.css']
})
export class WatchlistComponent
implements OnInit, OnDestroy {

  userId = 0;

  watchlist: WatchlistStock[] = [];

  isLoading = true;

  availableBalance = 0;

  listSearch = '';

  showAddModal = false;

  searchQuery = '';

  filteredStocks: NSEStock[] = [];

  addError = '';

  selectedStock: WatchlistStock | null = null;

  buyQuantity: number | null = null;

  totalCost = 0;

  buyError = '';

  buySuccess = '';

  isBuying = false;

  orderType: 'MARKET' | 'LIMIT' = 'MARKET';

  limitPrice: number | null = null;

  private priceInterval: any;

  allStocks: NSEStock[] = [
    { symbol: 'RELIANCE', companyName: 'Reliance Industries' },
    { symbol: 'LT', companyName: 'Larsen & Toubro' },
    { symbol: 'ICICIBANK', companyName: 'ICICI Bank' },
    { symbol: 'HDFCAMC', companyName: 'HDFC Asset Management Company' },
    { symbol: 'ICICIPRAMC', companyName: 'ICICI Prudential Asset Management' },
    { symbol: 'NAM-INDIA', companyName: 'Nippon Life India Asset Management' },
    { symbol: 'CEATLTD', companyName: 'CEAT Ltd' },
    { symbol: 'MARUTI', companyName: 'Maruti Suzuki' },
    { symbol: 'M&M', companyName: 'Mahindra & Mahindra' },
    { symbol: 'APOLLOHOSP', companyName: 'Apollo Hospitals' },
    { symbol: 'EICHERMOT', companyName: 'Eicher Motors' },
    { symbol: 'L&TFH', companyName: 'L&T Finance Holdings' },
    { symbol: 'BAJFINANCE', companyName: 'Bajaj Finance' },
    { symbol: 'TCS', companyName: 'Tata Consultancy Services' },
    { symbol: 'INFY', companyName: 'Infosys' },
    { symbol: 'POLYCAB', companyName: 'Polycab India' },
    { symbol: 'MUTHOOTFIN', companyName: 'Muthoot Finance' },
    { symbol: 'ADANIPORTS', companyName: 'Adani Ports and SEZ' },
    { symbol: 'SHRIRAMFIN', companyName: 'Shriram Finance' },
    { symbol: 'ULTRACEMCO', companyName: 'UltraTech Cement' },
    { symbol: 'CIPLA', companyName: 'Cipla' },
    { symbol: 'SUNPHARMA', companyName: 'Sun Pharma' },
    { symbol: 'SBIN', companyName: 'State Bank of India' },
    { symbol: 'BANKBARODA', companyName: 'Bank of Baroda' },
    { symbol: 'BEL', companyName: 'Bharat Electronics Ltd' },
    { symbol: 'TATAMOTORS', companyName: 'Tata Motors' },
    { symbol: 'HDFCBANK', companyName: 'HDFC Bank' },
    { symbol: 'KOTAKBANK', companyName: 'Kotak Mahindra Bank' },
    { symbol: 'AXISBANK', companyName: 'Axis Bank' },
    { symbol: 'WIPRO', companyName: 'Wipro' }
  ];

  constructor(
    private router: Router,
    private http: HttpClient,
    private cdr: ChangeDetectorRef,
    private ngZone: NgZone,
    private marketService: MarketService,
    private orderService: OrderService
  ) {}

  ngOnInit() {

    const raw =
      localStorage.getItem('user');

    if (!raw) {

      this.router.navigate(['/login']);

      return;

    }

    const user = JSON.parse(raw);

    this.userId =
      user.id
        ? parseInt(user.id)
        : 0;

    this.loadWatchlist();

    this.loadBalance();

  }

  get filteredWatchlist() {

    if (!this.listSearch.trim()) {

      return this.watchlist;

    }

    const q =
      this.listSearch.toLowerCase();

    return this.watchlist.filter(s =>

      s.symbol
        .toLowerCase()
        .includes(q)

      ||

      s.companyName
        .toLowerCase()
        .includes(q)

    );

  }

  loadWatchlist() {

    this.isLoading = true;

    this.http.get<any[]>(

      `http://localhost:8081/api/watchlist/${this.userId}`

    ).subscribe({

      next: (res) => {

        this.watchlist =
          res.map(item =>

            this.buildStock(

              item.symbol,

              item.companyName,

              item.id

            )

          );

        this.loadLivePrices();

        this.startPriceTick();

        this.isLoading = false;

        this.cdr.detectChanges();

      },

      error: () => {

        this.isLoading = false;

        this.cdr.detectChanges();

      }

    });

  }

  buildStock(
    symbol: string,
    companyName: string,
    id: number
  ): WatchlistStock {

    return {

      id,

      symbol,

      companyName,

      price: 0,

      change: 0,

      changePercent: 0,

      open: 0,

      dayHigh: 0,

      dayLow: 0,

      high52w: 0,

      low52w: 0

    };

  }

  loadLivePrices() {

    if (this.watchlist.length === 0) {

      return;

    }

    const symbols =

      this.watchlist.map(stock =>

        stock.symbol

      );

    this.marketService
      .getBulkQuotes(symbols)
      .subscribe({

        next: (quotes: any[]) => {

          quotes.forEach((data: any) => {

            const stock =
              this.watchlist.find(

                s => s.symbol === data.symbol

              );

            if (stock) {

              stock.price =
                data.price || 0;

              stock.change =
                data.change || 0;

              stock.changePercent =
                data.percentChange || 0;

              stock.open =
                data.open || 0;

              stock.dayHigh =
                data.high || 0;

              stock.dayLow =
                data.low || 0;

              stock.high52w =
                data.high52w || 0;

              stock.low52w =
                data.low52w || 0;

            }

          });

          this.cdr.detectChanges();

        },

        error: (err) => {

          console.error(
            'Bulk price error:',
            err
          );

        }

      });

  }

  loadBalance() {

    this.http.get<any>(

      `http://localhost:8081/api/balance/${this.userId}`

    ).subscribe({

      next: (res) => {

        this.availableBalance =
          res.balance;

        this.cdr.detectChanges();

      }

    });

  }

  startPriceTick() {

    this.priceInterval =
      setInterval(() => {

        this.ngZone.run(() => {

          this.loadLivePrices();

          if (this.selectedStock) {

            const found =
              this.watchlist.find(

                s =>
                  s.symbol ===
                  this.selectedStock!.symbol

              );

            if (found) {

              this.selectedStock =
                { ...found };

              if (this.buyQuantity) {

                this.calculateTotal();

              }

            }

          }

          this.cdr.detectChanges();

        });

      }, 30000);

  }

  filterStocks() {

    const q =
      this.searchQuery
        .toLowerCase()
        .trim();

    if (!q) {

      this.filteredStocks = [];

      return;

    }

    const existing =
      this.watchlist.map(w => w.symbol);

    this.filteredStocks =

      this.allStocks

        .filter(s =>

          (

            s.symbol
              .toLowerCase()
              .includes(q)

            ||

            s.companyName
              .toLowerCase()
              .includes(q)

          )

          &&

          !existing.includes(s.symbol)

        )

        .slice(0, 8);

  }

  addStock(stock: NSEStock) {

    this.addError = '';

    this.http.post<any>(

      'http://localhost:8081/api/watchlist/add',

      {
        userId: this.userId,
        symbol: stock.symbol,
        companyName: stock.companyName
      }

    ).subscribe({

      next: (res) => {

        const newStock =

          this.buildStock(

            stock.symbol,

            stock.companyName,

            res.id || 0

          );

        this.watchlist.push(newStock);

        this.loadLivePrices();

        this.showAddModal = false;

        this.searchQuery = '';

        this.filteredStocks = [];

        this.cdr.detectChanges();

      },

      error: (err) => {

        this.addError =

          err.error?.message ||

          'Failed to add stock.';

        this.cdr.detectChanges();

      }

    });

  }

  removeStock(
    event: Event,
    symbol: string
  ) {

    event.stopPropagation();

    this.http.delete(

      `http://localhost:8081/api/watchlist/${this.userId}/${symbol}`,

      {
        responseType: 'text'
      }

    ).subscribe({

      next: () => {

        this.watchlist =

          this.watchlist.filter(

            s => s.symbol !== symbol

          );

        if (

          this.selectedStock?.symbol === symbol

        ) {

          this.selectedStock = null;

        }

        this.cdr.detectChanges();

      }

    });

  }

  selectStock(stock: WatchlistStock) {

    this.selectedStock =
      { ...stock };

    this.buyQuantity = null;

    this.totalCost = 0;

    this.buyError = '';

    this.buySuccess = '';

    this.orderType = 'MARKET';

    this.limitPrice = null;

  }

  setOrderType(type: 'MARKET' | 'LIMIT') {

    this.orderType = type;

    if (type === 'MARKET') {

      this.limitPrice = null;

    }

    this.calculateTotal();

  }

  calculateTotal() {

    if (

      this.buyQuantity &&

      this.selectedStock

    ) {

      const price = this.orderType === 'MARKET' 
        ? this.selectedStock.price 
        : (this.limitPrice || 0);

      this.totalCost = parseFloat(

        (

          this.buyQuantity *

          price

        ).toFixed(2)

      );

    } else {

      this.totalCost = 0;

    }

  }

  confirmBuy() {

    this.buyError = '';

    this.buySuccess = '';

    if (

      !this.buyQuantity ||

      this.buyQuantity <= 0

    ) {

      this.buyError =
        'Please enter a valid quantity.';

      return;

    }

    if (

      this.orderType === 'LIMIT' &&

      (!this.limitPrice || this.limitPrice <= 0)

    ) {

      this.buyError =
        'Please enter a valid limit price.';

      return;

    }

    if (

      this.totalCost >

      this.availableBalance

    ) {

      this.buyError =

        `Insufficient balance. Required: ₹${this.totalCost.toLocaleString('en-IN')} · Available: ₹${this.availableBalance.toLocaleString('en-IN')}`;

      return;

    }

    this.isBuying = true;

    this.orderService.placeOrder({

      userId: this.userId,

      symbol: this.selectedStock!.symbol,

      companyName: this.selectedStock!.companyName,

      quantity: this.buyQuantity,

      orderType: this.orderType,

      action: 'BUY',

      limitPrice: this.orderType === 'LIMIT' ? this.limitPrice! : undefined,

      currentPrice: this.orderType === 'MARKET' ? this.selectedStock!.price : undefined

    }).subscribe({

      next: (res) => {

        if (this.orderType === 'MARKET') {

          this.buySuccess =

            `Successfully bought ${this.buyQuantity} shares at market price!`;

        } else {

          this.buySuccess =

            `Limit order placed! Will execute when price reaches ₹${this.limitPrice}`;

        }

        this.availableBalance -=
          this.totalCost;

        this.buyQuantity = null;

        this.limitPrice = null;

        this.totalCost = 0;

        this.isBuying = false;

        this.cdr.detectChanges();

        setTimeout(() => {

          this.buySuccess = '';

          this.cdr.detectChanges();

        }, 3000);

      },

      error: (err) => {

        this.buyError =

          err.error?.message ||

          'Failed to place order. Try again.';

        this.isBuying = false;

        this.cdr.detectChanges();

      }

    });

  }

  ngOnDestroy() {

    clearInterval(
      this.priceInterval
    );

  }

}
import { Component, Input, Output, EventEmitter, OnInit, OnDestroy, OnChanges, ViewChild, ElementRef, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { NgApexchartsModule } from 'ng-apexcharts';
import {
  ApexAxisChartSeries,
  ApexChart,
  ApexXAxis,
  ApexYAxis,
  ApexTooltip,
  ApexGrid,
  ApexDataLabels,
  ApexStroke
} from 'ng-apexcharts';
import {
  StockDetailService,
  StockDetail,
  HistoricalData,
  MarketDepth
} from '../../services/stock-detail.service';
import { WatchlistService } from '../../services/watchlist.service';
import { OrderService, OrderRequest } from '../../services/order.service';

export type ChartOptions = {
  series: ApexAxisChartSeries;
  chart: ApexChart;
  xaxis: ApexXAxis;
  yaxis: ApexYAxis;
  tooltip: ApexTooltip;
  grid: ApexGrid;
  dataLabels: ApexDataLabels;
  stroke: ApexStroke;
  colors: string[];
};

@Component({
  selector: 'app-stock-modal',
  standalone: true,
  imports: [CommonModule, FormsModule, NgApexchartsModule],
  templateUrl: './stock-modal.component.html',
  styleUrls: ['./stock-modal.component.css']
})
export class StockModalComponent implements OnInit, OnDestroy, OnChanges {
  @Input() symbol: string = '';
  @Input() isOpen: boolean = false;
  @Output() close = new EventEmitter<void>();
  @Output() viewFullDetails = new EventEmitter<string>();

  stockDetail: StockDetail | null = null;
  marketDepth: MarketDepth | null = null;
  
  selectedPeriod: string = '1D';
  periods = ['1D', '1W', '1M', '3M', '6M', '1Y'];
  
  // Chart type toggle
  chartType: 'candlestick' | 'line' = 'candlestick';
  
  // ApexCharts configuration
  public chartOptions: Partial<ChartOptions> = {
    series: [{
      name: 'Price',
      data: []
    }],
    chart: {
      type: 'candlestick',
      height: 280,
      toolbar: {
        show: false
      },
      animations: {
        enabled: true
      }
    },
    xaxis: {
      type: 'datetime',
      labels: {
        style: {
          colors: '#666'
        },
        datetimeFormatter: {
          year: 'yyyy',
          month: 'MMM \'yy',
          day: 'dd MMM',
          hour: 'HH:mm'
        }
      }
    },
    yaxis: {
      tooltip: {
        enabled: true
      },
      labels: {
        style: {
          colors: '#666'
        },
        formatter: (value: number) => {
          return '₹' + value.toFixed(2);
        }
      }
    },
    tooltip: {
      enabled: true,
      theme: 'light'
    },
    grid: {
      borderColor: '#f0f0f0',
      strokeDashArray: 4
    },
    dataLabels: {
      enabled: false
    },
    stroke: {
      width: 2
    },
    colors: ['#26a69a']
  };
  
  loading = true;
  error = '';

  // Make Math available in template
  Math = Math;

  // Buy/Sell/Watchlist state
  activeTab: 'BUY' | 'SELL' = 'BUY';
  orderType: 'MARKET' | 'LIMIT' = 'MARKET';
  quantity: number = 1;
  limitPrice: number | null = null;
  totalCost: number = 0;
  
  // User data
  userId: number = 0;
  availableBalance: number = 0;
  
  // Action states
  isProcessing = false;
  actionError = '';
  actionSuccess = '';
  isInWatchlist = false;

  constructor(
    private stockDetailService: StockDetailService,
    private watchlistService: WatchlistService,
    private orderService: OrderService,
    private router: Router,
    private cdr: ChangeDetectorRef
  ) {
    // Get user from localStorage
    const userData = localStorage.getItem('user');
    if (userData) {
      const user = JSON.parse(userData);
      this.userId = user.id;
    }
  }

  ngOnInit() {
    console.log('Modal initialized with symbol:', this.symbol);
    if (this.symbol) {
      this.loadStockData();
    }
  }

  ngOnChanges() {
    console.log('Modal symbol changed to:', this.symbol, 'isOpen:', this.isOpen);
    if (this.isOpen && this.symbol) {
      this.loadStockData();
      this.loadUserBalance();
      this.checkWatchlistStatus();
      this.quantity = 1;
      this.limitPrice = null;
      this.actionError = '';
      this.actionSuccess = '';
    }
  }

  ngOnDestroy() {
    // ApexCharts handles cleanup automatically
  }

  loadStockData() {
    console.log('Loading stock data for:', this.symbol);
    this.loading = true;
    this.error = '';

    // Load stock details
    this.stockDetailService.getStockDetails(this.symbol).subscribe({
      next: (data) => {
        console.log('Stock details loaded:', data);
        this.stockDetail = data;
        this.loading = false;
        this.cdr.detectChanges();
      },
      error: (err) => {
        console.error('Failed to load stock details:', err);
        this.error = 'Failed to load stock details: ' + (err.message || 'Unknown error');
        this.loading = false;
        this.cdr.detectChanges();
      }
    });

    // Load market depth
    this.stockDetailService.getMarketDepth(this.symbol).subscribe({
      next: (data) => {
        console.log('Market depth loaded:', data);
        this.marketDepth = data;
        this.cdr.detectChanges();
      },
      error: (err) => console.error('Market depth error:', err)
    });

    // Load historical data
    this.loadHistoricalData();
  }

  loadHistoricalData() {
    this.stockDetailService.getHistoricalData(this.symbol, this.selectedPeriod).subscribe({
      next: (data) => {
        console.log('Historical data received:', data);
        this.updateChart(data);
      },
      error: (err) => console.error('Historical data error:', err)
    });
  }

  updateChart(data: HistoricalData[]) {
    console.log('Updating chart with data:', data);
    
    if (!data || data.length === 0) {
      console.log('No data to display');
      return;
    }

    // Format data based on chart type
    if (this.chartType === 'candlestick') {
      const chartData = data.map((d: any) => {
        // Use timestamp if available (intraday), otherwise use date
        const timestamp = d.timestamp ? new Date(d.timestamp).getTime() : new Date(d.date).getTime();
        const open = typeof d.open === 'number' ? d.open : parseFloat(String(d.open));
        const high = typeof d.high === 'number' ? d.high : parseFloat(String(d.high));
        const low = typeof d.low === 'number' ? d.low : parseFloat(String(d.low));
        const close = typeof d.close === 'number' ? d.close : parseFloat(String(d.close));
        
        return {
          x: timestamp,
          y: [open, high, low, close]
        };
      });

      this.chartOptions = {
        ...this.chartOptions,
        chart: {
          ...this.chartOptions.chart,
          type: 'candlestick'
        },
        series: [{
          name: this.symbol,
          data: chartData
        }],
        stroke: {
          width: 2
        }
      };
    } else {
      // Line chart - use close price
      const chartData = data.map((d: any) => {
        const timestamp = d.timestamp ? new Date(d.timestamp).getTime() : new Date(d.date).getTime();
        const close = typeof d.close === 'number' ? d.close : parseFloat(String(d.close));
        
        return {
          x: timestamp,
          y: close
        };
      });

      this.chartOptions = {
        ...this.chartOptions,
        chart: {
          ...this.chartOptions.chart,
          type: 'line'
        },
        series: [{
          name: this.symbol,
          data: chartData
        }],
        stroke: {
          curve: 'smooth',
          width: 3
        }
      };
    }

    console.log('Formatted chart data');
    this.cdr.detectChanges();
  }

  changePeriod(period: string) {
    this.selectedPeriod = period;
    this.loadHistoricalData();
  }

  changeChartType(type: 'candlestick' | 'line') {
    this.chartType = type;
    this.loadHistoricalData(); // Reload to reformat data
  }

  onClose() {
    this.close.emit();
  }

  onViewFullDetails() {
    this.viewFullDetails.emit(this.symbol);
  }

  formatPrice(num: number | undefined): string {
    if (num === undefined || num === null) return '-';
    return '₹' + num.toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
  }

  formatNumber(num: number | undefined): string {
    if (num === undefined || num === null) return '-';
    return num.toLocaleString('en-IN', { maximumFractionDigits: 2 });
  }

  formatVolume(num: number | undefined): string {
    if (num === undefined || num === null) return '-';
    if (num >= 10000000) {
      return (num / 10000000).toFixed(2) + ' Cr';
    } else if (num >= 100000) {
      return (num / 100000).toFixed(2) + ' L';
    } else if (num >= 1000) {
      return (num / 1000).toFixed(2) + ' K';
    }
    return num.toString();
  }

  getChangeClass(): string {
    if (!this.stockDetail) return '';
    return this.stockDetail.change >= 0 ? 'positive' : 'negative';
  }

  // Handle backdrop click
  onBackdropClick(event: MouseEvent) {
    if ((event.target as HTMLElement).classList.contains('modal-overlay')) {
      this.onClose();
    }
  }

  // Buy/Sell/Watchlist Methods
  setActiveTab(tab: 'BUY' | 'SELL') {
    this.activeTab = tab;
    this.quantity = 1;
    this.actionError = '';
    this.actionSuccess = '';
    this.calculateTotalCost();
  }

  setOrderType(type: 'MARKET' | 'LIMIT') {
    this.orderType = type;
    if (type === 'MARKET') {
      this.limitPrice = null;
    }
    this.calculateTotalCost();
  }

  calculateTotalCost() {
    if (!this.stockDetail || !this.quantity || this.quantity <= 0) {
      this.totalCost = 0;
      return;
    }

    const price = this.orderType === 'LIMIT' && this.limitPrice 
      ? this.limitPrice 
      : this.stockDetail.currentPrice;
    
    this.totalCost = price * this.quantity;
  }

  onBuy() {
    this.actionError = '';
    this.actionSuccess = '';

    if (!this.quantity || this.quantity <= 0) {
      this.actionError = 'Please enter a valid quantity';
      return;
    }

    if (this.orderType === 'LIMIT' && (!this.limitPrice || this.limitPrice <= 0)) {
      this.actionError = 'Please enter a valid limit price';
      return;
    }

    if (!this.stockDetail) return;

    this.isProcessing = true;

    const orderRequest: OrderRequest = {
      userId: this.userId,
      symbol: this.symbol,
      companyName: this.stockDetail.name,
      quantity: this.quantity,
      orderType: this.orderType,
      action: 'BUY',
      limitPrice: this.limitPrice || undefined,
      currentPrice: this.stockDetail.currentPrice
    };

    this.orderService.placeOrder(orderRequest).subscribe({
      next: (order) => {
        this.isProcessing = false;
        if (order.status === 'EXECUTED') {
          this.actionSuccess = `Order executed! Bought ${this.quantity} shares at ₹${order.executedPrice}`;
        } else {
          this.actionSuccess = `${this.orderType} order placed successfully!`;
        }
        this.quantity = 1;
        this.limitPrice = null;
        this.calculateTotalCost();
        this.cdr.detectChanges();
        
        // Close success message after 3 seconds
        setTimeout(() => {
          this.actionSuccess = '';
          this.cdr.detectChanges();
        }, 3000);
      },
      error: (err) => {
        this.isProcessing = false;
        this.actionError = err.error?.message || 'Failed to place order. Please try again.';
        this.cdr.detectChanges();
      }
    });
  }

  onSell() {
    this.actionError = '';
    this.actionSuccess = '';

    if (!this.quantity || this.quantity <= 0) {
      this.actionError = 'Please enter a valid quantity';
      return;
    }

    if (this.orderType === 'LIMIT' && (!this.limitPrice || this.limitPrice <= 0)) {
      this.actionError = 'Please enter a valid limit price';
      return;
    }

    if (!this.stockDetail) return;

    this.isProcessing = true;

    const orderRequest: OrderRequest = {
      userId: this.userId,
      symbol: this.symbol,
      companyName: this.stockDetail.name,
      quantity: this.quantity,
      orderType: this.orderType,
      action: 'SELL',
      limitPrice: this.limitPrice || undefined,
      currentPrice: this.stockDetail.currentPrice
    };

    this.orderService.placeOrder(orderRequest).subscribe({
      next: (order) => {
        this.isProcessing = false;
        if (order.status === 'EXECUTED') {
          this.actionSuccess = `Order executed! Sold ${this.quantity} shares at ₹${order.executedPrice}`;
        } else {
          this.actionSuccess = `${this.orderType} order placed successfully!`;
        }
        this.quantity = 1;
        this.limitPrice = null;
        this.calculateTotalCost();
        this.cdr.detectChanges();
        
        // Close success message after 3 seconds
        setTimeout(() => {
          this.actionSuccess = '';
          this.cdr.detectChanges();
        }, 3000);
      },
      error: (err) => {
        this.isProcessing = false;
        this.actionError = err.error?.message || 'Failed to place order. Please try again.';
        this.cdr.detectChanges();
      }
    });
  }

  toggleWatchlist() {
    if (!this.stockDetail) return;

    this.isProcessing = true;
    this.actionError = '';
    this.actionSuccess = '';

    if (this.isInWatchlist) {
      // Remove from watchlist
      this.watchlistService.removeFromWatchlist(this.userId, this.symbol).subscribe({
        next: () => {
          this.isInWatchlist = false;
          this.isProcessing = false;
          this.actionSuccess = 'Removed from watchlist';
          this.cdr.detectChanges();
          
          setTimeout(() => {
            this.actionSuccess = '';
            this.cdr.detectChanges();
          }, 2000);
        },
        error: (err) => {
          this.isProcessing = false;
          this.actionError = 'Failed to remove from watchlist';
          this.cdr.detectChanges();
        }
      });
    } else {
      // Add to watchlist
      this.watchlistService.addToWatchlist({
        userId: this.userId,
        symbol: this.symbol,
        companyName: this.stockDetail.name
      }).subscribe({
        next: () => {
          this.isInWatchlist = true;
          this.isProcessing = false;
          this.actionSuccess = 'Added to watchlist';
          this.cdr.detectChanges();
          
          setTimeout(() => {
            this.actionSuccess = '';
            this.cdr.detectChanges();
          }, 2000);
        },
        error: (err) => {
          this.isProcessing = false;
          this.actionError = 'Failed to add to watchlist';
          this.cdr.detectChanges();
        }
      });
    }
  }

  checkWatchlistStatus() {
    if (!this.userId) return;
    
    this.watchlistService.getWatchlist(this.userId).subscribe({
      next: (watchlist) => {
        this.isInWatchlist = watchlist.some((item: any) => item.symbol === this.symbol);
        this.cdr.detectChanges();
      },
      error: (err) => console.error('Failed to check watchlist status:', err)
    });
  }

  loadUserBalance() {
    if (!this.userId) return;
    
    this.watchlistService.getBalance(this.userId).subscribe({
      next: (response) => {
        this.availableBalance = response.balance || 0;
        this.cdr.detectChanges();
      },
      error: (err) => console.error('Failed to load balance:', err)
    });
  }
}

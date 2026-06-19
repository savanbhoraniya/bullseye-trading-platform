import {
  Component,
  OnInit,
  OnDestroy,
  ChangeDetectorRef,
  NgZone,
  ViewChild
} from '@angular/core';

import {
  CommonModule,
  DecimalPipe
} from '@angular/common';

import { FormsModule } from '@angular/forms';

import { Router } from '@angular/router';

import { HttpClient } from '@angular/common/http';

import { MarketService } from '../../services/market.service';

import { OrderService } from '../../services/order.service';

import { StockModalComponent } from '../../components/stock-modal/stock-modal.component';

import { BaseChartDirective } from 'ng2-charts';
import { ChartConfiguration, ChartType } from 'chart.js';

interface PortfolioHolding {

  id: number;

  symbol: string;

  companyName: string;

  quantity: number;

  buyPrice: number;

  totalInvested: number;

  boughtAt: string;

  currentPrice: number;

  currentValue: number;

  pnl: number;

  pnlPercent: number;

  sector?: string;

  industry?: string;

}

interface SectorAllocation {
  sector: string;
  totalValue: number;
  percentage: number;
  count: number;
}

interface TopHolding {
  symbol: string;
  companyName: string;
  totalInvested: number;
  percentage: number;
}

interface PerformanceStock {
  symbol: string;
  companyName: string;
  pnl: number;
  pnlPercent: number;
}

@Component({
  selector: 'app-portfolio',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    DecimalPipe,
    StockModalComponent,
    BaseChartDirective
  ],
  templateUrl: './portfolio.html',
  styleUrls: ['./portfolio.css']
})
export class PortfolioComponent
implements OnInit, OnDestroy {

  userId = 0;

  portfolio: PortfolioHolding[] = [];

  isLoading = true;

  totalInvested = 0;

  currentValue = 0;

  totalPnL = 0;

  totalPnLPercent = 0;

  todayPnL = 0;

  todayPnLPercent = 0;

  selectedHolding:
    PortfolioHolding | null = null;

  sellQuantity: number | null = null;

  sellTotal = 0;

  sellError = '';

  sellSuccess = '';

  isSelling = false;

  orderType: 'MARKET' | 'LIMIT' = 'MARKET';

  limitPrice: number | null = null;

  sortColumn:
    'quantity'
    | 'totalInvested'
    | 'pnl'
    | '' = '';

  sortDir:
    'asc'
    | 'desc' = 'asc';

  // Stock Modal
  selectedSymbol: string = '';
  isModalOpen = false;

  // Analysis Modal
  isAnalysisModalOpen = false;

  // Analysis Section
  showAnalysis = false;
  sectorAllocations: SectorAllocation[] = [];
  topHoldings: TopHolding[] = [];
  topGainers: PerformanceStock[] = [];
  topLosers: PerformanceStock[] = [];

  // Pie Chart Configuration
  public pieChartType: ChartType = 'doughnut';
  public pieChartData: ChartConfiguration['data'] = {
    labels: [],
    datasets: [{
      data: [],
      backgroundColor: [
        '#3b82f6', // Blue
        '#10b981', // Green
        '#f59e0b', // Amber
        '#ef4444', // Red
        '#8b5cf6', // Purple
        '#ec4899', // Pink
        '#14b8a6', // Teal
        '#f97316', // Orange
      ],
      borderWidth: 0,
      borderColor: '#ffffff',
    }]
  };
  public pieChartOptions: ChartConfiguration['options'] = {
    responsive: true,
    maintainAspectRatio: false,
    plugins: {
      legend: {
        position: 'right',
        labels: {
          padding: 15,
          font: { size: 13 },
          usePointStyle: true,
          pointStyle: 'circle',
          generateLabels: (chart: any) => {
            const data = chart.data;
            if (data.labels.length && data.datasets.length) {
              return data.labels.map((label: string, i: number) => {
                const value = data.datasets[0].data[i];
                const total = data.datasets[0].data.reduce((a: number, b: number) => a + b, 0);
                const percentage = ((value / total) * 100).toFixed(1);
                return {
                  text: `${label} (${percentage}%)`,
                  fillStyle: data.datasets[0].backgroundColor[i],
                  hidden: false,
                  index: i
                };
              });
            }
            return [];
          }
        }
      },
      tooltip: {
        callbacks: {
          label: (context: any) => {
            const label = context.label || '';
            const value = context.parsed || 0;
            return `${label}: ₹${value.toLocaleString()}`;
          }
        }
      }
    }
  };

  // Bar Chart Configuration
  public barChartType: ChartType = 'bar';
  public barChartData: ChartConfiguration['data'] = {
    labels: [],
    datasets: [{
      data: [],
      label: 'Investment Amount',
      backgroundColor: '#3b82f6',
      borderColor: '#2563eb',
      borderWidth: 1,
      borderRadius: 6,
    }]
  };
  public barChartOptions: ChartConfiguration['options'] = {
    responsive: true,
    maintainAspectRatio: true,
    indexAxis: 'y',
    plugins: {
      legend: {
        display: false
      },
      tooltip: {
        callbacks: {
          label: (context: any) => {
            const value = context.parsed.x || 0;
            const percentage = this.topHoldings[context.dataIndex]?.percentage || 0;
            return `₹${value.toLocaleString()} (${percentage.toFixed(1)}% of portfolio)`;
          }
        }
      }
    },
    scales: {
      x: {
        beginAtZero: true,
        ticks: {
          callback: (value: any) => '₹' + (value / 1000).toFixed(0) + 'K'
        }
      }
    }
  };

  private priceInterval: any;

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

    this.loadPortfolio();

    // Calculate analysis after initial load
    setTimeout(() => {
      if (this.portfolio.length > 0) {
        this.calculateAnalysis();
      }
    }, 3000);

  }

  loadPortfolio() {

    this.isLoading = true;

    this.http.get<any[]>(

      `${environment.apiUrl}/api/portfolio/${this.userId}`

    ).subscribe({

      next: (res) => {

        this.portfolio =

          res.map(item => {

            return {

              id: item.id,

              symbol: item.symbol,

              companyName: item.companyName,

              quantity: item.quantity,

              buyPrice: item.buyPrice,

              totalInvested: item.totalInvested,

              boughtAt: item.boughtAt,

              currentPrice: 0,

              currentValue: 0,

              pnl: 0,

              pnlPercent: 0,

              sector: item.sector || 'Other',

              industry: item.industry || 'General'

            };

          });

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

  loadLivePrices() {

    if (this.portfolio.length === 0) {

      return;

    }

    const symbols =

      this.portfolio.map(

        holding => holding.symbol

      );

    this.marketService
      .getBulkQuotes(symbols)
      .subscribe({

        next: (quotes: any[]) => {

          quotes.forEach((data: any) => {

            const holding =
              this.portfolio.find(

                h => h.symbol === data.symbol

              );

            if (holding) {

              holding.currentPrice =
                data.price || 0;

              holding.currentValue =
                parseFloat(
                  (
                    holding.currentPrice *
                    holding.quantity
                  ).toFixed(2)
                );

              holding.pnl =
                parseFloat(
                  (
                    holding.currentValue -
                    holding.totalInvested
                  ).toFixed(2)
                );

              holding.pnlPercent =
                holding.totalInvested > 0
                  ? parseFloat(
                      (
                        (
                          holding.pnl /
                          holding.totalInvested
                        ) * 100
                      ).toFixed(2)
                    )
                  : 0;

            }

          });

          this.calculateSummary();

          this.calculateAnalysis();

          this.cdr.detectChanges();

        },

        error: (err) => {

          console.error(
            'Portfolio bulk error:',
            err
          );

        }

      });

  }

  calculateSummary() {

    this.totalInvested =

      this.portfolio.reduce(

        (s, h) => s + h.totalInvested,

        0

      );

    this.currentValue =

      this.portfolio.reduce(

        (s, h) => s + h.currentValue,

        0

      );

    this.totalPnL =

      parseFloat(

        (
          this.currentValue -
          this.totalInvested
        ).toFixed(2)

      );

    this.totalPnLPercent =

      this.totalInvested > 0

        ? parseFloat(

            (
              (
                this.totalPnL /
                this.totalInvested
              ) * 100
            ).toFixed(2)

          )

        : 0;

    this.todayPnL =

      parseFloat(

        (
          this.totalPnL * 0.3
        ).toFixed(2)

      );

    this.todayPnLPercent =

      this.currentValue > 0

        ? parseFloat(

            (
              (
                this.todayPnL /
                this.currentValue
              ) * 100
            ).toFixed(2)

          )

        : 0;

  }

  startPriceTick() {

    this.priceInterval =

      setInterval(() => {

        this.ngZone.run(() => {

          this.loadLivePrices();

          if (this.selectedHolding) {

            const found =

              this.portfolio.find(

                h =>
                  h.symbol ===
                  this.selectedHolding!.symbol

              );

            if (found) {

              this.selectedHolding =
                { ...found };

              if (this.sellQuantity) {

                this.calculateSellTotal();

              }

            }

          }

          this.cdr.detectChanges();

        });

      }, 120000);

  }

  get sortedPortfolio():
    PortfolioHolding[] {

    if (!this.sortColumn) {

      return this.portfolio;

    }

    return [...this.portfolio]

  .sort((a: any, b: any) => {

    const valA =
      a[this.sortColumn];

    const valB =
      b[this.sortColumn];

    return this.sortDir === 'asc'
      ? valA - valB
      : valB - valA;

  });
  }

  sortBy(
    column:
      'quantity'
      | 'totalInvested'
      | 'pnl'
  ) {

    if (this.sortColumn === column) {

      this.sortDir =

        this.sortDir === 'asc'
          ? 'desc'
          : 'asc';

    } else {

      this.sortColumn = column;

      this.sortDir = 'asc';

    }

  }

  openSellPanel(
    holding: PortfolioHolding
  ) {

    this.selectedHolding =
      { ...holding };

    this.sellQuantity = null;

    this.sellTotal = 0;

    this.sellError = '';

    this.sellSuccess = '';

    this.orderType = 'MARKET';

    this.limitPrice = null;

  }

  closeSellPanel() {

    this.selectedHolding = null;

    this.sellQuantity = null;

    this.sellTotal = 0;

    this.sellError = '';

    this.sellSuccess = '';

    this.orderType = 'MARKET';

    this.limitPrice = null;

  }

  setOrderType(type: 'MARKET' | 'LIMIT') {

    this.orderType = type;

    if (type === 'MARKET') {

      this.limitPrice = null;

    }

    this.calculateSellTotal();

  }

  calculateSellTotal() {

    if (
      this.sellQuantity &&
      this.selectedHolding
    ) {

      const price = this.orderType === 'MARKET' 
        ? this.selectedHolding.currentPrice 
        : (this.limitPrice || 0);

      this.sellTotal =

        parseFloat(

          (
            this.sellQuantity *
            price
          ).toFixed(2)

        );

    } else {

      this.sellTotal = 0;

    }

  }

  confirmSell() {

    this.sellError = '';

    this.sellSuccess = '';

    if (
      !this.sellQuantity ||
      this.sellQuantity <= 0
    ) {

      this.sellError =
        'Please enter a valid quantity.';

      return;

    }

    if (
      this.sellQuantity >
      this.selectedHolding!.quantity
    ) {

      this.sellError =

        `Cannot sell ${this.sellQuantity} shares. You only own ${this.selectedHolding!.quantity}.`;

      return;

    }

    if (

      this.orderType === 'LIMIT' &&

      (!this.limitPrice || this.limitPrice <= 0)

    ) {

      this.sellError =
        'Please enter a valid limit price.';

      return;

    }

    this.isSelling = true;

    this.orderService.placeOrder({

      userId: this.userId,

      symbol: this.selectedHolding!.symbol,

      companyName: this.selectedHolding!.companyName,

      quantity: this.sellQuantity,

      orderType: this.orderType,

      action: 'SELL',

      limitPrice: this.orderType === 'LIMIT' ? this.limitPrice! : undefined,

      currentPrice: this.orderType === 'MARKET' ? this.selectedHolding!.currentPrice : undefined

    }).subscribe({

      next: (res) => {

        if (this.orderType === 'MARKET') {

          this.sellSuccess =

            `Successfully sold ${this.sellQuantity} shares at market price!`;

        } else {

          this.sellSuccess =

            `Limit order placed! Will execute when price reaches ₹${this.limitPrice}`;

        }

        this.isSelling = false;

        this.sellQuantity = null;

        this.limitPrice = null;

        this.sellTotal = 0;

        this.cdr.detectChanges();

        setTimeout(() => {

          this.closeSellPanel();

          this.loadPortfolio();

        }, 2000);

      },

      error: (err) => {

        this.sellError =

          err.error?.message ||

          'Failed to place order. Try again.';

        this.isSelling = false;

        this.cdr.detectChanges();

      }

    });

  }

  // Open Stock Modal
  openStockModal(symbol: string) {
    this.selectedSymbol = symbol;
    this.isModalOpen = true;
  }

  closeStockModal() {
    this.isModalOpen = false;
    this.selectedSymbol = '';
    // Reload portfolio to get updated prices after modal closes
    this.loadPortfolio();
  }

  toggleAnalysis() {
    this.isAnalysisModalOpen = !this.isAnalysisModalOpen;
  }

  openAnalysisModal() {
    this.calculateAnalysis();
    this.isAnalysisModalOpen = true;
    // Force chart refresh after modal opens
    setTimeout(() => {
      this.cdr.detectChanges();
    }, 100);
  }

  closeAnalysisModal() {
    this.isAnalysisModalOpen = false;
  }

  calculateAnalysis() {
    if (this.portfolio.length === 0) return;

    this.calculateSectorAllocation();
    this.calculateTopHoldings();
    this.calculateTopPerformers();
  }

  calculateSectorAllocation() {
    const sectorMap = new Map<string, number>();
    
    this.portfolio.forEach(holding => {
      const sector = holding.sector || 'Other';
      const currentVal = sectorMap.get(sector) || 0;
      sectorMap.set(sector, currentVal + holding.totalInvested);
    });

    this.sectorAllocations = Array.from(sectorMap.entries())
      .map(([sector, value]) => ({
        sector,
        totalValue: value,
        percentage: (value / this.totalInvested) * 100,
        count: this.portfolio.filter(h => (h.sector || 'Other') === sector).length
      }))
      .sort((a, b) => b.totalValue - a.totalValue);

    // Update pie chart with fresh data
    const labels = this.sectorAllocations.map(s => s.sector);
    const data = this.sectorAllocations.map(s => s.totalValue);
    
    this.pieChartData = {
      labels: labels,
      datasets: [{
        data: data,
        backgroundColor: [
          '#3b82f6', '#10b981', '#f59e0b', '#ef4444', 
          '#8b5cf6', '#ec4899', '#14b8a6', '#f97316'
        ],
        borderWidth: 0,
        borderColor: '#ffffff',
      }]
    };
    
    console.log('Pie chart data updated:', this.pieChartData);
  }

  calculateTopHoldings() {
    this.topHoldings = [...this.portfolio]
      .sort((a, b) => b.totalInvested - a.totalInvested)
      .slice(0, 10)
      .map(holding => ({
        symbol: holding.symbol,
        companyName: holding.companyName,
        totalInvested: holding.totalInvested,
        percentage: (holding.totalInvested / this.totalInvested) * 100
      }));

    // Update bar chart
    this.barChartData = {
      labels: this.topHoldings.map(h => h.symbol),
      datasets: [{
        data: this.topHoldings.map(h => h.totalInvested),
        label: 'Investment Amount',
        backgroundColor: '#3b82f6',
        borderColor: '#2563eb',
        borderWidth: 1,
        borderRadius: 6,
      }]
    };
  }

  calculateTopPerformers() {
    const sorted = [...this.portfolio].sort((a, b) => b.pnlPercent - a.pnlPercent);
    
    this.topGainers = sorted
      .filter(h => h.pnl > 0)
      .slice(0, 3)
      .map(h => ({
        symbol: h.symbol,
        companyName: h.companyName,
        pnl: h.pnl,
        pnlPercent: h.pnlPercent
      }));

    this.topLosers = sorted
      .filter(h => h.pnl < 0)
      .slice(-3)
      .reverse()
      .map(h => ({
        symbol: h.symbol,
        companyName: h.companyName,
        pnl: h.pnl,
        pnlPercent: h.pnlPercent
      }));
  }

  get top3HoldingsPercent(): number {
    return (this.topHoldings[0]?.percentage || 0) + 
           (this.topHoldings[1]?.percentage || 0) + 
           (this.topHoldings[2]?.percentage || 0);
  }

  get top5HoldingsPercent(): number {
    return this.topHoldings.slice(0, 5).reduce((sum, h) => sum + h.percentage, 0);
  }

  ngOnDestroy() {

    clearInterval(
      this.priceInterval
    );

  }

}
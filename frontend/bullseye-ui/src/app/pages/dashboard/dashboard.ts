import {
  Component,
  OnInit,
  OnDestroy,
  AfterViewInit,
  ViewChild,
  ElementRef,
  NgZone,
  ChangeDetectorRef
} from '@angular/core';

import {
  CommonModule,
  DecimalPipe
} from '@angular/common';

import {
  Router,
  RouterModule
} from '@angular/router';

import { HttpClient } from '@angular/common/http';

import { MarketService }
from '../../services/market.service';

import { StockModalComponent } from '../../components/stock-modal/stock-modal.component';

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

interface IndexData {

  name: string;

  tvSymbol: string;

  yahooSymbol: string;

  price: number;

  change: number;

  percent: number;

  open: number;

  high: number;

  low: number;

  prevClose: number;

  high52w: number;

  low52w: number;

  basePrice: number;

}

interface StockMover {

  symbol: string;

  name: string;

  price: number;

  change: number;

}

interface SectorData {
  name: string;
  symbol: string;
  change: number;
  price: number;
}

interface PortfolioSummary {
  totalValue: number;
  invested: number;
  pnl: number;
  pnlPercent: number;
  todayPnL: number;
}

@Component({
  selector: 'app-dashboard',
  standalone: true,
  imports: [
    CommonModule,
    RouterModule,
    DecimalPipe,
    StockModalComponent,
    NgApexchartsModule
  ],
  templateUrl: './dashboard.html',
  styleUrls: ['./dashboard.css']
})
export class DashboardComponent
implements OnInit, AfterViewInit, OnDestroy {

  @ViewChild('tvContainer')
  tvContainer!: ElementRef;

  user: any;

  indices: IndexData[] = [

    {
      name: 'NIFTY 50',
      tvSymbol: 'NSE:NIFTY',
      yahooSymbol: '^NSEI',
      price: 0,
      change: 0,
      percent: 0,
      open: 0,
      high: 0,
      low: 0,
      prevClose: 0,
      high52w: 24198.85,
      low52w: 19250.00,
      basePrice: 0
    },

    {
      name: 'BANK NIFTY',
      tvSymbol: 'NSE:BANKNIFTY',
      yahooSymbol: '^NSEBANK',
      price: 0,
      change: 0,
      percent: 0,
      open: 0,
      high: 0,
      low: 0,
      prevClose: 0,
      high52w: 52207.25,
      low52w: 42000.00,
      basePrice: 0
    },

    {
      name: 'SENSEX',
      tvSymbol: 'BSE:SENSEX',
      yahooSymbol: '^BSESN',
      price: 0,
      change: 0,
      percent: 0,
      open: 0,
      high: 0,
      low: 0,
      prevClose: 0,
      high52w: 85978.25,
      low52w: 63000.00,
      basePrice: 0
    },

    {
      name: 'NIFTY IT',
      tvSymbol: 'NSE:CNXIT',
      yahooSymbol: '^CNXIT',
      price: 0,
      change: 0,
      percent: 0,
      open: 0,
      high: 0,
      low: 0,
      prevClose: 0,
      high52w: 42000.00,
      low52w: 28000.00,
      basePrice: 0
    },

    {
      name: 'NIFTY PHARMA',
      tvSymbol: 'NSE:CNXPHARMA',
      yahooSymbol: '^CNXPHARMA',
      price: 0,
      change: 0,
      percent: 0,
      open: 0,
      high: 0,
      low: 0,
      prevClose: 0,
      high52w: 22000.00,
      low52w: 16000.00,
      basePrice: 0
    },

    {
      name: 'NIFTY AUTO',
      tvSymbol: 'NSE:CNXAUTO',
      yahooSymbol: '^CNXAUTO',
      price: 0,
      change: 0,
      percent: 0,
      open: 0,
      high: 0,
      low: 0,
      prevClose: 0,
      high52w: 25000.00,
      low52w: 18000.00,
      basePrice: 0
    }

  ];

  sectors: SectorData[] = [];

  portfolioSummary: PortfolioSummary = {
    totalValue: 0,
    invested: 0,
    pnl: 0,
    pnlPercent: 0,
    todayPnL: 0
  };

  marketNews: any[] = [];

  selectedIndex: IndexData =
    { ...this.indices[0] };

  // Learn with BullsEye - Courses by Category
  selectedLearnTab = 'Stock Market';
  
  learnCourses: { [key: string]: any[] } = {
    'Stock Market': [
      {
        title: 'Introduction to Stock Market',
        description: 'Learn the basics of stock market, how it works, and key terminology.',
        duration: '2 hours',
        level: 'BEGINNER',
        enrolled: '45.2K',
        url: 'https://www.investopedia.com/articles/basics/06/invest1000.asp'
      },
      {
        title: 'How Does the Stock Market Work?',
        description: 'Demystify the mechanics of the market! Learn how the stock market operates in India.',
        duration: '2 hours',
        level: 'INTERMEDIATE',
        enrolled: '24.9K',
        url: 'https://www.nseindia.com/education/content/start_intro_module1_chapter1'
      },
      {
        title: 'Technical Analysis Fundamentals',
        description: 'Master chart patterns, indicators, and technical analysis tools for better trading decisions.',
        duration: '3 hours',
        level: 'ADVANCED',
        enrolled: '18.5K',
        url: 'https://www.investopedia.com/terms/t/technicalanalysis.asp'
      }
    ],
    'Investment': [
      {
        title: 'Why Invest in Stock Market?',
        description: 'Understand how investing offers opportunities for financial growth and wealth creation.',
        duration: '1 hour',
        level: 'BEGINNER',
        enrolled: '66.2K',
        url: 'https://www.investopedia.com/articles/basics/11/3-s-simple-investing.asp'
      },
      {
        title: 'How To Start Investing?',
        description: 'Complete guide from setting goals to choosing investments and executing orders.',
        duration: '< 1 hour',
        level: 'ADVANCED',
        enrolled: '12.3K',
        url: 'https://www.investor.gov/introduction-investing/getting-started/what-investing'
      },
      {
        title: 'Value Investing Strategies',
        description: 'Learn Warren Buffett\'s approach to finding undervalued stocks with strong fundamentals.',
        duration: '2.5 hours',
        level: 'INTERMEDIATE',
        enrolled: '22.8K',
        url: 'https://www.investopedia.com/terms/v/valueinvesting.asp'
      }
    ],
    'Trading': [
      {
        title: 'Day Trading Basics',
        description: 'Learn intraday trading strategies, risk management, and market timing techniques.',
        duration: '2 hours',
        level: 'INTERMEDIATE',
        enrolled: '31.4K',
        url: 'https://www.investopedia.com/articles/trading/05/011705.asp'
      },
      {
        title: 'Options Trading Masterclass',
        description: 'Master call and put options, strategies like straddles, spreads, and hedging techniques.',
        duration: '4 hours',
        level: 'ADVANCED',
        enrolled: '15.7K',
        url: 'https://www.investopedia.com/options-basics-tutorial-4583012'
      },
      {
        title: 'Swing Trading Strategies',
        description: 'Capture short to medium-term gains using technical analysis and market momentum.',
        duration: '2.5 hours',
        level: 'INTERMEDIATE',
        enrolled: '19.3K',
        url: 'https://www.investopedia.com/articles/trading/02/090302.asp'
      }
    ],
    'Mutual Fund': [
      {
        title: 'Mutual Funds 101',
        description: 'Understand what mutual funds are, types of funds, and how they work in India.',
        duration: '1.5 hours',
        level: 'BEGINNER',
        enrolled: '52.6K',
        url: 'https://www.investopedia.com/terms/m/mutualfund.asp'
      },
      {
        title: 'SIP Investment Strategy',
        description: 'Learn systematic investment planning, rupee cost averaging, and long-term wealth building.',
        duration: '1 hour',
        level: 'BEGINNER',
        enrolled: '48.9K',
        url: 'https://www.amfiindia.com/investor-corner/knowledge-center/what-is-sip.html'
      },
      {
        title: 'Choosing the Right Mutual Fund',
        description: 'Compare equity, debt, and hybrid funds. Learn to analyze fund performance and expense ratios.',
        duration: '2 hours',
        level: 'INTERMEDIATE',
        enrolled: '27.1K',
        url: 'https://www.moneycontrol.com/mf/mf-basics/how-to-choose-a-mutual-fund'
      }
    ],
    'Personal Finance': [
      {
        title: 'Budgeting and Saving',
        description: 'Master the 50/30/20 rule, create emergency funds, and build healthy financial habits.',
        duration: '1.5 hours',
        level: 'BEGINNER',
        enrolled: '71.3K',
        url: 'https://www.investopedia.com/personal-finance-4427760'
      },
      {
        title: 'Tax Planning in India',
        description: 'Understand Section 80C, tax-saving investments, and how to optimize your tax liability.',
        duration: '2 hours',
        level: 'INTERMEDIATE',
        enrolled: '34.5K',
        url: 'https://www.incometax.gov.in/iec/foportal/'
      },
      {
        title: 'Retirement Planning',
        description: 'Plan for your golden years with PPF, NPS, EPF, and retirement corpus calculation.',
        duration: '2.5 hours',
        level: 'ADVANCED',
        enrolled: '28.7K',
        url: 'https://www.investopedia.com/retirement-planning-4689695'
      }
    ],
    'Alternative Investment': [
      {
        title: 'Real Estate Investment',
        description: 'Learn about REITs, property investment strategies, and real estate market analysis.',
        duration: '2 hours',
        level: 'INTERMEDIATE',
        enrolled: '23.4K',
        url: 'https://www.investopedia.com/terms/r/realestate.asp'
      },
      {
        title: 'Gold and Commodities',
        description: 'Invest in gold ETFs, sovereign gold bonds, and commodity futures for portfolio diversification.',
        duration: '1.5 hours',
        level: 'BEGINNER',
        enrolled: '19.8K',
        url: 'https://www.investopedia.com/articles/basics/08/invest-in-gold.asp'
      },
      {
        title: 'Cryptocurrency Basics',
        description: 'Understand blockchain, Bitcoin, Ethereum, and how to invest in digital assets safely.',
        duration: '3 hours',
        level: 'ADVANCED',
        enrolled: '41.2K',
        url: 'https://www.investopedia.com/terms/c/cryptocurrency.asp'
      }
    ]
  };

  marketStocks = [
    { symbol: 'RELIANCE', name: 'Reliance Industries' },
    { symbol: 'TCS', name: 'TCS' },
    { symbol: 'HDFCBANK', name: 'HDFC Bank' },
    { symbol: 'INFY', name: 'Infosys' },
    { symbol: 'ICICIBANK', name: 'ICICI Bank' },
    { symbol: 'SBIN', name: 'State Bank of India' },
    { symbol: 'LT', name: 'Larsen & Toubro' },
    { symbol: 'AXISBANK', name: 'Axis Bank' },
    { symbol: 'BAJFINANCE', name: 'Bajaj Finance' },
    { symbol: 'MARUTI', name: 'Maruti Suzuki' },
    { symbol: 'KOTAKBANK', name: 'Kotak Mahindra Bank' },
    { symbol: 'WIPRO', name: 'Wipro' },
    { symbol: 'ULTRACEMCO', name: 'UltraTech Cement' },
    { symbol: 'SUNPHARMA', name: 'Sun Pharma' },
    { symbol: 'CIPLA', name: 'Cipla' },
    { symbol: 'ADANIPORTS', name: 'Adani Ports' },
    { symbol: 'TATAMOTORS', name: 'Tata Motors' },
    { symbol: 'M&M', name: 'Mahindra & Mahindra' },
    { symbol: 'APOLLOHOSP', name: 'Apollo Hospitals' },
    { symbol: 'EICHERMOT', name: 'Eicher Motors' }
  ];

  allStocks: any[] = [];

  topGainers: StockMover[] = [];

  topLosers: StockMover[] = [];

  trendingStocks: StockMover[] = []; // New: Trending stocks

  private priceInterval: any;
  
  // ApexCharts for indices
  indexChartType: 'candlestick' | 'line' = 'candlestick';
  indexSelectedPeriod: string = '1M';
  indexPeriods = ['1D', '1W', '1M', '6M', '1Y', '5Y'];
  
  public indexChartOptions: Partial<ChartOptions> = {
    series: [{
      name: 'Price',
      data: []
    }],
    chart: {
      type: 'candlestick',
      height: 400,
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

  // Stock Modal
  isStockModalOpen = false;
  selectedStockSymbol = '';

  constructor(
    private router: Router,
    private ngZone: NgZone,
    private marketService: MarketService,
    private http: HttpClient,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit() {

    const data =
      localStorage.getItem('user');

    if (!data) {

      this.router.navigate(['/login']);

      return;

    }

    this.user = JSON.parse(data);

    this.loadAllMarketData();
    
    this.loadPortfolioSummary();
    
    this.loadMarketNews();

  }

  ngAfterViewInit() {

    setTimeout(() => {

      this.loadWidget(
        this.selectedIndex.yahooSymbol  // Use Yahoo symbol
      );

      this.startPriceTick();

    }, 200);

    // Trigger change detection after view init
    this.cdr.detectChanges();

  }

  loadAllMarketData() {

    const symbols = [
      '^NSEI',
      '^NSEBANK',
      '^BSESN',
      '^CNXIT',
      '^CNXPHARMA',
      '^CNXAUTO',
      '^CNXFMCG',
      '^CNXMETAL',
      '^CNXENERGY',
      '^CNXREALTY',
      'RELIANCE',
      'TCS',
      'HDFCBANK',
      'INFY',
      'ICICIBANK',
      'SBIN',
      'LT',
      'AXISBANK',
      'BAJFINANCE',
      'MARUTI',
      'KOTAKBANK',
      'WIPRO',
      'ULTRACEMCO',
      'SUNPHARMA',
      'CIPLA',
      'ADANIPORTS',
      'TATAMOTORS',
      'M&M',
      'APOLLOHOSP',
      'EICHERMOT'
    ];

    this.marketService
      .getBulkQuotes(symbols)
      .subscribe({

        next: (quotes: any[]) => {

          this.updateIndices(quotes);

          this.updateStocks(quotes);
          
          this.updateSectors(quotes);

          // Force change detection
          this.cdr.detectChanges();

        },

        error: (err) => {

          console.error(
            'Dashboard bulk error:',
            err
          );

        }

      });

  }

  updateIndices(quotes: any[]) {

    this.indices.forEach(index => {

      const data =
        quotes.find(

          q =>
            q.symbol ===
            index.yahooSymbol

        );

      if (data) {

        index.price =
          data.price || 0;

        index.change =
          data.change || 0;

        index.percent =
          data.percentChange || 0;

        index.open =
          data.open || 0;

        index.high =
          data.high || 0;

        index.low =
          data.low || 0;

        index.high52w =
          data.high52w || 0;

        index.low52w =
          data.low52w || 0;

        index.prevClose =
          parseFloat(
            (
              index.price -
              index.change
            ).toFixed(2)
          );

        index.basePrice =
          index.price;

      }

    });

    const found =
      this.indices.find(

        i =>
          i.name ===
          this.selectedIndex.name

      );

    if (found) {

      this.selectedIndex =
        { ...found };

    }

  }

  updateStocks(quotes: any[]) {

    this.allStocks = [];

    this.marketStocks.forEach(stock => {

      const data =
        quotes.find(

          q =>
            q.symbol ===
            stock.symbol

        );

      if (data) {

        this.allStocks.push({

          symbol:
            stock.symbol,

          name:
            stock.name,

          price:
            data.price || 0,

          change:
            data.percentChange || 0

        });

      }

    });

    this.updateMovers();

  }

  updateMovers() {

    this.topGainers =

      [...this.allStocks]

        .sort(

          (a, b) =>

            b.change - a.change

        )

        .slice(0, 5);

    this.topLosers =

      [...this.allStocks]

        .sort(

          (a, b) =>

            a.change - b.change

        )

        .slice(0, 5);

    // Get top 10 trending stocks (sorted by absolute % change)
    this.trendingStocks =

      [...this.allStocks]

        .sort(

          (a, b) =>

            Math.abs(b.change) - Math.abs(a.change)

        )

        .slice(0, 10);

  }

  loadWidget(symbol: string) {
    // Load historical data for the selected index using ApexCharts
    this.loadIndexHistoricalData(symbol, this.indexSelectedPeriod);
  }

  loadIndexHistoricalData(symbol: string, period: string) {
    console.log('Loading historical data:', { symbol, period, chartType: this.indexChartType });
    
    // Get historical data with specified period
    this.http.get<any[]>(`http://localhost:8081/api/stock/${symbol}/historical?period=${period}`)
      .subscribe({
        next: (data) => {
          console.log('Received data:', data?.length, 'points');
          
          if (!data || data.length === 0) {
            console.warn('No data received');
            return;
          }

          // Format data based on chart type
          if (this.indexChartType === 'candlestick') {
            const chartData = data.map((d: any) => {
              const timestamp = d.timestamp ? new Date(d.timestamp).getTime() : new Date(d.date).getTime();
              const open = typeof d.open === 'number' ? d.open : parseFloat(String(d.open));
              const high = typeof d.high === 'number' ? d.high : parseFloat(String(d.high));
              const low = typeof d.low === 'number' ? d.low : parseFloat(String(d.low));
              const close = typeof d.close === 'number' ? d.close : parseFloat(String(d.close));
              
              return {
                x: timestamp,
                y: [open, high, low, close]
              };
            }).filter(d => !isNaN(d.x) && d.y.every((v: number) => !isNaN(v)));

            console.log('Candlestick chart data:', chartData.length, 'points');

            // Completely recreate chart options for candlestick
            this.indexChartOptions = {
              series: [{
                name: symbol,
                data: chartData
              }],
              chart: {
                type: 'candlestick',
                height: 400,
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
          } else {
            // Line chart
            const chartData = data.map((d: any) => {
              const timestamp = d.timestamp ? new Date(d.timestamp).getTime() : new Date(d.date).getTime();
              const close = typeof d.close === 'number' ? d.close : parseFloat(String(d.close));
              
              return {
                x: timestamp,
                y: close
              };
            }).filter(d => !isNaN(d.x) && !isNaN(d.y));

            console.log('Line chart data:', chartData.length, 'points');
            if (chartData.length > 0) {
              console.log('Sample data points:', chartData.slice(0, 3));
            }

            // Completely recreate chart options for line
            this.indexChartOptions = {
              series: [{
                name: symbol,
                data: chartData
              }],
              chart: {
                type: 'line',
                height: 400,
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
                curve: 'smooth',
                width: 3
              },
              colors: ['#FF6B35']
            };
          }

          console.log('Chart updated with', this.indexChartOptions.series![0].data.length, 'data points');
          this.cdr.detectChanges();
        },
        error: (err) => {
          console.error('Failed to load index historical data:', err);
        }
      });
  }

  changeIndexPeriod(period: string) {
    this.indexSelectedPeriod = period;
    this.loadWidget(this.selectedIndex.yahooSymbol);
  }

  changeIndexChartType(type: 'candlestick' | 'line') {
    this.indexChartType = type;
    this.loadWidget(this.selectedIndex.yahooSymbol);
  }

  selectIndex(index: IndexData) {

    this.selectedIndex =
      { ...index };

    this.loadWidget(
      index.yahooSymbol  // Use Yahoo symbol instead of TV symbol
    );

  }

  startPriceTick() {

    this.priceInterval =

      setInterval(() => {

        this.ngZone.run(() => {

          this.loadAllMarketData();

        });

      }, 120000);

  }

  updateSectors(quotes: any[]) {
    const sectorMap = [
      { name: 'Banking', symbol: '^NSEBANK' },
      { name: 'IT', symbol: '^CNXIT' },
      { name: 'Pharma', symbol: '^CNXPHARMA' },
      { name: 'Auto', symbol: '^CNXAUTO' },
      { name: 'FMCG', symbol: '^CNXFMCG' },
      { name: 'Metal', symbol: '^CNXMETAL' },
      { name: 'Energy', symbol: '^CNXENERGY' },
      { name: 'Realty', symbol: '^CNXREALTY' }
    ];

    this.sectors = sectorMap.map(sector => {
      const data = quotes.find(q => q.symbol === sector.symbol);
      return {
        name: sector.name,
        symbol: sector.symbol,
        change: data?.percentChange || 0,
        price: data?.price || 0
      };
    }).sort((a, b) => b.change - a.change);
  }

  loadPortfolioSummary() {
    const userId = this.user.id;
    
    this.http.get<any[]>(`http://localhost:8081/api/portfolio/${userId}`)
      .subscribe({
        next: (portfolio) => {
          if (!portfolio || portfolio.length === 0) {
            return;
          }

          const symbols = portfolio.map((holding: any) => holding.symbol);
          
          this.marketService.getBulkQuotes(symbols).subscribe({
            next: (quotes: any[]) => {
              let totalInvested = 0;
              let totalValue = 0;

              portfolio.forEach((holding: any) => {
                const liveData = quotes.find(q => q.symbol === holding.symbol);
                const currentPrice = liveData?.price || 0;
                const currentValue = currentPrice * holding.quantity;

                totalInvested += holding.totalInvested;
                totalValue += currentValue;
              });

              const pnl = totalValue - totalInvested;
              const pnlPercent = totalInvested > 0 ? (pnl / totalInvested) * 100 : 0;

              this.portfolioSummary = {
                totalValue,
                invested: totalInvested,
                pnl,
                pnlPercent,
                todayPnL: pnl * 0.3 // Approximate today's P&L
              };
            }
          });
        },
        error: () => {
          console.error('Failed to load portfolio');
        }
      });
  }

  loadMarketNews() {
    this.http.get<any[]>('http://localhost:8081/api/news/market')
      .subscribe({
        next: (news) => {
          this.marketNews = news;
        },
        error: (err) => {
          console.error('Failed to load news:', err);
          // Fallback to mock data if API fails
          this.marketNews = [
            {
              title: 'Sensex rises 200 points, Nifty above 22,500 as IT stocks rally',
              source: 'Economic Times',
              time: '2 hours ago',
              url: '#'
            },
            {
              title: 'RBI keeps repo rate unchanged at 6.5%, maintains accommodative stance',
              source: 'Moneycontrol',
              time: '4 hours ago',
              url: '#'
            },
            {
              title: 'FII inflows surge to ₹5,000 crore in May amid global optimism',
              source: 'Business Standard',
              time: '5 hours ago',
              url: '#'
            },
            {
              title: 'Reliance Industries announces Q4 results, beats estimates',
              source: 'CNBC TV18',
              time: '6 hours ago',
              url: '#'
            },
            {
              title: 'Nifty Bank hits fresh all-time high on strong banking sector performance',
              source: 'Bloomberg Quint',
              time: '8 hours ago',
              url: '#'
            }
          ];
        }
      });
  }

  selectLearnTab(tab: string) {
    this.selectedLearnTab = tab;
  }

  getLearnCourses() {
    return this.learnCourses[this.selectedLearnTab] || [];
  }

  getCardColor(index: number): string {
    const colors = ['purple', 'green', 'blue'];
    return colors[index % colors.length];
  }

  openStockModal(symbol: string) {
    this.selectedStockSymbol = symbol;
    this.isStockModalOpen = true;
  }

  closeStockModal() {
    this.isStockModalOpen = false;
    this.selectedStockSymbol = '';
  }

  onViewFullDetails(symbol: string) {
    this.closeStockModal();
    this.router.navigate(['/stock', symbol]);
  }

  ngOnDestroy() {

    clearInterval(
      this.priceInterval
    );
    
    // ApexCharts handles cleanup automatically

  }

}
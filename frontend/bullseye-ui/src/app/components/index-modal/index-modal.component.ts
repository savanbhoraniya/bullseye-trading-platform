import { Component, Input, Output, EventEmitter, OnInit, OnDestroy, OnChanges, SimpleChanges, ChangeDetectorRef } from '@angular/core';
import { CommonModule, DecimalPipe } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { MarketService } from '../../services/market.service';
import { environment } from '../../../environments/environment';
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

interface IndexDetails {
  name: string;
  symbol: string;
  price: number;
  change: number;
  changePercent: number;
  open: number;
  prevClose: number;
  high52w: number;
  low52w: number;
}

@Component({
  selector: 'app-index-modal',
  standalone: true,
  imports: [CommonModule, DecimalPipe, NgApexchartsModule],
  templateUrl: './index-modal.component.html',
  styleUrls: ['./index-modal.component.css']
})
export class IndexModalComponent implements OnInit, OnChanges, OnDestroy {
  @Input() isOpen = false;
  @Input() indexSymbol = '';
  @Input() indexName = '';
  @Output() close = new EventEmitter<void>();

  indexDetails: IndexDetails | null = null;
  isLoading = true;

  // Chart configuration
  selectedPeriod = '1M';
  periods = ['1D', '1W', '1M', '6M', '1Y', '5Y'];
  chartType: 'candlestick' | 'line' = 'line';

  public chartOptions: Partial<ChartOptions> = {
    series: [{
      name: 'Price',
      data: []
    }],
    chart: {
      type: 'line',
      height: 350,
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

  private updateInterval: any;
  private loadingTimeout: any;

  constructor(
    private http: HttpClient,
    private marketService: MarketService,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit() {
    console.log('IndexModal ngOnInit:', {
      isOpen: this.isOpen,
      symbol: this.indexSymbol,
      name: this.indexName
    });
  }

  ngOnChanges(changes: SimpleChanges) {
    console.log('IndexModal ngOnChanges:', changes);
    
    // Load data when modal is opened
    if (changes['isOpen'] && this.isOpen && this.indexSymbol) {
      console.log('Modal opened, loading data for:', this.indexSymbol);
      
      // Clear any existing timeout
      if (this.loadingTimeout) {
        clearTimeout(this.loadingTimeout);
      }
      
      // Set a maximum loading time of 5 seconds
      this.loadingTimeout = setTimeout(() => {
        if (this.isLoading) {
          console.warn('Loading timeout - forcing modal to show');
          this.isLoading = false;
          
          // Show modal with whatever data we have
          if (!this.indexDetails) {
            this.indexDetails = {
              name: this.indexName,
              symbol: this.indexSymbol,
              price: 0,
              change: 0,
              changePercent: 0,
              open: 0,
              prevClose: 0,
              high52w: 0,
              low52w: 0
            };
          }
          this.cdr.detectChanges();
        }
      }, 5000);
      
      this.loadIndexData();
      this.loadHistoricalData();
      this.startPriceUpdates();
    }
    
    // Stop updates when modal is closed
    if (changes['isOpen'] && !this.isOpen) {
      this.stopPriceUpdates();
    }
  }

  ngOnDestroy() {
    this.stopPriceUpdates();
    if (this.loadingTimeout) {
      clearTimeout(this.loadingTimeout);
    }
  }

  loadIndexData() {
    this.isLoading = true;
    
    // Use the working MarketService that dashboard uses
    this.marketService.getBulkQuotes([this.indexSymbol])
      .subscribe({
        next: (quotes) => {
          console.log('Index data received:', quotes);
          
          if (quotes && quotes.length > 0) {
            const data = quotes[0];
            
            // Calculate previous close from price and change
            const prevClose = data.price - data.change;
            
            this.indexDetails = {
              name: this.indexName,
              symbol: this.indexSymbol,
              price: data.price || 0,
              change: data.change || 0,
              changePercent: data.percentChange || 0,
              open: data.open || 0,
              prevClose: prevClose || 0,
              high52w: data.high52w || 0,
              low52w: data.low52w || 0
            };
            
            console.log('Index details set:', this.indexDetails);
          } else {
            console.warn('No quotes returned for symbol:', this.indexSymbol);
          }
          
          this.isLoading = false;
          this.cdr.detectChanges();
        },
        error: (err) => {
          console.error('Failed to load index data:', err);
          console.error('Symbol:', this.indexSymbol);
          
          // Set loading to false even on error so user sees something
          this.isLoading = false;
          
          // Provide fallback data so modal isn't blank
          this.indexDetails = {
            name: this.indexName,
            symbol: this.indexSymbol,
            price: 0,
            change: 0,
            changePercent: 0,
            open: 0,
            prevClose: 0,
            high52w: 0,
            low52w: 0
          };
          this.cdr.detectChanges();
        }
      });
  }

  loadHistoricalData() {
    this.http.get<any[]>(`${environment.apiUrl}/api/stock/${this.indexSymbol}/historical?period=${this.selectedPeriod}`)
      .subscribe({
        next: (data) => {
          if (!data || data.length === 0) {
            return;
          }

          if (this.chartType === 'candlestick') {
            const chartData = data.map((d: any) => {
              const timestamp = d.timestamp ? new Date(d.timestamp).getTime() : new Date(d.date).getTime();
              return {
                x: timestamp,
                y: [
                  parseFloat(String(d.open)),
                  parseFloat(String(d.high)),
                  parseFloat(String(d.low)),
                  parseFloat(String(d.close))
                ]
              };
            }).filter(d => !isNaN(d.x) && d.y.every((v: number) => !isNaN(v)));

            this.chartOptions = {
              ...this.chartOptions,
              series: [{
                name: this.indexName,
                data: chartData
              }],
              chart: {
                ...this.chartOptions.chart,
                type: 'candlestick'
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
              return {
                x: timestamp,
                y: parseFloat(String(d.close))
              };
            }).filter(d => !isNaN(d.x) && !isNaN(d.y));

            this.chartOptions = {
              ...this.chartOptions,
              series: [{
                name: this.indexName,
                data: chartData
              }],
              chart: {
                ...this.chartOptions.chart,
                type: 'line'
              },
              stroke: {
                curve: 'smooth',
                width: 3
              },
              colors: ['#FF6B35']
            };
          }

          this.cdr.detectChanges();
        },
        error: (err) => {
          console.error('Failed to load historical data:', err);
        }
      });
  }

  changePeriod(period: string) {
    this.selectedPeriod = period;
    this.loadHistoricalData();
  }

  changeChartType(type: 'candlestick' | 'line') {
    this.chartType = type;
    this.loadHistoricalData();
  }

  startPriceUpdates() {
    // Update price every 30 seconds
    this.updateInterval = setInterval(() => {
      this.loadIndexData();
    }, 30000);
  }

  stopPriceUpdates() {
    if (this.updateInterval) {
      clearInterval(this.updateInterval);
    }
  }

  closeModal() {
    this.stopPriceUpdates();
    this.close.emit();
  }

  onOverlayClick(event: MouseEvent) {
    if (event.target === event.currentTarget) {
      this.closeModal();
    }
  }
}

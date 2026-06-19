import { Component, OnInit, OnDestroy, HostListener, NgZone, ChangeDetectorRef } from '@angular/core';
import { RouterOutlet, RouterLink, RouterLinkActive, Router, NavigationEnd } from '@angular/router';
import { CommonModule, DecimalPipe } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { MarketService } from './services/market.service';
import { filter } from 'rxjs/operators';
import { Subscription } from 'rxjs';
import { ModalComponent } from './components/modal/modal.component';
import { environment } from '../environments/environment';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, RouterLink, RouterLinkActive, CommonModule, DecimalPipe, FormsModule, ModalComponent],
  templateUrl: './app.html',
  styleUrls: ['./app.css']
})
export class AppComponent implements OnInit, OnDestroy {

  showNavbar = true; // Control navbar visibility
  userInitials = 'U';
  userName = 'User';
  userEmail = 'user@example.com';
  userId = 0;
  dropdownOpen = false;

  sensex = { value: 0,  change: 0, pct: '0.00' };
  nifty  = { value: 0, change: 0, pct: '0.00' };
  sensexUp = true;
  niftyUp  = true;

  // Search functionality
  searchQuery = '';
  searchResults: any[] = [];
  showSearchResults = false;
  searchMessage = '';
  addedStockSymbol = ''; // Track which stock was just added
  searchLoading = false;

  // Ticker bar stocks
  tickerStocks: any[] = [];
  private tickerUpdateInterval: any;

  allStocks = [
    { symbol: 'RELIANCE', name: 'Reliance Industries' },
    { symbol: 'LT', name: 'Larsen & Toubro' },
    { symbol: 'ICICIBANK', name: 'ICICI Bank' },
    { symbol: 'HDFCAMC', name: 'HDFC Asset Management Company' },
    { symbol: 'ICICIPRAMC', name: 'ICICI Prudential Asset Management' },
    { symbol: 'NAM-INDIA', name: 'Nippon Life India Asset Management' },
    { symbol: 'CEATLTD', name: 'CEAT Ltd' },
    { symbol: 'MARUTI', name: 'Maruti Suzuki' },
    { symbol: 'M&M', name: 'Mahindra & Mahindra' },
    { symbol: 'APOLLOHOSP', name: 'Apollo Hospitals' },
    { symbol: 'EICHERMOT', name: 'Eicher Motors' },
    { symbol: 'L&TFH', name: 'L&T Finance Holdings' },
    { symbol: 'BAJFINANCE', name: 'Bajaj Finance' },
    { symbol: 'TCS', name: 'Tata Consultancy Services' },
    { symbol: 'INFY', name: 'Infosys' },
    { symbol: 'POLYCAB', name: 'Polycab India' },
    { symbol: 'MUTHOOTFIN', name: 'Muthoot Finance' },
    { symbol: 'ADANIPORTS', name: 'Adani Ports and SEZ' },
    { symbol: 'SHRIRAMFIN', name: 'Shriram Finance' },
    { symbol: 'ULTRACEMCO', name: 'UltraTech Cement' },
    { symbol: 'CIPLA', name: 'Cipla' },
    { symbol: 'SUNPHARMA', name: 'Sun Pharma' },
    { symbol: 'SBIN', name: 'State Bank of India' },
    { symbol: 'BANKBARODA', name: 'Bank of Baroda' },
    { symbol: 'BEL', name: 'Bharat Electronics Ltd' },
    { symbol: 'TATAMOTORS', name: 'Tata Motors' },
    { symbol: 'HDFCBANK', name: 'HDFC Bank' },
    { symbol: 'KOTAKBANK', name: 'Kotak Mahindra Bank' },
    { symbol: 'AXISBANK', name: 'Axis Bank' },
    { symbol: 'WIPRO', name: 'Wipro' }
  ];

  private tickerInterval: any;
  private routerSubscription: Subscription | undefined;

  constructor(
    private ngZone: NgZone,
    private marketService: MarketService,
    private http: HttpClient,
    private router: Router,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit() {
    this.loadUser();
    this.loadMarketData();
    this.loadTickerStocks(); // Load ticker stocks

    // Update market data every 2 minutes (120 seconds)
    this.ngZone.run(() => {
      this.tickerInterval = setInterval(() => this.loadMarketData(), 120000);
      // Update ticker stocks every 30 seconds
      this.tickerUpdateInterval = setInterval(() => this.loadTickerStocks(), 30000);
    });

    // Close dropdown and reload user data when navigating to another page
    // Also check if we should show navbar
    this.routerSubscription = this.router.events
      .pipe(filter(event => event instanceof NavigationEnd))
      .subscribe((event: NavigationEnd) => {
        this.dropdownOpen = false;
        this.showSearchResults = false;
        // Reload user data on every navigation to pick up changes from login
        this.loadUser();
        // Hide navbar on landing, login, register, and forgot-password pages
        const hideNavbarRoutes = ['/landing', '/login', '/register', '/forgot-password', '/'];
        this.showNavbar = !hideNavbarRoutes.includes(event.urlAfterRedirects);
      });
    
    // Set initial navbar visibility
    const hideNavbarRoutes = ['/landing', '/login', '/register', '/forgot-password', '/'];
    this.showNavbar = !hideNavbarRoutes.includes(this.router.url);
  }

  loadUser() {
    const raw = localStorage.getItem('user');
    if (raw) {
      const user = JSON.parse(raw);
      this.userId = user.id ? parseInt(user.id) : 0;
      this.userEmail = user.email || 'user@example.com';
      this.userName = user.name || user.fullName ||
        this.userEmail.split('@')[0].replace(/[._]/g, ' ')
          .replace(/\b\w/g, (c: string) => c.toUpperCase());
      const nameParts = this.userName.trim().split(' ');
      this.userInitials = nameParts.length > 1
        ? (nameParts[0][0] + nameParts[nameParts.length - 1][0]).toUpperCase()
        : this.userName.substring(0, 2).toUpperCase();
    }
  }

  loadMarketData() {
    // Use bulk API to fetch both indices at once (cached on backend)
    const symbols = ['^BSESN', '^NSEI'];
    
    this.marketService.getBulkQuotes(symbols).subscribe({
      next: (quotes: any[]) => {
        // Update Sensex
        const sensexData = quotes.find(q => q.symbol === '^BSESN');
        if (sensexData) {
          const oldValue = this.sensex.value;
          this.sensex.value = sensexData.price || 0;
          this.sensex.change = sensexData.change || 0;
          this.sensex.pct = Math.abs(sensexData.percentChange || 0).toFixed(2);
          this.sensexUp = this.sensex.change >= 0;
          
          // Flash animation on value change
          if (oldValue !== 0 && oldValue !== this.sensex.value) {
            this.triggerFlash('sensex');
          }
        }

        // Update Nifty
        const niftyData = quotes.find(q => q.symbol === '^NSEI');
        if (niftyData) {
          const oldValue = this.nifty.value;
          this.nifty.value = niftyData.price || 0;
          this.nifty.change = niftyData.change || 0;
          this.nifty.pct = Math.abs(niftyData.percentChange || 0).toFixed(2);
          this.niftyUp = this.nifty.change >= 0;
          
          // Flash animation on value change
          if (oldValue !== 0 && oldValue !== this.nifty.value) {
            this.triggerFlash('nifty');
          }
        }
      },
      error: (err) => {
        console.error('Failed to load market data for navbar:', err);
      }
    });
  }

  private triggerFlash(index: 'sensex' | 'nifty') {
    // Trigger flash animation by toggling class
    // The CSS animation will handle the visual effect
  }

  loadTickerStocks() {
    // Fetch top 20 stocks for the ticker bar
    this.http.get<any[]>(`${environment.apiUrl}/api/stocks/ticker?limit=20`)
      .subscribe({
        next: (stocks) => {
          this.tickerStocks = stocks.map((stock: any) => ({
            symbol: stock.symbol,
            price: stock.price,
            changePercent: stock.changePercent
          }));
          this.cdr.detectChanges();
        },
        error: (err) => {
          console.error('Failed to load ticker stocks:', err);
          // Fallback: if ticker endpoint fails, load all stocks
          this.http.get<any[]>(`${environment.apiUrl}/api/stocks/search?query=&limit=20`)
            .subscribe({
              next: (stocks) => {
                this.tickerStocks = stocks.map((stock: any) => ({
                  symbol: stock.symbol,
                  price: stock.price,
                  changePercent: stock.changePercent
                }));
                this.cdr.detectChanges();
              },
              error: () => {
                console.error('Failed to load fallback ticker stocks');
              }
            });
        }
      });
  }

  // Search functionality
  onSearchInput() {
    const query = this.searchQuery.trim();
    
    // Allow search with 2 or more characters
    if (!query || query.length < 2) {
      this.searchResults = [];
      this.showSearchResults = false;
      this.searchLoading = false;
      return;
    }

    // Show loading immediately
    this.searchLoading = true;
    this.showSearchResults = true;

    // Call new stock search API
    this.http.get<any[]>(`${environment.apiUrl}/api/stocks/search?query=${encodeURIComponent(query)}&limit=8`)
      .subscribe({
        next: (results) => {
          this.searchLoading = false; // ✅ Stop loading FIRST
          this.searchResults = results.map((stock: any) => ({
            symbol: stock.symbol,
            name: stock.companyName,
            industry: stock.industry,
            price: stock.price,
            changePercent: stock.changePercent
          }));
          this.showSearchResults = true;
        },
        error: (err) => {
          console.error('Search error:', err);
          this.searchLoading = false; // ✅ Stop loading on error
          this.searchResults = [];
          this.showSearchResults = true; // Show empty state
        }
      });
  }

  addToWatchlist(stock: any, event: Event) {
    event.stopPropagation();
    
    if (!this.userId) {
      this.searchMessage = 'Please login first';
      setTimeout(() => {
        this.searchMessage = '';
        this.cdr.detectChanges();
      }, 2000);
      return;
    }

    // Show success animation immediately (optimistic UI)
    this.addedStockSymbol = stock.symbol;
    this.searchMessage = `${stock.symbol} added to watchlist!`;

    this.http.post('${environment.apiUrl}/api/watchlist/add', {
      userId: this.userId,
      symbol: stock.symbol,
      companyName: stock.name
    }).subscribe({
      next: () => {
        // Success - auto-hide message after 2 seconds
        setTimeout(() => {
          this.searchMessage = '';
          this.addedStockSymbol = '';
          this.cdr.detectChanges();
        }, 2000);
      },
      error: (err) => {
        // Error - revert button state and show error
        this.addedStockSymbol = '';
        this.searchMessage = err.error?.message || 'Already in watchlist';
        
        // Auto-hide error message after 2 seconds
        setTimeout(() => {
          this.searchMessage = '';
          this.cdr.detectChanges();
        }, 2000);
      }
    });
  }

  navigateToStock(symbol: string) {
    this.showSearchResults = false;
    this.searchQuery = '';
    this.searchMessage = ''; // Clear message when navigating
    this.router.navigate(['/stock', symbol]);
  }

  closeSearch() {
    this.showSearchResults = false;
    this.searchMessage = ''; // Clear message when closing
  }

  toggleDropdown(event: Event) {
    event.stopPropagation();
    this.dropdownOpen = !this.dropdownOpen;
    this.closeSearch();
  }

  @HostListener('document:click')
  closeDropdown() {
    this.dropdownOpen = false;
    this.showSearchResults = false;
    this.searchMessage = ''; // Clear message when clicking outside
  }

  ngOnDestroy() {
    clearInterval(this.tickerInterval);
    clearInterval(this.tickerUpdateInterval);
    if (this.routerSubscription) {
      this.routerSubscription.unsubscribe();
    }
  }

  logout() {
    localStorage.clear();
    window.location.href = '/login';
  }
}

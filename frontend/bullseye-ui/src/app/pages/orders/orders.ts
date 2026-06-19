import {
  Component,
  OnInit,
  OnDestroy,
  ChangeDetectorRef,
  NgZone,
  ViewChild,
  ViewContainerRef,
  ComponentRef
} from '@angular/core';

import {
  CommonModule,
  DecimalPipe
} from '@angular/common';

import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { OrderService, Order } from '../../services/order.service';
import { StockModalComponent } from '../../components/stock-modal/stock-modal.component';

@Component({
  selector: 'app-orders',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    DecimalPipe,
    StockModalComponent
  ],
  templateUrl: './orders.html',
  styleUrls: ['./orders.css']
})
export class OrdersComponent implements OnInit, OnDestroy {
  @ViewChild('modalContainer', { read: ViewContainerRef }) modalContainer!: ViewContainerRef;

  userId = 0;
  activeTab: 'pending' | 'executed' = 'pending';
  
  pendingOrders: Order[] = [];
  executedOrders: Order[] = [];
  
  isLoading = true;
  cancelError = '';
  cancelSuccess = '';
  cancellingOrderId: number | null = null;
  
  // Stock Modal
  selectedSymbol: string = '';
  isModalOpen = false;
  
  private refreshInterval: any;

  constructor(
    private router: Router,
    private orderService: OrderService,
    private cdr: ChangeDetectorRef,
    private ngZone: NgZone
  ) {}

  ngOnInit() {
    const raw = localStorage.getItem('user');
    
    if (!raw) {
      this.router.navigate(['/login']);
      return;
    }

    const user = JSON.parse(raw);
    this.userId = user.id ? parseInt(user.id) : 0;

    this.loadOrders();
    this.startAutoRefresh();
  }

  loadOrders() {
    this.isLoading = true;
    
    // Load both pending and executed orders
    this.orderService.getPendingOrders(this.userId).subscribe({
      next: (orders) => {
        this.pendingOrders = orders;
        this.isLoading = false;
        this.cdr.detectChanges();
      },
      error: () => {
        this.isLoading = false;
        this.cdr.detectChanges();
      }
    });

    this.orderService.getExecutedOrders(this.userId).subscribe({
      next: (orders) => {
        this.executedOrders = orders;
        this.cdr.detectChanges();
      },
      error: () => {
        this.cdr.detectChanges();
      }
    });
  }

  startAutoRefresh() {
    // Refresh orders every 30 seconds
    this.refreshInterval = setInterval(() => {
      this.ngZone.run(() => {
        this.loadOrders();
      });
    }, 30000);
  }

  switchTab(tab: 'pending' | 'executed') {
    this.activeTab = tab;
    this.cancelError = '';
    this.cancelSuccess = '';
  }

  cancelOrder(orderId: number) {
    this.cancelError = '';
    this.cancelSuccess = '';
    this.cancellingOrderId = orderId;

    this.orderService.cancelOrder(orderId, this.userId).subscribe({
      next: (response) => {
        this.cancelSuccess = 'Order cancelled successfully!';
        this.cancellingOrderId = null;
        
        // Remove from pending orders
        this.pendingOrders = this.pendingOrders.filter(o => o.id !== orderId);
        
        this.cdr.detectChanges();

        setTimeout(() => {
          this.cancelSuccess = '';
          this.cdr.detectChanges();
        }, 3000);
      },
      error: (err) => {
        this.cancelError = err.error?.message || 'Failed to cancel order. Try again.';
        this.cancellingOrderId = null;
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
  }

  getOrderTypeLabel(orderType: string): string {
    return orderType === 'MARKET' ? 'Market' : 'Limit';
  }

  getActionClass(action: string): string {
    return action === 'BUY' ? 'buy-action' : 'sell-action';
  }

  getStatusClass(status: string): string {
    switch (status) {
      case 'PENDING': return 'status-pending';
      case 'EXECUTED': return 'status-executed';
      case 'CANCELLED': return 'status-cancelled';
      default: return '';
    }
  }

  formatDate(dateString: string | null): string {
    if (!dateString) return '-';
    const date = new Date(dateString);
    return date.toLocaleString('en-IN', {
      day: '2-digit',
      month: 'short',
      year: 'numeric',
      hour: '2-digit',
      minute: '2-digit'
    });
  }

  ngOnDestroy() {
    if (this.refreshInterval) {
      clearInterval(this.refreshInterval);
    }
  }
}

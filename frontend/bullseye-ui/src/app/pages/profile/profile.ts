import { Component, OnInit, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';

import { BalanceService } from '../../services/balance.service';
import { AuthService } from '../../services/auth.service';
import { BankService } from '../../services/bank.service';
import { MarketService } from '../../services/market.service';
import { PaymentService } from '../../services/payment.service';
import { PdfService } from '../../services/pdf.service';
import { ModalService } from '../../services/modal.service';

import { environment } from '../../../environments/environment';

interface SidebarItem {
  id: string;
  title: string;
  icon: string;
}

@Component({
  selector: 'app-profile',
  templateUrl: './profile.html',
  styleUrls: ['./profile.css'],
  standalone: true,
  imports: [CommonModule, FormsModule]
})
export class ProfileComponent implements OnInit {

  sidebarItems: SidebarItem[] = [
    {
      id: 'balance', title: 'Account Balance',
      icon: `<svg viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="1.6">
               <circle cx="8" cy="8" r="6"/>
               <path d="M8 5v3l2 2"/>
             </svg>`
    },
    {
      id: 'personal', title: 'Personal Information',
      icon: `<svg viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="1.6">
               <circle cx="8" cy="5" r="3"/>
               <path d="M2 14c0-3.314 2.686-5 6-5s6 1.686 6 5"/>
             </svg>`
    },
    {
      id: 'transactions', title: 'Transaction History',
      icon: `<svg viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="1.6">
               <path d="M3 8h10M9 4l4 4-4 4"/>
             </svg>`
    },
    {
      id: 'bank', title: 'Bank Account',
      icon: `<svg viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="1.6">
               <rect x="2" y="6" width="12" height="7" rx="1"/>
               <path d="M2 9h12"/>
               <path d="M5 6V4a3 3 0 016 0v2"/>
             </svg>`
    },
    {
      id: 'statements', title: 'Statements',
      icon: `<svg viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="1.6">
               <rect x="3" y="2" width="10" height="12" rx="1"/>
               <line x1="6" y1="6" x2="10" y2="6"/>
               <line x1="6" y1="9" x2="10" y2="9"/>
             </svg>`
    },
    {
      id: 'password', title: 'Change Password',
      icon: `<svg viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="1.6">
               <rect x="4" y="7" width="8" height="6" rx="1"/>
               <path d="M6 7V5a2 2 0 014 0v2"/>
             </svg>`
    }
  ];

  activeSection = 'balance';

  userEmail = 'user@example.com';

  userInitials = 'U';

  userId = 0;

  // Balance
  balance = 0;

  isLoadingBalance = true;

  showAddFunds = false;

  showWithdraw = false;

  addAmount = '';

  withdrawAmount = '';

  withdrawError = '';

  addError = '';

  isAddingFunds = false;

  isWithdrawing = false;

  // Real Portfolio Summary
  totalInvested = 0;

  portfolioValue = 0;

  totalPnL = 0;

  todayPnL = 0;

  // Personal
  editMode = false;

  fullName = '';

  phone = '';

  userName = 'User';

  // Password
  currentPassword = '';

  newPassword = '';

  confirmPassword = '';

  passwordError = '';

  passwordSuccess = '';

  // Transactions
  transactions: any[] = [];

  isLoadingTransactions = false;

  // Bank Account
  bankAccount: any = null;

  isLoadingBank = false;

  showAddBank = false;

  bankName = '';

  accountHolder = '';

  accountNumber = '';

  ifscCode = '';

  bankError = '';

  bankSuccess = '';

  isSubmittingBank = false;

  showRemoveConfirm = false;

  constructor(
    private router: Router,
    private balanceService: BalanceService,
    private authService: AuthService,
    private bankService: BankService,
    private marketService: MarketService,
    private paymentService: PaymentService,
    private pdfService: PdfService,
    private http: HttpClient,
    private cdr: ChangeDetectorRef,
    private modalService: ModalService
  ) {}

  ngOnInit() {

    const raw =
      localStorage.getItem('user');

    if (!raw) {

      this.router.navigate(['/login']);

      return;

    }

    const user = JSON.parse(raw);

    this.userEmail =
      user.email || 'user@example.com';

    this.userId =
      user.id
        ? parseInt(user.id)
        : 0;

    this.userInitials =
      this.userEmail
        .substring(0, 2)
        .toUpperCase();

    this.userName = 
      this.userEmail.split('@')[0]
        .replace(/[._]/g, ' ')
        .replace(/\b\w/g, (c: string) => c.toUpperCase());

    this.cdr.detectChanges();

    this.loadBalance();

    this.loadPortfolioSummary();

  }

  loadPortfolioSummary() {

    this.http.get<any[]>(

      `${environment.apiUrl}/api/portfolio/${this.userId}`

    ).subscribe({

      next: (portfolio) => {

        if (
          !portfolio ||
          portfolio.length === 0
        ) {

          this.totalInvested = 0;

          this.portfolioValue = 0;

          this.totalPnL = 0;

          this.todayPnL = 0;

          this.cdr.detectChanges();

          return;

        }

        const symbols =

          portfolio.map(

            (holding: any) =>
              holding.symbol

          );

        this.marketService
          .getBulkQuotes(symbols)
          .subscribe({

            next: (quotes: any[]) => {

              this.totalInvested = 0;

              this.portfolioValue = 0;

              this.totalPnL = 0;

              this.todayPnL = 0;

              portfolio.forEach(

                (holding: any) => {

                  const liveData =

                    quotes.find(

                      q =>
                        q.symbol ===
                        holding.symbol

                    );

                  const currentPrice =

                    liveData?.price || 0;

                  const currentValue =

                    currentPrice *
                    holding.quantity;

                  this.totalInvested +=

                    holding.totalInvested;

                  this.portfolioValue +=

                    currentValue;

                }

              );

              this.totalPnL =

                this.portfolioValue -
                this.totalInvested;

              this.todayPnL =

                this.totalPnL * 0.3;

              this.cdr.detectChanges();

            }

          });

      }

    });

  }

  loadBalance() {

    this.isLoadingBalance = true;

    this.balanceService
      .getBalance(this.userId)
      .subscribe({

        next: (res) => {

          this.balance =
            res.balance;

          this.isLoadingBalance = false;

          this.cdr.detectChanges();

        },

        error: () => {

          this.isLoadingBalance = false;

          this.cdr.detectChanges();

        }

      });

  }

  loadTransactions() {

    this.isLoadingTransactions = true;

    this.balanceService
      .getTransactions(this.userId)
      .subscribe({

        next: (res) => {

          this.transactions =

            res.map((tx: any) => ({

              date: new Date(
                tx.createdAt
              ).toLocaleDateString(

                'en-IN',

                {
                  day: '2-digit',
                  month: 'short',
                  year: 'numeric'
                }

              ),

              type:
                tx.type.charAt(0)
                +
                tx.type.slice(1)
                  .toLowerCase(),

              amount:
                (
                  tx.type === 'DEPOSIT'
                    ? '+'
                    : '-'
                )
                +
                '₹'
                +
                Number(tx.amount)
                  .toLocaleString('en-IN'),

              status:
                tx.status.charAt(0)
                +
                tx.status.slice(1)
                  .toLowerCase()

            }));

          this.isLoadingTransactions = false;

          this.cdr.detectChanges();

        },

        error: () => {

          this.isLoadingTransactions = false;

          this.cdr.detectChanges();

        }

      });

  }

  loadBankAccount() {

    this.isLoadingBank = true;

    this.bankService
      .getBankAccount(this.userId)
      .subscribe({

        next: (res) => {

          this.bankAccount =
            res.bankName
              ? res
              : null;

          this.isLoadingBank = false;

          this.cdr.detectChanges();

        },

        error: () => {

          this.bankAccount = null;

          this.isLoadingBank = false;

          this.cdr.detectChanges();

        }

      });

  }

  setActiveSection(section: string) {

    this.activeSection = section;

    this.showAddFunds = false;

    this.showWithdraw = false;

    this.withdrawError = '';

    this.addError = '';

    this.passwordError = '';

    this.passwordSuccess = '';

    this.bankError = '';

    this.bankSuccess = '';

    this.showAddBank = false;

    this.showRemoveConfirm = false;

    if (section === 'transactions') {

      this.loadTransactions();

    }

    if (section === 'bank') {

      this.loadBankAccount();

    }

  }

  addFunds() {

    const amount =
      parseFloat(this.addAmount);

    this.addError = '';

    if (!amount || amount <= 0) {

      this.addError =
        'Please enter a valid amount.';

      return;

    }

    if (amount > 1000000) {

      this.addError =
        'Maximum single deposit limit is ₹10,00,000.';

      return;

    }

    this.isAddingFunds = true;
    this.cdr.detectChanges();

    // Check if bank account is linked first
    this.bankService.getBankAccount(this.userId).subscribe({
      next: (bankRes) => {
        // Check if bank account exists
        if (!bankRes || !bankRes.bankName) {
          // No bank account linked
          this.isAddingFunds = false;
          this.addError = '';
          this.showAddFunds = false;
          this.cdr.detectChanges();
          
          // Show modal immediately
          this.modalService.confirm(
            'Please link your bank account first to add funds.\n\nClick OK to go to Bank Account page.',
            'Bank Account Required',
            () => {
              this.setActiveSection('bank');
            }
          );
          return;
        }

        // Bank account exists, proceed with payment
        this.proceedWithPayment(amount);
      },
      error: () => {
        // Error fetching bank account, assume not linked
        this.isAddingFunds = false;
        this.addError = '';
        this.showAddFunds = false;
        this.cdr.detectChanges();
        
        // Show modal immediately
        this.modalService.confirm(
          'Please link your bank account first to add funds.\n\nClick OK to go to Bank Account page.',
          'Bank Account Required',
          () => {
            this.setActiveSection('bank');
          }
        );
      }
    });
  }

  proceedWithPayment(amount: number) {
    // Check if Razorpay is loaded
    if (typeof (window as any).Razorpay === 'undefined') {
      this.addError = 'Payment gateway not loaded. Please refresh the page.';
      this.isAddingFunds = false;
      console.error('Razorpay script not loaded');
      return;
    }

    console.log('Creating payment order for amount:', amount);

    // Create Razorpay order
    this.paymentService.createOrder(this.userId, amount).subscribe({
      next: (order) => {
        console.log('Order created:', order);
        // Open Razorpay checkout - order.amount is already in paise
        this.paymentService.openRazorpay(
          order.id,
          order.amount, // Use amount from order response (already in paise)
          this.userEmail,
          this.userName,
          (response) => {
            console.log('Payment successful:', response);
            // Payment successful - verify on backend
            this.verifyPayment(response, amount);
          },
          (error) => {
            console.error('Payment failed:', error);
            // Payment failed or cancelled
            this.addError = error.error?.description || error.error || 'Payment failed or cancelled';
            this.isAddingFunds = false;
            this.cdr.detectChanges();
          }
        );
      },
      error: (err) => {
        console.error('Order creation failed:', err);
        this.addError = err.error?.message || 'Failed to initiate payment. Try again.';
        this.isAddingFunds = false;
        this.cdr.detectChanges();
      }
    });
  }

  verifyPayment(razorpayResponse: any, amount: number) {
    this.paymentService.verifyPayment({
      razorpayOrderId: razorpayResponse.razorpay_order_id,
      razorpayPaymentId: razorpayResponse.razorpay_payment_id,
      razorpaySignature: razorpayResponse.razorpay_signature,
      userId: this.userId,
      amount: amount
    }).subscribe({
      next: (res) => {
        this.balance = res.balance;
        this.addAmount = '';
        this.showAddFunds = false;
        this.isAddingFunds = false;
        this.addError = '';
        this.cdr.detectChanges();
        
        // Show success message immediately
        this.modalService.success(
          '₹' + amount.toLocaleString('en-IN') + ' added to your account.',
          'Payment Successful'
        );
      },
      error: (err) => {
        this.addError = err.error?.message || 'Payment verification failed. Contact support.';
        this.isAddingFunds = false;
        this.cdr.detectChanges();
      }
    });
  }

  withdrawFunds() {

    const amount =
      parseFloat(this.withdrawAmount);

    this.withdrawError = '';

    if (!amount || amount <= 0) {

      this.withdrawError =
        'Please enter a valid amount.';

      return;

    }

    this.isWithdrawing = true;

    this.balanceService
      .withdrawFunds(this.userId, amount)
      .subscribe({

        next: (res) => {

          this.balance = res.balance;

          this.withdrawAmount = '';

          this.showWithdraw = false;

          this.isWithdrawing = false;

          this.withdrawError = '';

          this.cdr.detectChanges();

        },

        error: (err) => {

          this.withdrawError =
            err.error?.message
            ||
            `Insufficient balance. Available: ₹${this.balance.toLocaleString('en-IN')}`;

          this.isWithdrawing = false;

          this.cdr.detectChanges();

        }

      });

  }

  logout() {

    localStorage.clear();

    this.router.navigate(['/login']);

  }

  toggleEdit() {

  this.editMode = !this.editMode;

}

addBankAccount() {

  this.bankError = '';

  this.bankSuccess = '';

  if (
    !this.bankName ||
    !this.accountHolder ||
    !this.accountNumber ||
    !this.ifscCode
  ) {

    this.bankError =
      'Please fill all bank details.';

    return;

  }

  this.isSubmittingBank = true;

  this.bankService
    .addBankAccount({

      userId: this.userId,

      bankName: this.bankName,

      accountHolder: this.accountHolder,

      accountNumber: this.accountNumber,

      ifscCode: this.ifscCode

    })

    .subscribe({

      next: (res) => {

        this.bankSuccess =
          'Bank account added successfully.';

        this.bankAccount = res;

        this.showAddBank = false;

        this.isSubmittingBank = false;

        this.resetBankForm();

        this.cdr.detectChanges();

      },

      error: (err) => {

        this.bankError =
          err.error?.message ||
          'Failed to add bank account.';

        this.isSubmittingBank = false;

        this.cdr.detectChanges();

      }

    });

}

removeBankAccount() {

  this.bankService
    .removeBankAccount(this.userId)

    .subscribe({

      next: () => {

        this.bankAccount = null;

        this.showRemoveConfirm = false;

        this.bankSuccess =
          'Bank account removed successfully.';

        this.cdr.detectChanges();

      },

      error: () => {

        this.bankError =
          'Failed to remove bank account.';

        this.cdr.detectChanges();

      }

    });

}

resetBankForm() {

  this.bankName = '';

  this.accountHolder = '';

  this.accountNumber = '';

  this.ifscCode = '';

}

changePassword() {

  this.passwordError = '';

  this.passwordSuccess = '';

  if (
    !this.currentPassword ||
    !this.newPassword ||
    !this.confirmPassword
  ) {

    this.passwordError =
      'Please fill all password fields.';

    this.cdr.detectChanges();

    return;

  }

  if (
    this.newPassword !==
    this.confirmPassword
  ) {

    this.passwordError =
      'New password and confirm password do not match.';

    this.cdr.detectChanges();

    return;

  }

  if (this.newPassword.length < 6) {

    this.passwordError =
      'New password must be at least 6 characters.';

    this.cdr.detectChanges();

    return;

  }

  // Call backend API to change password
  this.http.post('${environment.apiUrl}/api/auth/change-password', {
    userId: this.userId,
    currentPassword: this.currentPassword,
    newPassword: this.newPassword
  }, { responseType: 'text' }).subscribe({

    next: (response) => {

      this.passwordSuccess =
        response || 'Password changed successfully!';

      this.currentPassword = '';

      this.newPassword = '';

      this.confirmPassword = '';

      this.cdr.detectChanges();

    },

    error: (err) => {

      // Handle error message properly
      let errorMsg = 'Failed to change password. Please try again.';
      
      if (err.error) {
        // If error is a string, use it directly
        errorMsg = typeof err.error === 'string' ? err.error : err.error.message || errorMsg;
      } else if (err.message) {
        errorMsg = err.message;
      }

      this.passwordError = errorMsg;

      this.cdr.detectChanges();

    }

  });

}

// PDF Download Methods
downloadTradeHistory() {
  this.http.get<any[]>(`${environment.apiUrl}/api/reports/trade-history/${this.userId}`)
    .subscribe({
      next: (trades) => {
        if (trades.length === 0) {
          this.modalService.warning('No trade history available to download.', 'No Data');
          return;
        }
        this.pdfService.generateTradeHistoryReport(trades, this.userName, this.userEmail);
      },
      error: (err) => {
        this.modalService.error('Failed to fetch trade history: ' + (err.error?.message || 'Please try again.'), 'Error');
      }
    });
}

downloadAccountStatement() {
  this.http.get<any>(`${environment.apiUrl}/api/reports/account-statement/${this.userId}`)
    .subscribe({
      next: (data) => {
        if (!data.transactions || data.transactions.length === 0) {
          this.modalService.warning('No transactions available to download.', 'No Data');
          return;
        }
        this.pdfService.generateAccountStatement(
          data.transactions,
          this.userName,
          this.userEmail,
          data.openingBalance
        );
      },
      error: (err) => {
        this.modalService.error('Failed to fetch account statement: ' + (err.error?.message || 'Please try again.'), 'Error');
      }
    });
}

downloadPnLReport() {
  this.http.get<any>(`${environment.apiUrl}/api/reports/pnl-report/${this.userId}`)
    .subscribe({
      next: (data) => {
        if (!data.pnlData || data.pnlData.length === 0) {
          this.modalService.alert(
            'No P&L data available.\n\nTo generate a P&L report, you need to:\n1. Buy a stock\n2. Sell the same stock\n\nThe report will show profit/loss from your sell transactions.',
            'No Data'
          );
          return;
        }
        this.pdfService.generatePnLReport(data.pnlData, this.userName, this.userEmail);
      },
      error: (err) => {
        this.modalService.error('Failed to fetch P&L report: ' + (err.error?.message || 'Please try again.'), 'Error');
      }
    });
}

}
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';

declare var Razorpay: any;

export interface RazorpayOrder {
  id: string;
  amount: number;
  currency: string;
  receipt: string;
}

export interface PaymentVerification {
  razorpayOrderId: string;
  razorpayPaymentId: string;
  razorpaySignature: string;
  userId: number;
  amount: number;
}

@Injectable({
  providedIn: 'root'
})
export class PaymentService {
  private baseUrl = `${environment.apiUrl}/api/payment`;

  constructor(private http: HttpClient) {}

  createOrder(userId: number, amount: number): Observable<RazorpayOrder> {
    return this.http.post<RazorpayOrder>(`${this.baseUrl}/create-order`, {
      userId,
      amount
    });
  }

  verifyPayment(verification: PaymentVerification): Observable<any> {
    return this.http.post(`${this.baseUrl}/verify`, verification);
  }

  openRazorpay(
    orderId: string,
    amountInPaise: number,
    userEmail: string,
    userName: string,
    onSuccess: (response: any) => void,
    onFailure: (error: any) => void
  ) {
    console.log('Opening Razorpay with:', {
      orderId,
      amountInPaise,
      userEmail,
      userName
    });

    const options = {
      key: 'rzp_test_Su48qvjXpizLmZ', // Your Razorpay test key
      amount: amountInPaise, // Amount already in paise from backend
      currency: 'INR',
      name: 'Bullseye Trading',
      description: 'Add Funds to Trading Account',
      order_id: orderId,
      prefill: {
        name: userName,
        email: userEmail
      },
      theme: {
        color: '#FF6B35'
      },
      handler: (response: any) => {
        console.log('Payment handler called:', response);
        onSuccess(response);
      },
      modal: {
        ondismiss: () => {
          console.log('Payment modal dismissed');
          onFailure({ error: 'Payment cancelled by user' });
        }
      }
    };

    console.log('Razorpay options:', options);

    try {
      const razorpay = new Razorpay(options);
      
      razorpay.on('payment.failed', (response: any) => {
        console.error('Payment failed event:', response);
        onFailure(response.error);
      });

      razorpay.open();
    } catch (error) {
      console.error('Error opening Razorpay:', error);
      onFailure({ error: 'Failed to open payment gateway' });
    }
  }
}

import { Injectable, ApplicationRef } from '@angular/core';
import { Subject } from 'rxjs';

export interface ModalConfig {
  type: 'alert' | 'confirm' | 'success' | 'error' | 'warning';
  title: string;
  message: string;
  confirmText?: string;
  cancelText?: string;
  onConfirm?: () => void;
  onCancel?: () => void;
}

@Injectable({
  providedIn: 'root'
})
export class ModalService {
  private modalSubject = new Subject<ModalConfig | null>();
  public modal$ = this.modalSubject.asObservable();

  constructor(private appRef: ApplicationRef) {}

  alert(message: string, title: string = 'Alert') {
    this.modalSubject.next({
      type: 'alert',
      title,
      message,
      confirmText: 'OK'
    });
    // Force immediate change detection
    this.appRef.tick();
  }

  success(message: string, title: string = 'Success') {
    this.modalSubject.next({
      type: 'success',
      title,
      message,
      confirmText: 'OK'
    });
    // Force immediate change detection
    this.appRef.tick();
  }

  error(message: string, title: string = 'Error') {
    this.modalSubject.next({
      type: 'error',
      title,
      message,
      confirmText: 'OK'
    });
    // Force immediate change detection
    this.appRef.tick();
  }

  warning(message: string, title: string = 'Warning') {
    this.modalSubject.next({
      type: 'warning',
      title,
      message,
      confirmText: 'OK'
    });
    // Force immediate change detection
    this.appRef.tick();
  }

  confirm(message: string, title: string = 'Confirm', onConfirm?: () => void, onCancel?: () => void) {
    this.modalSubject.next({
      type: 'confirm',
      title,
      message,
      confirmText: 'OK',
      cancelText: 'Cancel',
      onConfirm,
      onCancel
    });
    // Force immediate change detection
    this.appRef.tick();
  }

  close() {
    this.modalSubject.next(null);
    // Force immediate change detection
    this.appRef.tick();
  }
}

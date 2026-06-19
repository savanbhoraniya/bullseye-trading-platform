import { Component, OnInit, OnDestroy, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ModalService, ModalConfig } from '../../services/modal.service';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-modal',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './modal.component.html',
  styleUrls: ['./modal.component.css']
})
export class ModalComponent implements OnInit, OnDestroy {
  modalConfig: ModalConfig | null = null;
  private subscription: Subscription | null = null;

  constructor(
    private modalService: ModalService,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit() {
    this.subscription = this.modalService.modal$.subscribe(config => {
      this.modalConfig = config;
      // Force change detection immediately when modal config changes
      this.cdr.detectChanges();
    });
  }

  ngOnDestroy() {
    if (this.subscription) {
      this.subscription.unsubscribe();
    }
  }

  onConfirm() {
    // Store callback reference before closing
    const callback = this.modalConfig?.onConfirm;
    
    // Close modal immediately
    this.modalService.close();
    
    // Execute callback immediately after closing
    if (callback) {
      callback();
    }
  }

  onCancel() {
    // Store callback reference before closing
    const callback = this.modalConfig?.onCancel;
    
    // Close modal immediately
    this.modalService.close();
    
    // Execute callback immediately after closing
    if (callback) {
      callback();
    }
  }

  close() {
    this.modalService.close();
  }

  onBackdropClick(event: MouseEvent) {
    // Only close on backdrop click, not on modal content click
    if ((event.target as HTMLElement).classList.contains('modal-backdrop')) {
      event.stopPropagation();
      this.close();
    }
  }
}

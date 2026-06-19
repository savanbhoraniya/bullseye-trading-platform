import { Injectable } from '@angular/core';
import jsPDF from 'jspdf';
import autoTable from 'jspdf-autotable';

@Injectable({
  providedIn: 'root'
})
export class PdfService {

  constructor() {}

  private addHeader(doc: jsPDF, userName: string, userEmail: string) {
    // Add BullsEye Logo - "BULLS" in orange, "EYE" in blue (as one word)
    doc.setFontSize(24);
    doc.setFont('helvetica', 'bold');
    
    // BULLS in orange
    doc.setTextColor(255, 107, 53); // #FF6B35 Orange
    doc.text('BULLS', 20, 20);
    
    // Calculate width of "BULLS" to position "EYE" right next to it
    const bullsWidth = doc.getTextWidth('BULLS');
    
    // EYE in blue (positioned right after BULLS)
    doc.setTextColor(41, 128, 185); // #2980B9 Blue
    doc.text('EYE', 20 + bullsWidth, 20);
    
    // Add tagline in blue
    doc.setFontSize(10);
    doc.setFont('helvetica', 'normal');
    doc.setTextColor(41, 128, 185); // #2980B9 Blue
    doc.text('Trade Like A Pro', 20, 27);
    
    // Add user details
    doc.setFontSize(9);
    doc.setTextColor(60, 60, 60);
    doc.text('Account Holder: ' + userName, 20, 35);
    doc.text('Email: ' + userEmail, 20, 40);
    doc.text('Generated: ' + new Date().toLocaleString('en-IN'), 20, 45);
    
    // Add horizontal line
    doc.setDrawColor(200, 200, 200);
    doc.line(20, 50, 190, 50);
  }

  generateTradeHistoryReport(
    trades: any[],
    userName: string,
    userEmail: string
  ) {
    const doc = new jsPDF();
    
    // Add header
    this.addHeader(doc, userName, userEmail);
    
    // Add title
    doc.setFontSize(16);
    doc.setFont('helvetica', 'bold');
    doc.setTextColor(0, 0, 0);
    doc.text('Trade History Report', 20, 60);
    
    // Add subtitle
    doc.setFontSize(10);
    doc.setFont('helvetica', 'normal');
    doc.setTextColor(100, 100, 100);
    doc.text('Complete history of all stock trading transactions', 20, 67);
    
    // Prepare table data
    const tableData = trades.map(trade => {
      const date = trade.executedAt || trade.createdAt;
      const price = Number(trade.executedPrice || trade.limitPrice);
      const total = trade.quantity * price;
      
      return [
        new Date(date).toLocaleDateString('en-IN', { day: '2-digit', month: 'short', year: 'numeric' }),
        trade.action.toUpperCase(),
        trade.symbol,
        trade.companyName,
        trade.quantity.toString(),
        'Rs.' + price.toFixed(2),
        'Rs.' + total.toFixed(2)
      ];
    });
    
    // Add table
    autoTable(doc, {
      startY: 75,
      head: [['Date', 'Action', 'Symbol', 'Company', 'Qty', 'Price', 'Total']],
      body: tableData,
      theme: 'striped',
      headStyles: {
        fillColor: [255, 107, 53],
        textColor: [255, 255, 255],
        fontStyle: 'bold',
        halign: 'center'
      },
      styles: {
        fontSize: 9,
        cellPadding: 4,
        valign: 'middle',
        overflow: 'linebreak'
      },
      columnStyles: {
        0: { cellWidth: 28, halign: 'center' },
        1: { cellWidth: 22, halign: 'center' },
        2: { cellWidth: 28, halign: 'center' },
        3: { cellWidth: 50, halign: 'left' },
        4: { cellWidth: 18, halign: 'right' },
        5: { cellWidth: 28, halign: 'right' },
        6: { cellWidth: 32, halign: 'right', fontStyle: 'bold' }
      }
    });
    
    // Add footer
    const pageCount = (doc as any).internal.getNumberOfPages();
    for (let i = 1; i <= pageCount; i++) {
      doc.setPage(i);
      doc.setFontSize(8);
      doc.setTextColor(150, 150, 150);
      doc.text(
        'Page ' + i + ' of ' + pageCount,
        doc.internal.pageSize.getWidth() / 2,
        doc.internal.pageSize.getHeight() - 10,
        { align: 'center' }
      );
    }
    
    // Save PDF
    doc.save('BullsEye_TradeHistory_' + new Date().toISOString().split('T')[0] + '.pdf');
  }

  generateAccountStatement(
    transactions: any[],
    userName: string,
    userEmail: string,
    openingBalance: number
  ) {
    const doc = new jsPDF();
    
    // Add header
    this.addHeader(doc, userName, userEmail);
    
    // Add title
    doc.setFontSize(16);
    doc.setFont('helvetica', 'bold');
    doc.setTextColor(0, 0, 0);
    doc.text('Account Statement', 20, 60);
    
    // Add subtitle
    doc.setFontSize(10);
    doc.setFont('helvetica', 'normal');
    doc.setTextColor(100, 100, 100);
    doc.text('Complete transaction history including deposits, withdrawals, and trades', 20, 67);
    
    // Add opening balance
    doc.setFontSize(10);
    doc.setFont('helvetica', 'bold');
    doc.setTextColor(0, 0, 0);
    doc.text('Opening Balance: Rs.' + openingBalance.toFixed(2), 20, 75);
    
    // Prepare table data with running balance - filter out TRADE type entries
    let runningBalance = openingBalance;
    const tableData = transactions
      .filter(txn => txn.type !== 'TRADE') // Remove TRADE entries
      .map(txn => {
        const amount = Number(txn.amount);
        let debit = '';
        let credit = '';
        let description = txn.description || '-';
        
        if (txn.type === 'DEPOSIT') {
          credit = 'Rs.' + amount.toFixed(2);
          runningBalance += amount;
        } else if (txn.type === 'WITHDRAWAL') {
          debit = 'Rs.' + amount.toFixed(2);
          runningBalance -= amount;
        } else if (txn.type === 'BUY') {
          debit = 'Rs.' + amount.toFixed(2);
          runningBalance -= amount;
        } else if (txn.type === 'SELL') {
          credit = 'Rs.' + amount.toFixed(2);
          runningBalance += amount;
        }
        
        return [
          new Date(txn.createdAt).toLocaleDateString('en-IN', { day: '2-digit', month: 'short', year: 'numeric' }),
          txn.type,
          description,
          debit,
          credit,
          'Rs.' + runningBalance.toFixed(2)
        ];
      });
    
    // Add table
    autoTable(doc, {
      startY: 82,
      head: [['Date', 'Type', 'Description', 'Debit', 'Credit', 'Balance']],
      body: tableData,
      theme: 'striped',
      headStyles: {
        fillColor: [255, 107, 53],
        textColor: [255, 255, 255],
        fontStyle: 'bold',
        halign: 'center'
      },
      styles: {
        fontSize: 9,
        cellPadding: 4,
        valign: 'middle',
        overflow: 'linebreak'
      },
      columnStyles: {
        0: { cellWidth: 28, halign: 'center' },
        1: { cellWidth: 24, halign: 'center' },
        2: { cellWidth: 52, halign: 'left' },
        3: { cellWidth: 28, halign: 'right' },
        4: { cellWidth: 28, halign: 'right' },
        5: { cellWidth: 32, halign: 'right', fontStyle: 'bold' }
      }
    });
    
    // Add closing balance
    const finalY = (doc as any).lastAutoTable.finalY + 10;
    doc.setFontSize(11);
    doc.setFont('helvetica', 'bold');
    doc.setTextColor(0, 0, 0);
    doc.text('Closing Balance: Rs.' + runningBalance.toFixed(2), 20, finalY);
    
    // Add footer
    const pageCount = (doc as any).internal.getNumberOfPages();
    for (let i = 1; i <= pageCount; i++) {
      doc.setPage(i);
      doc.setFontSize(8);
      doc.setTextColor(150, 150, 150);
      doc.text(
        'Page ' + i + ' of ' + pageCount,
        doc.internal.pageSize.getWidth() / 2,
        doc.internal.pageSize.getHeight() - 10,
        { align: 'center' }
      );
    }
    
    // Save PDF
    doc.save('BullsEye_AccountStatement_' + new Date().toISOString().split('T')[0] + '.pdf');
  }

  generatePnLReport(
    pnlData: any[],
    userName: string,
    userEmail: string
  ) {
    const doc = new jsPDF();
    
    // Add header
    this.addHeader(doc, userName, userEmail);
    
    // Add title
    doc.setFontSize(16);
    doc.setFont('helvetica', 'bold');
    doc.setTextColor(0, 0, 0);
    doc.text('Profit & Loss Report', 20, 60);
    
    // Add subtitle
    doc.setFontSize(10);
    doc.setFont('helvetica', 'normal');
    doc.setTextColor(100, 100, 100);
    doc.text('Detailed P&L for all completed sell transactions', 20, 67);
    
    // Calculate totals
    const totalPnL = pnlData.reduce((sum, item) => sum + Number(item.pnl), 0);
    const totalProfit = pnlData.filter(item => Number(item.pnl) > 0).reduce((sum, item) => sum + Number(item.pnl), 0);
    const totalLoss = pnlData.filter(item => Number(item.pnl) < 0).reduce((sum, item) => sum + Number(item.pnl), 0);
    
    // Add summary
    doc.setFontSize(10);
    doc.setFont('helvetica', 'bold');
    doc.setTextColor(0, 0, 0);
    doc.text('Total P&L: ', 20, 75);
    doc.setTextColor(totalPnL >= 0 ? 0 : 255, totalPnL >= 0 ? 150 : 0, 0);
    doc.text('Rs.' + totalPnL.toFixed(2), 50, 75);
    
    doc.setTextColor(0, 150, 0);
    doc.setFont('helvetica', 'normal');
    doc.text('Total Profit: Rs.' + totalProfit.toFixed(2), 110, 75);
    
    doc.setTextColor(255, 0, 0);
    doc.text('Total Loss: Rs.' + Math.abs(totalLoss).toFixed(2), 110, 80);
    
    // Prepare table data
    const tableData = pnlData.map(item => {
      const pnl = Number(item.pnl);
      const pnlColor = pnl >= 0 ? [0, 150, 0] : [255, 0, 0];
      return [
        item.symbol,
        item.companyName,
        item.quantity.toString(),
        new Date(item.buyDate).toLocaleDateString('en-IN', { day: '2-digit', month: 'short', year: 'numeric' }),
        'Rs.' + Number(item.buyPrice).toFixed(2),
        new Date(item.sellDate).toLocaleDateString('en-IN', { day: '2-digit', month: 'short', year: 'numeric' }),
        'Rs.' + Number(item.sellPrice).toFixed(2),
        {
          content: 'Rs.' + pnl.toFixed(2),
          styles: { textColor: pnlColor, fontStyle: 'bold' }
        }
      ];
    });
    
    // Add table
    autoTable(doc, {
      startY: 88,
      head: [['Symbol', 'Company', 'Qty', 'Buy Date', 'Buy Price', 'Sell Date', 'Sell Price', 'P&L']],
      body: tableData,
      theme: 'striped',
      headStyles: {
        fillColor: [255, 107, 53],
        textColor: [255, 255, 255],
        fontStyle: 'bold',
        halign: 'center'
      },
      styles: {
        fontSize: 8,
        cellPadding: 3,
        valign: 'middle',
        overflow: 'linebreak'
      },
      columnStyles: {
        0: { cellWidth: 22, halign: 'center' },
        1: { cellWidth: 42, halign: 'left' },
        2: { cellWidth: 15, halign: 'right' },
        3: { cellWidth: 24, halign: 'center' },
        4: { cellWidth: 24, halign: 'right' },
        5: { cellWidth: 24, halign: 'center' },
        6: { cellWidth: 24, halign: 'right' },
        7: { cellWidth: 28, halign: 'right' }
      }
    });
    
    // Add footer
    const pageCount = (doc as any).internal.getNumberOfPages();
    for (let i = 1; i <= pageCount; i++) {
      doc.setPage(i);
      doc.setFontSize(8);
      doc.setTextColor(150, 150, 150);
      doc.text(
        'Page ' + i + ' of ' + pageCount,
        doc.internal.pageSize.getWidth() / 2,
        doc.internal.pageSize.getHeight() - 10,
        { align: 'center' }
      );
    }
    
    // Save PDF
    doc.save('BullsEye_PnL_Report_' + new Date().toISOString().split('T')[0] + '.pdf');
  }
}

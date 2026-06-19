import { Routes } from '@angular/router';

export const routes: Routes = [
  { path: '', redirectTo: 'landing', pathMatch: 'full' },

  {
    path: 'landing',
    loadComponent: () =>
      import('./pages/landing/landing').then(m => m.Landing)
  },
  {
    path: 'login',
    loadComponent: () =>
      import('./pages/login/login').then(m => m.LoginComponent)
  },
  {
    path: 'register',
    loadComponent: () =>
      import('./pages/register/register').then(m => m.RegisterComponent)
  },
  {
    path: 'forgot-password',
    loadComponent: () =>
      import('./pages/forgot-password/forgot-password').then(m => m.ForgotPasswordComponent)
  },
  {
    path: 'dashboard',
    loadComponent: () =>
      import('./pages/dashboard/dashboard').then(m => m.DashboardComponent)
  },
  {
    path: 'profile',
    loadComponent: () =>
      import('./pages/profile/profile').then(m => m.ProfileComponent)
  },
  {
    path: 'watchlist',
    loadComponent: () =>
      import('./pages/watchlist/watchlist').then(m => m.WatchlistComponent)
  },
  
  {
    path: 'orders',
    loadComponent: () =>
      import('./pages/orders/orders').then(m => m.OrdersComponent)
  },

  {
    path: 'portfolio',
    loadComponent: () =>
      import('./pages/portfolio/portfolio').then(m => m.PortfolioComponent)
  },

  {
    path: 'stock/:symbol',
    loadComponent: () =>
      import('./pages/stock-detail/stock-detail').then(m => m.StockDetailComponent)
  },

  { path: '**', redirectTo: 'landing' }
];
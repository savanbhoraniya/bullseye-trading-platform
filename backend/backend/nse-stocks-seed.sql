-- NSE Stock Data Seed Script
-- Run this in Render PostgreSQL database to populate initial stock data

-- Insert popular NSE stocks
INSERT INTO stocks (symbol, company_name, sector, market_cap, is_active, created_at, updated_at) VALUES
('RELIANCE', 'Reliance Industries Ltd', 'Oil & Gas', 1750000000000, true, NOW(), NOW()),
('TCS', 'Tata Consultancy Services Ltd', 'IT Services', 1300000000000, true, NOW(), NOW()),
('HDFCBANK', 'HDFC Bank Ltd', 'Banking', 1200000000000, true, NOW(), NOW()),
('INFY', 'Infosys Ltd', 'IT Services', 700000000000, true, NOW(), NOW()),
('ICICIBANK', 'ICICI Bank Ltd', 'Banking', 680000000000, true, NOW(), NOW()),
('HINDUNILVR', 'Hindustan Unilever Ltd', 'FMCG', 650000000000, true, NOW(), NOW()),
('ITC', 'ITC Ltd', 'FMCG', 550000000000, true, NOW(), NOW()),
('SBIN', 'State Bank of India', 'Banking', 520000000000, true, NOW(), NOW()),
('BHARTIARTL', 'Bharti Airtel Ltd', 'Telecom', 480000000000, true, NOW(), NOW()),
('KOTAKBANK', 'Kotak Mahindra Bank Ltd', 'Banking', 390000000000, true, NOW(), NOW()),
('LT', 'Larsen & Toubro Ltd', 'Construction', 480000000000, true, NOW(), NOW()),
('HCLTECH', 'HCL Technologies Ltd', 'IT Services', 380000000000, true, NOW(), NOW()),
('AXISBANK', 'Axis Bank Ltd', 'Banking', 320000000000, true, NOW(), NOW()),
('BAJFINANCE', 'Bajaj Finance Ltd', 'Finance', 440000000000, true, NOW(), NOW()),
('WIPRO', 'Wipro Ltd', 'IT Services', 280000000000, true, NOW(), NOW()),
('ASIANPAINT', 'Asian Paints Ltd', 'Paints', 290000000000, true, NOW(), NOW()),
('MARUTI', 'Maruti Suzuki India Ltd', 'Automobiles', 380000000000, true, NOW(), NOW()),
('TITAN', 'Titan Company Ltd', 'Consumer Durables', 320000000000, true, NOW(), NOW()),
('SUNPHARMA', 'Sun Pharmaceutical Industries Ltd', 'Pharma', 250000000000, true, NOW(), NOW()),
('ULTRACEMCO', 'UltraTech Cement Ltd', 'Cement', 330000000000, true, NOW(), NOW()),
('NESTLEIND', 'Nestle India Ltd', 'FMCG', 240000000000, true, NOW(), NOW()),
('TATAMOTORS', 'Tata Motors Ltd', 'Automobiles', 210000000000, true, NOW(), NOW()),
('TATASTEEL', 'Tata Steel Ltd', 'Steel', 150000000000, true, NOW(), NOW()),
('POWERGRID', 'Power Grid Corporation of India Ltd', 'Power', 220000000000, true, NOW(), NOW()),
('NTPC', 'NTPC Ltd', 'Power', 180000000000, true, NOW(), NOW()),
('M&M', 'Mahindra & Mahindra Ltd', 'Automobiles', 250000000000, true, NOW(), NOW()),
('TECHM', 'Tech Mahindra Ltd', 'IT Services', 130000000000, true, NOW(), NOW()),
('ONGC', 'Oil & Natural Gas Corporation Ltd', 'Oil & Gas', 190000000000, true, NOW(), NOW()),
('ADANIPORTS', 'Adani Ports & Special Economic Zone Ltd', 'Infrastructure', 280000000000, true, NOW(), NOW()),
('DRREDDY', 'Dr Reddys Laboratories Ltd', 'Pharma', 110000000000, true, NOW(), NOW()),
('JSWSTEEL', 'JSW Steel Ltd', 'Steel', 200000000000, true, NOW(), NOW()),
('INDUSINDBK', 'IndusInd Bank Ltd', 'Banking', 120000000000, true, NOW(), NOW()),
('CIPLA', 'Cipla Ltd', 'Pharma', 110000000000, true, NOW(), NOW()),
('DIVISLAB', 'Divi''s Laboratories Ltd', 'Pharma', 140000000000, true, NOW(), NOW()),
('EICHERMOT', 'Eicher Motors Ltd', 'Automobiles', 130000000000, true, NOW(), NOW()),
('GRASIM', 'Grasim Industries Ltd', 'Cement', 140000000000, true, NOW(), NOW()),
('HEROMOTOCO', 'Hero MotoCorp Ltd', 'Automobiles', 90000000000, true, NOW(), NOW()),
('BRITANNIA', 'Britannia Industries Ltd', 'FMCG', 140000000000, true, NOW(), NOW()),
('BAJAJFINSV', 'Bajaj Finserv Ltd', 'Finance', 270000000000, true, NOW(), NOW()),
('APOLLOHOSP', 'Apollo Hospitals Enterprise Ltd', 'Healthcare', 90000000000, true, NOW(), NOW()),
('SBILIFE', 'SBI Life Insurance Company Ltd', 'Insurance', 140000000000, true, NOW(), NOW()),
('HINDALCO', 'Hindalco Industries Ltd', 'Metals', 120000000000, true, NOW(), NOW()),
('SHREECEM', 'Shree Cement Ltd', 'Cement', 100000000000, true, NOW(), NOW()),
('COALINDIA', 'Coal India Ltd', 'Mining', 140000000000, true, NOW(), NOW()),
('BPCL', 'Bharat Petroleum Corporation Ltd', 'Oil & Gas', 100000000000, true, NOW(), NOW()),
('TATACONSUM', 'Tata Consumer Products Ltd', 'FMCG', 90000000000, true, NOW(), NOW()),
('ADANIENT', 'Adani Enterprises Ltd', 'Diversified', 320000000000, true, NOW(), NOW()),
('BAJAJ-AUTO', 'Bajaj Auto Ltd', 'Automobiles', 180000000000, true, NOW(), NOW()),
('HDFCLIFE', 'HDFC Life Insurance Company Ltd', 'Insurance', 150000000000, true, NOW(), NOW()),
('VEDL', 'Vedanta Ltd', 'Metals', 110000000000, true, NOW(), NOW())
ON CONFLICT (symbol) DO NOTHING;

-- Insert initial stock prices (these will be updated by the price update service)
INSERT INTO stock_prices (stock_id, price, change_amount, change_percentage, volume, last_updated)
SELECT 
    id,
    0.00 as price,
    0.00 as change_amount,
    0.00 as change_percentage,
    0 as volume,
    NOW() as last_updated
FROM stocks
WHERE NOT EXISTS (
    SELECT 1 FROM stock_prices WHERE stock_prices.stock_id = stocks.id
);

-- Verify the data
SELECT COUNT(*) as total_stocks FROM stocks;
SELECT COUNT(*) as total_prices FROM stock_prices;

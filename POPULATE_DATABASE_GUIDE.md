# How to Populate Your Render Database with Stock Data

## Problem
Your application is deployed but shows no stock prices because the database is empty.

## Solution
Run the SQL seed script to populate NSE stocks.

---

## Method 1: Using Render Dashboard (Easiest)

1. **Go to Render Dashboard** → Your PostgreSQL database
2. Click **"Connect"** tab
3. Copy the **PSQL Command** (looks like this):
   ```
   PGPASSWORD=your_password psql -h dpg-xxx.oregon-postgres.render.com -U bullseye_user bullseye_db_txs7
   ```
4. **Open Terminal** and paste the command
5. Once connected, **copy and paste the entire SQL script** from `backend/backend/nse-stocks-seed.sql`
6. Press Enter and wait for it to complete
7. Type `\q` to exit

---

## Method 2: Using a Database Client (pgAdmin, DBeaver, TablePlus)

1. **Get External Database URL** from Render:
   - Dashboard → PostgreSQL → Connect → External Database URL
   - Format: `postgresql://user:password@host:port/database`

2. **Connect using your client:**
   - Host: (from URL)
   - Port: 5432
   - Database: bullseye_db_txs7
   - Username: bullseye_user
   - Password: (from URL)

3. **Execute the SQL script:**
   - Open `backend/backend/nse-stocks-seed.sql`
   - Run the entire script

---

## Method 3: Manual API Call (After Backend is Running)

If your backend has an endpoint to trigger stock updates:

```bash
curl -X POST https://bullseye-backend-kybu.onrender.com/api/stocks/update
```

**Note:** This only updates prices. You still need to add the stock records first using Method 1 or 2.

---

## Verify Data Loaded

After running the seed script, verify in psql:

```sql
-- Count stocks
SELECT COUNT(*) FROM stocks;

-- View first 10 stocks
SELECT symbol, company_name, sector FROM stocks LIMIT 10;

-- Check prices
SELECT COUNT(*) FROM stock_prices;
```

You should see:
- **50 stocks** in the `stocks` table
- **50 records** in the `stock_prices` table

---

## After Loading Data

1. **Trigger Price Update** (to get live prices):
   ```bash
   curl -X POST https://bullseye-backend-kybu.onrender.com/api/stocks/update
   ```

2. **Refresh your app** - Stocks should now appear in:
   - Ticker bar at top
   - Search results
   - Dashboard

---

## Need More Stocks?

Edit `nse-stocks-seed.sql` and add more stocks following the same format:

```sql
INSERT INTO stocks (symbol, company_name, sector, market_cap, is_active, created_at, updated_at) VALUES
('YOURSYMBOL', 'Company Name', 'Sector', 1000000000, true, NOW(), NOW());
```

Then run the script again.

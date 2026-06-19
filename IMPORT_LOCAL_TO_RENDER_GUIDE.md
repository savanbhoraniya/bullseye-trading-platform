# Import 2100 Stocks from Local Database to Render Database

## Complete Step-by-Step Guide

---

## 📤 PART 1: Export from Local Database

### Step 1: Open Local Database in pgAdmin

1. Open **pgAdmin**
2. In the left sidebar, find your **LOCAL PostgreSQL server**
3. Expand: **Servers** → **Your Local Server** → **Databases** → **bullseye_db_txs7**
4. Expand: **Schemas** → **public** → **Tables**

### Step 2: Export Stocks Table

1. **Right-click on "stocks" table**
2. Select **"Backup..."** from the menu
3. In the Backup dialog:
   
   **General Tab:**
   - **Filename:** Click the folder button (📁) and choose:
     ```
     /Users/savanbhoraniya/Desktop/stocks_backup.sql
     ```
   - **Format:** Select **"Plain"**
   - **Compression:** Leave as default (0)
   - **Encoding:** UTF8

   **Data/Objects Tab:**
   - ✅ Check **"Only data"** (we don't need table structure)
   - ✅ Check **"Use Column Inserts"** (important for compatibility)
   - ✅ Check **"Use INSERT commands"**

   **Query Options Tab:**
   - ✅ Check **"ON_CONFLICT_DO_NOTHING"** (if available)

4. Click **"Backup"** button
5. Wait for completion (might take 30 seconds - 1 minute)
6. Check your Desktop - you should see `stocks_backup.sql` file

### Step 3: Export Stock_Prices Table

1. **Right-click on "stock_prices" table**
2. Select **"Backup..."**
3. Same settings as above:
   - Filename: `/Users/savanbhoraniya/Desktop/stock_prices_backup.sql`
   - Format: Plain
   - Encoding: UTF8
   - Data/Objects tab: Check **"Only data"** and **"Use Column Inserts"**
4. Click **"Backup"**
5. Wait for completion

---

## 📥 PART 2: Import to Render Database

### Step 4: Connect to Render Database

1. In pgAdmin left sidebar, find **"Bullseye Render DB"** server
2. Expand: **Bullseye Render DB** → **Databases** → **bullseye_db_txs7**
3. **Right-click on "bullseye_db_txs7"** database
4. Select **"Query Tool"**

A new query editor window will open.

### Step 5: Import Stocks Data

1. In the Query Tool window, click **File** → **Open** (or click the folder icon 📁 in toolbar)
2. Navigate to your Desktop
3. Select **"stocks_backup.sql"**
4. Click **Open**
5. The SQL content will load into the editor (might take a few seconds)
6. Click the **Execute button (▶️)** or press **F5**
7. **Wait for completion** (2-3 minutes for 2100 records)
8. Check the "Messages" tab at the bottom - you should see:
   ```
   INSERT 0 1
   INSERT 0 1
   ... (2100 times)
   Query returned successfully
   ```

### Step 6: Import Stock_Prices Data

1. Clear the Query Tool (select all and delete, or open a new Query Tool)
2. Click **File** → **Open**
3. Select **"stock_prices_backup.sql"** from Desktop
4. Click **Open**
5. Click **Execute (▶️)** or press **F5**
6. Wait for completion (2-3 minutes)
7. Check for success messages

### Step 7: Verify Import

In the same Query Tool, run this verification query:

```sql
-- Check stocks count
SELECT COUNT(*) as total_stocks FROM stocks;

-- Check stock_prices count
SELECT COUNT(*) as total_prices FROM stock_prices;

-- View sample stocks
SELECT symbol, company_name, sector FROM stocks LIMIT 10;

-- Check if prices are linked correctly
SELECT 
    s.symbol, 
    s.company_name, 
    sp.price, 
    sp.change_percentage
FROM stocks s
LEFT JOIN stock_prices sp ON s.id = sp.stock_id
LIMIT 10;
```

**Expected Results:**
- total_stocks: **2100**
- total_prices: **2100**
- Sample data should show your NSE stocks

---

## ✅ PART 3: Final Steps

### Step 8: Update Live Prices

After data is imported, trigger a price update from your backend:

**Option A: Using Terminal**
```bash
curl -X POST https://bullseye-backend-kybu.onrender.com/api/stocks/update
```

**Option B: Using Browser**
Open this URL in your browser:
```
https://bullseye-backend-kybu.onrender.com/api/stocks/update
```

### Step 9: Test Your Application

1. Open your live app: https://bullseye-trading-platform.vercel.app
2. You should now see:
   - ✅ Stock ticker showing prices
   - ✅ Search working with all 2100 stocks
   - ✅ Dashboard showing market data

---

## 🔧 Troubleshooting

### If Export Fails:
- Make sure you selected **"Plain"** format, not "Custom" or "Tar"
- Make sure **"Use Column Inserts"** is checked
- Try exporting fewer records first (add a LIMIT in backup options)

### If Import Fails with "Duplicate Key" Error:
The Render database might already have some stocks. Two options:

**Option 1: Clear existing data first**
```sql
-- Run in Render database BEFORE importing
DELETE FROM stock_prices;
DELETE FROM stocks;
```

**Option 2: Edit the backup file**
Open the `.sql` files and replace:
```sql
INSERT INTO stocks
```
with:
```sql
INSERT INTO stocks ... ON CONFLICT (symbol) DO NOTHING
```

### If Import is Too Slow:
- Close other applications to free up memory
- Make sure you have stable internet connection
- Consider importing in batches (split the file)

---

## 📊 Quick Reference

| Step | Action | Time |
|------|--------|------|
| 1-3 | Export from local | 2-3 minutes |
| 4 | Connect to Render | 10 seconds |
| 5 | Import stocks | 2-3 minutes |
| 6 | Import prices | 2-3 minutes |
| 7 | Verify | 30 seconds |
| 8 | Update prices | 1 minute |

**Total Time:** ~10-15 minutes

---

## ✨ Done!

Your Render database now has all 2100 NSE stocks and your application is fully functional! 🎉

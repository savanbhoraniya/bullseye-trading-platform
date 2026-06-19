#!/bin/bash

# Script to export clean SQL from local database
# This creates INSERT statements without PostgreSQL metadata

echo "🔄 Exporting stocks from local database..."

# You may need to adjust these connection parameters
LOCAL_HOST="localhost"
LOCAL_USER="postgres"  # Change this to your local PostgreSQL username
LOCAL_DB="bullseye_db_txs7"

# Export stocks with clean INSERT statements
PGPASSWORD="your_local_password" pg_dump \
  -h $LOCAL_HOST \
  -U $LOCAL_USER \
  -d $LOCAL_DB \
  --table=stocks \
  --data-only \
  --column-inserts \
  --no-owner \
  --no-acl \
  --no-comments \
  --no-privileges \
  --no-tablespaces \
  --on-conflict-do-nothing \
  -f ~/Desktop/stocks_clean_export.sql

echo "✅ Stocks exported to: ~/Desktop/stocks_clean_export.sql"

# Export stock_prices
echo "🔄 Exporting stock_prices from local database..."

PGPASSWORD="your_local_password" pg_dump \
  -h $LOCAL_HOST \
  -U $LOCAL_USER \
  -d $LOCAL_DB \
  --table=stock_prices \
  --data-only \
  --column-inserts \
  --no-owner \
  --no-acl \
  --no-comments \
  --no-privileges \
  --no-tablespaces \
  -f ~/Desktop/stock_prices_clean_export.sql

echo "✅ Stock prices exported to: ~/Desktop/stock_prices_clean_export.sql"
echo ""
echo "📝 Now import these files in Render database using pgAdmin Query Tool"

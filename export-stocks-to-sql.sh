#!/bin/bash

# Script to export stocks from local database to SQL file
# This creates a clean SQL file that can be imported to Render

echo "📦 Exporting stocks from local database..."
echo ""
echo "⚠️  You'll be prompted for your LOCAL PostgreSQL password"
echo ""

# Export stocks as INSERT statements
psql -h localhost -U postgres -d bullseye_db_txs7 -c "
COPY (
    SELECT 
        'INSERT INTO stocks (symbol, company_name, created_at, industry, is_active, isin, sector, series) VALUES ' ||
        '(''' || symbol || ''', ''' || 
        replace(company_name, '''', '''''') || ''', ''' || 
        created_at || ''', ''' || 
        COALESCE(industry, '') || ''', ' || 
        is_active || ', ''' || 
        COALESCE(isin, '') || ''', ''' || 
        COALESCE(sector, '') || ''', ''' || 
        COALESCE(series, '') || ''') ON CONFLICT (symbol) DO NOTHING;'
    FROM stocks
    ORDER BY symbol
) TO STDOUT
" > ~/Desktop/stocks_insert.sql

if [ $? -eq 0 ]; then
    echo "✅ Export successful!"
    echo "📄 File saved to: ~/Desktop/stocks_insert.sql"
    echo ""
    echo "Lines in file:"
    wc -l ~/Desktop/stocks_insert.sql
    echo ""
    echo "📋 Next steps:"
    echo "1. Open Render database in pgAdmin"
    echo "2. Open Query Tool"
    echo "3. File → Open → Select ~/Desktop/stocks_insert.sql"
    echo "4. Execute (▶️)"
else
    echo "❌ Export failed!"
    echo "Make sure PostgreSQL is running and credentials are correct"
fi

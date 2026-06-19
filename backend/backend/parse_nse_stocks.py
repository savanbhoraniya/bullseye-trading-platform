#!/usr/bin/env python3
"""
Parse NSE equity list CSV and generate SQL INSERT statements
"""

import csv
import sys

def parse_nse_csv(input_file, output_file):
    """Parse CSV and generate SQL"""
    
    sql_statements = []
    sql_statements.append("-- Insert all NSE equity stocks from official list")
    sql_statements.append("-- Total stocks: Will be counted below")
    sql_statements.append("BEGIN;")
    sql_statements.append("")
    
    count = 0
    skipped = 0
    
    try:
        with open(input_file, 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            
            for row in reader:
                try:
                    symbol = row['SYMBOL'].strip()
                    company_name = row['NAME OF COMPANY'].strip()
                    series = row[' SERIES'].strip()  # Note: leading space in CSV
                    isin = row[' ISIN NUMBER'].strip()
                    
                    # Only process equity stocks (series = EQ)
                    if series != 'EQ':
                        skipped += 1
                        continue
                    
                    # Skip if no symbol or company name
                    if not symbol or not company_name:
                        skipped += 1
                        continue
                    
                    # Escape single quotes in company name
                    company_name = company_name.replace("'", "''")
                    
                    # Generate SQL INSERT with ON CONFLICT to handle duplicates
                    sql = f"""INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('{symbol}', '{company_name}', 'General', 'General', '{series}', '{isin}', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;"""
                    
                    sql_statements.append(sql)
                    count += 1
                    
                except KeyError as e:
                    print(f"Warning: Missing column {e} in row: {row}", file=sys.stderr)
                    skipped += 1
                except Exception as e:
                    print(f"Error processing row: {e}", file=sys.stderr)
                    skipped += 1
    
    except FileNotFoundError:
        print(f"Error: File '{input_file}' not found", file=sys.stderr)
        return False
    except Exception as e:
        print(f"Error reading CSV: {e}", file=sys.stderr)
        return False
    
    sql_statements.append("")
    sql_statements.append("COMMIT;")
    sql_statements.append("")
    sql_statements.append(f"-- Successfully processed: {count} stocks")
    sql_statements.append(f"-- Skipped (non-EQ or invalid): {skipped} entries")
    
    # Write to output file
    try:
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(sql_statements))
        
        print(f"✅ Successfully generated SQL for {count} stocks")
        print(f"   Skipped: {skipped} entries")
        print(f"   Output: {output_file}")
        return True
        
    except Exception as e:
        print(f"Error writing SQL file: {e}", file=sys.stderr)
        return False

if __name__ == "__main__":
    input_csv = "nse_equity_list.csv"
    output_sql = "insert_all_nse_stocks.sql"
    
    success = parse_nse_csv(input_csv, output_sql)
    sys.exit(0 if success else 1)

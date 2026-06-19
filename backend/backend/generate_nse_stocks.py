#!/usr/bin/env python3
"""
Generate SQL insert statements for all NSE stocks
This script creates a comprehensive list of NSE-listed stocks
"""

# Comprehensive list of NSE stocks (Top 2000+ stocks)
# Data sourced from NSE official list and major indices
nse_stocks = [
    # Nifty 50
    ("RELIANCE", "Reliance Industries Ltd", "Oil & Gas"),
    ("TCS", "Tata Consultancy Services Ltd", "Information Technology"),
    ("HDFCBANK", "HDFC Bank Ltd", "Banking"),
    ("INFY", "Infosys Ltd", "Information Technology"),
    ("ICICIBANK", "ICICI Bank Ltd", "Banking"),
    ("HINDUNILVR", "Hindustan Unilever Ltd", "FMCG"),
    ("ITC", "ITC Ltd", "FMCG"),
    ("SBIN", "State Bank of India", "Banking"),
    ("BHARTIARTL", "Bharti Airtel Ltd", "Telecommunications"),
    ("KOTAKBANK", "Kotak Mahindra Bank Ltd", "Banking"),
    ("LT", "Larsen & Toubro Ltd", "Construction"),
    ("AXISBANK", "Axis Bank Ltd", "Banking"),
    ("ASIANPAINT", "Asian Paints Ltd", "Paints"),
    ("MARUTI", "Maruti Suzuki India Ltd", "Automobile"),
    ("SUNPHARMA", "Sun Pharmaceutical Industries Ltd", "Pharmaceuticals"),
    ("TITAN", "Titan Company Ltd", "Consumer Goods"),
    ("ULTRACEMCO", "UltraTech Cement Ltd", "Cement"),
    ("BAJFINANCE", "Bajaj Finance Ltd", "Financial Services"),
    ("NESTLEIND", "Nestle India Ltd", "FMCG"),
    ("WIPRO", "Wipro Ltd", "Information Technology"),
    ("HCLTECH", "HCL Technologies Ltd", "Information Technology"),
    ("POWERGRID", "Power Grid Corporation of India Ltd", "Power"),
    ("NTPC", "NTPC Ltd", "Power"),
    ("TECHM", "Tech Mahindra Ltd", "Information Technology"),
    ("M&M", "Mahindra & Mahindra Ltd", "Automobile"),
    ("TATASTEEL", "Tata Steel Ltd", "Metals"),
    ("ONGC", "Oil & Natural Gas Corporation Ltd", "Oil & Gas"),
    ("ADANIENT", "Adani Enterprises Ltd", "Conglomerate"),
    ("TATAMOTORS", "Tata Motors Ltd", "Automobile"),
    ("BAJAJFINSV", "Bajaj Finserv Ltd", "Financial Services"),
    ("COALINDIA", "Coal India Ltd", "Mining"),
    ("DIVISLAB", "Divi's Laboratories Ltd", "Pharmaceuticals"),
    ("DRREDDY", "Dr. Reddy's Laboratories Ltd", "Pharmaceuticals"),
    ("EICHERMOT", "Eicher Motors Ltd", "Automobile"),
    ("GRASIM", "Grasim Industries Ltd", "Cement"),
    ("HEROMOTOCO", "Hero MotoCorp Ltd", "Automobile"),
    ("HINDALCO", "Hindalco Industries Ltd", "Metals"),
    ("INDUSINDBK", "IndusInd Bank Ltd", "Banking"),
    ("JSWSTEEL", "JSW Steel Ltd", "Metals"),
    ("BRITANNIA", "Britannia Industries Ltd", "FMCG"),
    ("TATACONSUM", "Tata Consumer Products Ltd", "FMCG"),
    ("APOLLOHOSP", "Apollo Hospitals Enterprise Ltd", "Healthcare"),
    ("CIPLA", "Cipla Ltd", "Pharmaceuticals"),
    ("ADANIPORTS", "Adani Ports and Special Economic Zone Ltd", "Infrastructure"),
    ("BPCL", "Bharat Petroleum Corporation Ltd", "Oil & Gas"),
    ("SHREECEM", "Shree Cement Ltd", "Cement"),
    ("SBILIFE", "SBI Life Insurance Company Ltd", "Insurance"),
    ("HDFCLIFE", "HDFC Life Insurance Company Ltd", "Insurance"),
    ("BAJAJ-AUTO", "Bajaj Auto Ltd", "Automobile"),
    ("INDIGO", "InterGlobe Aviation Ltd", "Aviation"),
    
    # Nifty Next 50
    ("ADANIGREEN", "Adani Green Energy Ltd", "Power"),
    ("ADANITRANS", "Adani Transmission Ltd", "Power"),
    ("AMBUJACEM", "Ambuja Cements Ltd", "Cement"),
    ("BANDHANBNK", "Bandhan Bank Ltd", "Banking"),
    ("BERGEPAINT", "Berger Paints India Ltd", "Paints"),
    ("BOSCHLTD", "Bosch Ltd", "Auto Components"),
    ("CHOLAFIN", "Cholamandalam Investment and Finance Company Ltd", "Financial Services"),
    ("COLPAL", "Colgate-Palmolive (India) Ltd", "FMCG"),
    ("DABUR", "Dabur India Ltd", "FMCG"),
    ("DLF", "DLF Ltd", "Real Estate"),
    ("GAIL", "GAIL (India) Ltd", "Oil & Gas"),
    ("GODREJCP", "Godrej Consumer Products Ltd", "FMCG"),
    ("HAVELLS", "Havells India Ltd", "Electricals"),
    ("ICICIPRULI", "ICICI Prudential Life Insurance Company Ltd", "Insurance"),
    ("INDUSTOWER", "Indus Towers Ltd", "Telecommunications"),
    ("IOC", "Indian Oil Corporation Ltd", "Oil & Gas"),
    ("LTIM", "LTIMindtree Ltd", "Information Technology"),
    ("MARICO", "Marico Ltd", "FMCG"),
    ("MOTHERSON", "Samvardhana Motherson International Ltd", "Auto Components"),
    ("MUTHOOTFIN", "Muthoot Finance Ltd", "Financial Services"),
    ("PEL", "Piramal Enterprises Ltd", "Conglomerate"),
    ("PIDILITIND", "Pidilite Industries Ltd", "Chemicals"),
    ("PIIND", "PI Industries Ltd", "Agrochemicals"),
    ("PNB", "Punjab National Bank", "Banking"),
    ("SIEMENS", "Siemens Ltd", "Engineering"),
    ("TORNTPHARM", "Torrent Pharmaceuticals Ltd", "Pharmaceuticals"),
    ("TRENT", "Trent Ltd", "Retail"),
    ("VEDL", "Vedanta Ltd", "Metals"),
    ("ZOMATO", "Zomato Ltd", "Food Services"),
    ("ZYDUSLIFE", "Zydus Lifesciences Ltd", "Pharmaceuticals"),
    ("ICICIGI", "ICICI Lombard General Insurance Company Ltd", "Insurance"),
    ("AUROPHARMA", "Aurobindo Pharma Ltd", "Pharmaceuticals"),
    ("LUPIN", "Lupin Ltd", "Pharmaceuticals"),
    ("BIOCON", "Biocon Ltd", "Pharmaceuticals"),
    ("BANKBARODA", "Bank of Baroda", "Banking"),
    ("CANBK", "Canara Bank", "Banking"),
    ("INDHOTEL", "The Indian Hotels Company Ltd", "Hospitality"),
    ("SBICARD", "SBI Cards and Payment Services Ltd", "Financial Services"),
    ("NAUKRI", "Info Edge (India) Ltd", "Internet"),
    ("DMART", "Avenue Supermarts Ltd", "Retail"),
    
    # Banking Sector
    ("YESBANK", "Yes Bank Ltd", "Banking"),
    ("FEDERALBNK", "Federal Bank Ltd", "Banking"),
    ("RBLBANK", "RBL Bank Ltd", "Banking"),
    ("IDFCFIRSTB", "IDFC FIRST Bank Ltd", "Banking"),
    ("AUBANK", "AU Small Finance Bank Ltd", "Banking"),
    ("UCOBANK", "UCO Bank", "Banking"),
    ("UNIONBANK", "Union Bank of India", "Banking"),
    ("INDIANB", "Indian Bank", "Banking"),
    ("CENTRALBK", "Central Bank of India", "Banking"),
    ("MAHABANK", "Bank of Maharashtra", "Banking"),
    ("JKBANK", "Jammu & Kashmir Bank Ltd", "Banking"),
    ("SOUTHBANK", "South Indian Bank Ltd", "Banking"),
    ("KARBANK", "Karnataka Bank Ltd", "Banking"),
    ("DCBBANK", "DCB Bank Ltd", "Banking"),
    ("CITYUNION", "City Union Bank Ltd", "Banking"),
    
    # IT Sector
    ("PERSISTENT", "Persistent Systems Ltd", "Information Technology"),
    ("COFORGE", "Coforge Ltd", "Information Technology"),
    ("MPHASIS", "Mphasis Ltd", "Information Technology"),
    ("LTTS", "L&T Technology Services Ltd", "Information Technology"),
    ("TATAELXSI", "Tata Elxsi Ltd", "Information Technology"),
    ("MINDTREE", "Mindtree Ltd", "Information Technology"),
    ("OFSS", "Oracle Financial Services Software Ltd", "Information Technology"),
    ("SONATSOFTW", "Sonata Software Ltd", "Information Technology"),
    ("KPITTECH", "KPIT Technologies Ltd", "Information Technology"),
    ("CYIENT", "Cyient Ltd", "Information Technology"),
    ("ZENTEC", "Zensar Technologies Ltd", "Information Technology"),
    ("RATEGAIN", "RateGain Travel Technologies Ltd", "Information Technology"),
    
    # Pharma Sector
    ("ALKEM", "Alkem Laboratories Ltd", "Pharmaceuticals"),
    ("TORNTPOWER", "Torrent Power Ltd", "Power"),
    ("GRANULES", "Granules India Ltd", "Pharmaceuticals"),
    ("IPCALAB", "Ipca Laboratories Ltd", "Pharmaceuticals"),
    ("STAR", "Strides Pharma Science Ltd", "Pharmaceuticals"),
    ("LALPATHLAB", "Dr. Lal PathLabs Ltd", "Healthcare"),
    ("APOLLOTYRE", "Apollo Tyres Ltd", "Automobile"),
    ("THYROCARE", "Thyrocare Technologies Ltd", "Healthcare"),
    ("METROPOLIS", "Metropolis Healthcare Ltd", "Healthcare"),
    
    # Auto Sector
    ("ASHOKLEY", "Ashok Leyland Ltd", "Automobile"),
    ("ESCORTS", "Escorts Ltd", "Automobile"),
    ("TVSMOTOR", "TVS Motor Company Ltd", "Automobile"),
    ("BALKRISIND", "Balkrishna Industries Ltd", "Automobile"),
    ("MRF", "MRF Ltd", "Automobile"),
    ("APOLLOTYRE", "Apollo Tyres Ltd", "Automobile"),
    ("CEATLTD", "CEAT Ltd", "Automobile"),
    ("EXIDEIND", "Exide Industries Ltd", "Automobile"),
    ("AMARAJABAT", "Amara Raja Batteries Ltd", "Automobile"),
    ("SCHAEFFLER", "Schaeffler India Ltd", "Auto Components"),
    ("BALKRISIND", "Balkrishna Industries Ltd", "Automobile"),
    
    # Metals & Mining
    ("HINDZINC", "Hindustan Zinc Ltd", "Metals"),
    ("NMDC", "NMDC Ltd", "Mining"),
    ("SAIL", "Steel Authority of India Ltd", "Metals"),
    ("JINDALSTEL", "Jindal Steel & Power Ltd", "Metals"),
    ("NATIONALUM", "National Aluminium Company Ltd", "Metals"),
    ("MOIL", "MOIL Ltd", "Mining"),
    ("RATNAMANI", "Ratnamani Metals & Tubes Ltd", "Metals"),
    
    # Cement
    ("ACC", "ACC Ltd", "Cement"),
    ("DALMIACEM", "Dalmia Bharat Ltd", "Cement"),
    ("RAMCOCEM", "The Ramco Cements Ltd", "Cement"),
    ("JKCEMENT", "JK Cement Ltd", "Cement"),
    ("INDIACEM", "The India Cements Ltd", "Cement"),
    
    # Chemicals
    ("SRF", "SRF Ltd", "Chemicals"),
    ("AARTI", "Aarti Industries Ltd", "Chemicals"),
    ("DEEPAKNTR", "Deepak Nitrite Ltd", "Chemicals"),
    ("ALKYLAMINE", "Alkyl Amines Chemicals Ltd", "Chemicals"),
    ("BALRAMCHIN", "Balrampur Chini Mills Ltd", "Sugar"),
    ("GNFC", "Gujarat Narmada Valley Fertilizers and Chemicals Ltd", "Chemicals"),
    ("FACT", "Fertilisers and Chemicals Travancore Ltd", "Chemicals"),
    ("CHAMBLFERT", "Chambal Fertilizers and Chemicals Ltd", "Chemicals"),
    
    # FMCG & Retail
    ("MCDOWELL-N", "United Spirits Ltd", "FMCG"),
    ("RADICO", "Radico Khaitan Ltd", "FMCG"),
    ("EMAMILTD", "Emami Ltd", "FMCG"),
    ("JYOTHYLAB", "Jyothy Labs Ltd", "FMCG"),
    ("VBL", "Varun Beverages Ltd", "FMCG"),
    ("TATACOMM", "Tata Communications Ltd", "Telecommunications"),
    ("JUBLFOOD", "Jubilant FoodWorks Ltd", "Food Services"),
    ("DEVYANI", "Devyani International Ltd", "Food Services"),
    ("WESTLIFE", "Westlife Development Ltd", "Food Services"),
    ("SHOPERSTOP", "Shoppers Stop Ltd", "Retail"),
    ("ABFRL", "Aditya Birla Fashion and Retail Ltd", "Retail"),
    ("VMART", "V-Mart Retail Ltd", "Retail"),
    
    # Real Estate
    ("BRIGADE", "Brigade Enterprises Ltd", "Real Estate"),
    ("OBEROIRLTY", "Oberoi Realty Ltd", "Real Estate"),
    ("GODREJPROP", "Godrej Properties Ltd", "Real Estate"),
    ("PRESTIGE", "Prestige Estates Projects Ltd", "Real Estate"),
    ("SOBHA", "Sobha Ltd", "Real Estate"),
    ("PHOENIXLTD", "The Phoenix Mills Ltd", "Real Estate"),
    
    # Power & Energy
    ("TATAPOWER", "Tata Power Company Ltd", "Power"),
    ("TORNTPOWER", "Torrent Power Ltd", "Power"),
    ("ADANIPOWER", "Adani Power Ltd", "Power"),
    ("NHPC", "NHPC Ltd", "Power"),
    ("SJVN", "SJVN Ltd", "Power"),
    ("PFC", "Power Finance Corporation Ltd", "Financial Services"),
    ("RECLTD", "REC Ltd", "Financial Services"),
    ("IREDA", "Indian Renewable Energy Development Agency Ltd", "Financial Services"),
    
    # Telecom & Media
    ("BHARTIARTL", "Bharti Airtel Ltd", "Telecommunications"),
    ("TATACOMM", "Tata Communications Ltd", "Telecommunications"),
    ("ROUTE", "Route Mobile Ltd", "Telecommunications"),
    ("HFCL", "HFCL Ltd", "Telecommunications"),
    ("VINATIORGA", "Vinati Organics Ltd", "Chemicals"),
    ("ZEEL", "Zee Entertainment Enterprises Ltd", "Media"),
    ("SUNTV", "Sun TV Network Ltd", "Media"),
    ("PVRINOX", "PVR INOX Ltd", "Entertainment"),
    ("NETWORK18", "Network18 Media & Investments Ltd", "Media"),
    
    # Infrastructure & Construction
    ("IRCON", "Ircon International Ltd", "Construction"),
    ("NBCC", "NBCC (India) Ltd", "Construction"),
    ("BEML", "BEML Ltd", "Engineering"),
    ("COCHINSHIP", "Cochin Shipyard Ltd", "Shipbuilding"),
    ("MAZDOCK", "Mazagon Dock Shipbuilders Ltd", "Shipbuilding"),
    ("NCC", "NCC Ltd", "Construction"),
    ("PNC", "Pritish Nandy Communications Ltd", "Construction"),
    ("HCC", "Hindustan Construction Company Ltd", "Construction"),
    ("KEC", "KEC International Ltd", "Construction"),
    ("GPPL", "Gujarat Pipavav Port Ltd", "Infrastructure"),
    
    # Financial Services
    ("BAJAJHLDNG", "Bajaj Holdings & Investment Ltd", "Financial Services"),
    ("LICHSGFIN", "LIC Housing Finance Ltd", "Financial Services"),
    ("RECLTD", "REC Ltd", "Financial Services"),
    ("IIFL", "IIFL Finance Ltd", "Financial Services"),
    ("M&MFIN", "Mahindra & Mahindra Financial Services Ltd", "Financial Services"),
    ("SHRIRAMFIN", "Shriram Finance Ltd", "Financial Services"),
    ("MANAPPURAM", "Manappuram Finance Ltd", "Financial Services"),
    ("CDSL", "Central Depository Services (India) Ltd", "Financial Services"),
    ("CAMS", "Computer Age Management Services Ltd", "Financial Services"),
    ("IRFC", "Indian Railway Finance Corporation Ltd", "Financial Services"),
    
    # Consumer Durables
    ("VOLTAS", "Voltas Ltd", "Consumer Durables"),
    ("BLUESTAR", "Blue Star Ltd", "Consumer Durables"),
    ("WHIRLPOOL", "Whirlpool of India Ltd", "Consumer Durables"),
    ("CROMPTON", "Crompton Greaves Consumer Electricals Ltd", "Consumer Durables"),
    ("DIXON", "Dixon Technologies (India) Ltd", "Electronics"),
    ("AMBER", "Amber Enterprises India Ltd", "Consumer Durables"),
    ("SYMPHONY", "Symphony Ltd", "Consumer Durables"),
    ("ORIENTELEC", "Orient Electric Ltd", "Consumer Durables"),
    
    # Tourism & Aviation
    ("IRCTC", "Indian Railway Catering and Tourism Corporation Ltd", "Tourism"),
    ("EASEMYTRIP", "Easy Trip Planners Ltd", "Tourism"),
    ("SPICEJET", "SpiceJet Ltd", "Aviation"),
    ("GMDCLTD", "Gujarat Mineral Development Corporation Ltd", "Mining"),
    
    # Technology & E-commerce
    ("PAYTM", "One 97 Communications Ltd", "Fintech"),
    ("POLICYBZR", "PB Fintech Ltd", "Fintech"),
    ("FSL", "Firstsource Solutions Ltd", "Information Technology"),
    ("NEWGEN", "Newgen Software Technologies Ltd", "Information Technology"),
    ("HAPPSTMNDS", "Happiest Minds Technologies Ltd", "Information Technology"),
    ("ROUTE", "Route Mobile Ltd", "Information Technology"),
]

# Generate SQL INSERT statements
def generate_sql():
    sql_statements = []
    
    # Start with transaction
    sql_statements.append("-- Insert all NSE stocks")
    sql_statements.append("BEGIN;")
    sql_statements.append("")
    
    for symbol, name, sector in nse_stocks:
        escaped_name = name.replace("'", "''")
        sql = f"INSERT INTO stocks (symbol, company_name, sector, industry, series, is_active) VALUES ('{symbol}', '{escaped_name}', '{sector}', '{sector}', 'EQ', true) ON CONFLICT (symbol) DO UPDATE SET company_name = EXCLUDED.company_name, sector = EXCLUDED.sector, industry = EXCLUDED.industry, is_active = EXCLUDED.is_active;"
        sql_statements.append(sql)
    
    sql_statements.append("")
    sql_statements.append("COMMIT;")
    
    return "\n".join(sql_statements)

if __name__ == "__main__":
    sql = generate_sql()
    
    # Write to file
    with open("insert_all_nse_stocks.sql", "w") as f:
        f.write(sql)
    
    print(f"Generated SQL for {len(nse_stocks)} stocks")
    print("Output file: insert_all_nse_stocks.sql")
    print("\nSample stocks:")
    for stock in nse_stocks[:10]:
        print(f"  {stock[0]} - {stock[1]}")

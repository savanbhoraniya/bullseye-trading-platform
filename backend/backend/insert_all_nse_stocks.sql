-- Insert all NSE equity stocks from official list
-- Total stocks: Will be counted below
BEGIN;

INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('20MICRONS', '20 Microns Limited', 'General', 'General', 'EQ', 'INE144J01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('21STCENMGM', '21st Century Management Services Limited', 'General', 'General', 'EQ', 'INE253B01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('360ONE', '360 ONE WAM LIMITED', 'General', 'General', 'EQ', 'INE466L01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('3BBLACKBIO', '3B Blackbio Dx Limited', 'General', 'General', 'EQ', 'INE994E01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('3IINFOLTD', '3i Infotech Limited', 'General', 'General', 'EQ', 'INE748C01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('3MINDIA', '3M India Limited', 'General', 'General', 'EQ', 'INE470A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('3PLAND', '3P Land Holdings Limited', 'General', 'General', 'EQ', 'INE105C01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('5PAISA', '5Paisa Capital Limited', 'General', 'General', 'EQ', 'INE618L01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('63MOONS', '63 moons technologies limited', 'General', 'General', 'EQ', 'INE111B01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('A2ZINFRA', 'A2Z Infra Engineering Limited', 'General', 'General', 'EQ', 'INE619I01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AAATECH', 'AAA Technologies Limited', 'General', 'General', 'EQ', 'INE0D0U01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AADHARHFC', 'Aadhar Housing Finance Limited', 'General', 'General', 'EQ', 'INE883F01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AAKASH', 'Aakash Exploration Services Limited', 'General', 'General', 'EQ', 'INE087Z01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AARNAV', 'Aarnav Fashions Limited', 'General', 'General', 'EQ', 'INE750R01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AARON', 'Aaron Industries Limited', 'General', 'General', 'EQ', 'INE721Z01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AARTECH', 'Aartech Solonics Limited', 'General', 'General', 'EQ', 'INE01C001026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AARTIDRUGS', 'Aarti Drugs Limited', 'General', 'General', 'EQ', 'INE767A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AARTIIND', 'Aarti Industries Limited', 'General', 'General', 'EQ', 'INE769A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AARTIPHARM', 'Aarti Pharmalabs Limited', 'General', 'General', 'EQ', 'INE0LRU01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AARTISURF', 'Aarti Surfactants Limited', 'General', 'General', 'EQ', 'INE09EO01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AARVI', 'Aarvi Encon Limited', 'General', 'General', 'EQ', 'INE754X01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AAVAS', 'Aavas Financiers Limited', 'General', 'General', 'EQ', 'INE216P01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABB', 'ABB India Limited', 'General', 'General', 'EQ', 'INE117A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABBOTINDIA', 'Abbott India Limited', 'General', 'General', 'EQ', 'INE358A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABCAPITAL', 'Aditya Birla Capital Limited', 'General', 'General', 'EQ', 'INE674K01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABCOTS', 'A B Cotspin India Limited', 'General', 'General', 'EQ', 'INE08PH01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABDL', 'Allied Blenders and Distillers Limited', 'General', 'General', 'EQ', 'INE552Z01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABFRL', 'Aditya Birla Fashion and Retail Limited', 'General', 'General', 'EQ', 'INE647O01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABINFRA', 'A B Infrabuild Limited', 'General', 'General', 'EQ', 'INE00YB01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABLBL', 'Aditya Birla Lifestyle Brands Limited', 'General', 'General', 'EQ', 'INE14LE01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABMINTLLTD', 'ABM International Limited', 'General', 'General', 'EQ', 'INE251C01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABMKNO', 'ABM Knowledgeware Limited', 'General', 'General', 'EQ', 'INE850B01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABREL', 'Aditya Birla Real Estate Limited', 'General', 'General', 'EQ', 'INE055A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ABSLAMC', 'Aditya Birla Sun Life AMC Limited', 'General', 'General', 'EQ', 'INE404A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ACC', 'ACC Limited', 'General', 'General', 'EQ', 'INE012A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ACCELYA', 'Accelya Solutions India Limited', 'General', 'General', 'EQ', 'INE793A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ACCURACY', 'Accuracy Shipping Limited', 'General', 'General', 'EQ', 'INE648Z01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ACE', 'Action Construction Equipment Limited', 'General', 'General', 'EQ', 'INE731H01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ACEINTEG', 'Ace Integrated Solutions Limited', 'General', 'General', 'EQ', 'INE543V01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ACI', 'Archean Chemical Industries Limited', 'General', 'General', 'EQ', 'INE128X01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ACL', 'Andhra Cements Limited', 'General', 'General', 'EQ', 'INE666E01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ACMESOLAR', 'Acme Solar Holdings Limited', 'General', 'General', 'EQ', 'INE622W01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ACSTECH', 'ACS Technologies Limited', 'General', 'General', 'EQ', 'INE366C01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ACUTAAS', 'Acutaas Chemicals Limited', 'General', 'General', 'EQ', 'INE00FF01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADANIENSOL', 'Adani Energy Solutions Limited', 'General', 'General', 'EQ', 'INE931S01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADANIENT', 'Adani Enterprises Limited', 'General', 'General', 'EQ', 'INE423A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADANIGREEN', 'Adani Green Energy Limited', 'General', 'General', 'EQ', 'INE364U01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADANIPORTS', 'Adani Ports and Special Economic Zone Limited', 'General', 'General', 'EQ', 'INE742F01042', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADANIPOWER', 'Adani Power Limited', 'General', 'General', 'EQ', 'INE814H01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADFFOODS', 'ADF Foods Limited', 'General', 'General', 'EQ', 'INE982B01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADL', 'Archidply Decor Limited', 'General', 'General', 'EQ', 'INE0CHO01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADOR', 'Ador Welding Limited', 'General', 'General', 'EQ', 'INE045A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADROITINFO', 'Adroit Infotech Limited', 'General', 'General', 'EQ', 'INE737B01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADSL', 'Allied Digital Services Limited', 'General', 'General', 'EQ', 'INE102I01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADVAIT', 'Advait Energy Transitions Limited', 'General', 'General', 'EQ', 'INE0ALI01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADVANCE', 'Advance Agrolife Limited', 'General', 'General', 'EQ', 'INE1B0W01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADVANIHOTR', 'Advani Hotels & Resorts (India) Limited', 'General', 'General', 'EQ', 'INE199C01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADVENTHTL', 'Advent Hotels International Limited', 'General', 'General', 'EQ', 'INE28GN01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ADVENZYMES', 'Advanced Enzyme Technologies Limited', 'General', 'General', 'EQ', 'INE837H01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AEGISLOG', 'Aegis Logistics Limited', 'General', 'General', 'EQ', 'INE208C01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AEGISVOPAK', 'Aegis Vopak Terminals Limited', 'General', 'General', 'EQ', 'INE0INX01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AEPL', 'Artemis Electricals and Projects Limited', 'General', 'General', 'EQ', 'INE757T01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AEQUS', 'Aequs Limited', 'General', 'General', 'EQ', 'INE947N01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AEROENTER', 'Aeroflex Enterprises Limited', 'General', 'General', 'EQ', 'INE065D01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AEROFLEX', 'Aeroflex Industries Limited', 'General', 'General', 'EQ', 'INE024001021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AERONEU', 'Aeroflex Neu Limited', 'General', 'General', 'EQ', 'INE035801013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AETHER', 'Aether Industries Limited', 'General', 'General', 'EQ', 'INE0BWX01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AFCONS', 'Afcons Infrastructure Limited', 'General', 'General', 'EQ', 'INE101I01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AFFLE', 'Affle 3i Limited', 'General', 'General', 'EQ', 'INE00WC01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AFSL', 'Abans Financial Services Limited', 'General', 'General', 'EQ', 'INE00ZE01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AGARIND', 'Agarwal Industrial Corporation Limited', 'General', 'General', 'EQ', 'INE204E01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AGARWALEYE', 'Dr. Agarwal''s Health Care Limited', 'General', 'General', 'EQ', 'INE943P01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AGI', 'AGI Greenpac Limited', 'General', 'General', 'EQ', 'INE415A01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AGIIL', 'Agi Infra Limited', 'General', 'General', 'EQ', 'INE976R01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AGROPHOS', 'Agro Phos India Limited', 'General', 'General', 'EQ', 'INE740V01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AHCL', 'Anlon Healthcare Limited', 'General', 'General', 'EQ', 'INE0Y8W01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AHLADA', 'Ahlada Engineers Limited', 'General', 'General', 'EQ', 'INE00PV01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AHLEAST', 'Asian Hotels (East) Limited', 'General', 'General', 'EQ', 'INE926K01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AHLUCONT', 'Ahluwalia Contracts (India) Limited', 'General', 'General', 'EQ', 'INE758C01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AIAENG', 'AIA Engineering Limited', 'General', 'General', 'EQ', 'INE212H01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AIIL', 'Authum Investment & Infrastructure Limited', 'General', 'General', 'EQ', 'INE206F01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AIRAN', 'Airan Limited', 'General', 'General', 'EQ', 'INE645W01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AIROLAM', 'Airo Lam limited', 'General', 'General', 'EQ', 'INE801L01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AJANTPHARM', 'Ajanta Pharma Limited', 'General', 'General', 'EQ', 'INE031B01049', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AJAXENGG', 'Ajax Engineering Limited', 'General', 'General', 'EQ', 'INE274Y01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AJMERA', 'Ajmera Realty & Infra India Limited', 'General', 'General', 'EQ', 'INE298G01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AJOONI', 'Ajooni Biotech Limited', 'General', 'General', 'EQ', 'INE820Y01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AKASH', 'Akash Infra-Projects Limited', 'General', 'General', 'EQ', 'INE737W01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AKCAPIT', 'AK Capital Services Limited', 'General', 'General', 'EQ', 'INE701G01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AKG', 'Akg Exim Limited', 'General', 'General', 'EQ', 'INE00Y801016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AKI', 'AKI India Limited', 'General', 'General', 'EQ', 'INE642Z01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AKSHAR', 'Akshar Spintex Limited', 'General', 'General', 'EQ', 'INE256Z01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AKSHARCHEM', 'AksharChem India Limited', 'General', 'General', 'EQ', 'INE542B01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AKUMS', 'Akums Drugs and Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE09XN01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALANKIT', 'Alankit Limited', 'General', 'General', 'EQ', 'INE914E01040', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALBERTDAVD', 'Albert David Limited', 'General', 'General', 'EQ', 'INE155C01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALEMBICLTD', 'Alembic Limited', 'General', 'General', 'EQ', 'INE426A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALGOQUANT', 'Algoquant Fintech Limited', 'General', 'General', 'EQ', 'INE598D01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALICON', 'Alicon Castalloy Limited', 'General', 'General', 'EQ', 'INE062D01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALIVUS', 'Alivus Life Sciences Limited', 'General', 'General', 'EQ', 'INE03Q201024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALKEM', 'Alkem Laboratories Limited', 'General', 'General', 'EQ', 'INE540L01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALKYLAMINE', 'Alkyl Amines Chemicals Limited', 'General', 'General', 'EQ', 'INE150B01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALLCARGO', 'Allcargo Logistics Limited', 'General', 'General', 'EQ', 'INE418H01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALLDIGI', 'Alldigi Tech Limited', 'General', 'General', 'EQ', 'INE835G01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALLTIME', 'All Time Plastics Limited', 'General', 'General', 'EQ', 'INE0GV601021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALMONDZ', 'Almondz Global Securities Limited', 'General', 'General', 'EQ', 'INE326B01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALOKINDS', 'Alok Industries Limited', 'General', 'General', 'EQ', 'INE270A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALPA', 'Alpa Laboratories Limited', 'General', 'General', 'EQ', 'INE385I01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ALPHAGEO', 'Alphageo (India) Limited', 'General', 'General', 'EQ', 'INE137C01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMAGI', 'Amagi Media Labs Limited', 'General', 'General', 'EQ', 'INE121R01077', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMBALALSA', 'Ambalal Sarabhai Enterprises Limited', 'General', 'General', 'EQ', 'INE432A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMBER', 'Amber Enterprises India Limited', 'General', 'General', 'EQ', 'INE371P01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMBICAAGAR', 'Ambica Agarbathies & Aroma industries Limited', 'General', 'General', 'EQ', 'INE792B01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMBIKCO', 'Ambika Cotton Mills Limited', 'General', 'General', 'EQ', 'INE540G01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMBUJACEM', 'Ambuja Cements Limited', 'General', 'General', 'EQ', 'INE079A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMDIND', 'AMD Industries Limited', 'General', 'General', 'EQ', 'INE005I01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMIRCHAND', 'Amir Chand Jagdish Kumar (Exports) Limited', 'General', 'General', 'EQ', 'INE05TO01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMJLAND', 'Amj Land Holdings Limited', 'General', 'General', 'EQ', 'INE606A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMNPLST', 'Amines & Plasticizers Limited', 'General', 'General', 'EQ', 'INE275D01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AMRUTANJAN', 'Amrutanjan Health Care Limited', 'General', 'General', 'EQ', 'INE098F01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANANDRATHI', 'Anand Rathi Wealth Limited', 'General', 'General', 'EQ', 'INE463V01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANANTRAJ', 'Anant Raj Limited', 'General', 'General', 'EQ', 'INE242C01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANDHRAPAP', 'ANDHRA PAPER LIMITED', 'General', 'General', 'EQ', 'INE435A01051', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANDHRSUGAR', 'The Andhra Sugars Limited', 'General', 'General', 'EQ', 'INE715B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANGELONE', 'Angel One Limited', 'General', 'General', 'EQ', 'INE732I01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANMOL', 'Anmol India Limited', 'General', 'General', 'EQ', 'INE02AR01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANTELOPUS', 'Antelopus Selan Energy Limited', 'General', 'General', 'EQ', 'INE818A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANTGRAPHIC', 'Antarctica Limited', 'General', 'General', 'EQ', 'INE414B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANTHEM', 'Anthem Biosciences Limited', 'General', 'General', 'EQ', 'INE0CZ201020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANUHPHR', 'Anuh Pharma Limited', 'General', 'General', 'EQ', 'INE489G01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANUP', 'The Anup Engineering Limited', 'General', 'General', 'EQ', 'INE294Z01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ANURAS', 'Anupam Rasayan India Limited', 'General', 'General', 'EQ', 'INE930P01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APARINDS', 'Apar Industries Limited', 'General', 'General', 'EQ', 'INE372A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APCL', 'Anjani Portland Cement Limited', 'General', 'General', 'EQ', 'INE071F01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APCOTEXIND', 'Apcotex Industries Limited', 'General', 'General', 'EQ', 'INE116A01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APEX', 'Apex Frozen Foods Limited', 'General', 'General', 'EQ', 'INE346W01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APLAPOLLO', 'APL Apollo Tubes Limited', 'General', 'General', 'EQ', 'INE702C01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APLLTD', 'Alembic Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE901L01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APOLLO', 'Apollo Micro Systems Limited', 'General', 'General', 'EQ', 'INE713T01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APOLLOHOSP', 'Apollo Hospitals Enterprise Limited', 'General', 'General', 'EQ', 'INE437A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APOLLOPIPE', 'Apollo Pipes Limited', 'General', 'General', 'EQ', 'INE126J01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APOLLOTYRE', 'Apollo Tyres Limited', 'General', 'General', 'EQ', 'INE438A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APOLSINHOT', 'Apollo Sindoori Hotels Limited', 'General', 'General', 'EQ', 'INE451F01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('APTUS', 'Aptus Value Housing Finance India Limited', 'General', 'General', 'EQ', 'INE852O01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AQYLON', 'Aqylon Nexus Limited', 'General', 'General', 'EQ', 'INE416A01051', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARCHIDPLY', 'Archidply Industries Limited', 'General', 'General', 'EQ', 'INE877I01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARCHIES', 'Archies Limited', 'General', 'General', 'EQ', 'INE731A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARE&M', 'Amara Raja Energy & Mobility Limited', 'General', 'General', 'EQ', 'INE885A01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARENTERP', 'Rajdarshan Industries Limited', 'General', 'General', 'EQ', 'INE610C01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARFIN', 'Arfin India Limited', 'General', 'General', 'EQ', 'INE784R01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARIES', 'Aries Agro Limited', 'General', 'General', 'EQ', 'INE298I01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARIHANT', 'Arihant Foundations & Housing Limited', 'General', 'General', 'EQ', 'INE413D01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARIHANTCAP', 'Arihant Capital Markets Limited', 'General', 'General', 'EQ', 'INE420B01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARIHANTSUP', 'Arihant Superstructures Limited', 'General', 'General', 'EQ', 'INE643K01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARIS', 'Arisinfra Solutions Limited', 'General', 'General', 'EQ', 'INE0H9P01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARKADE', 'Arkade Developers Limited', 'General', 'General', 'EQ', 'INE0QRL01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARMANFIN', 'Arman Financial Services Limited', 'General', 'General', 'EQ', 'INE109C01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AROGRANITE', 'Aro Granite Industries Limited', 'General', 'General', 'EQ', 'INE210C01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARSSBL', 'Anand Rathi Share and Stock Brokers Limited', 'General', 'General', 'EQ', 'INE549H01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARTEMISMED', 'Artemis Medicare Services Limited', 'General', 'General', 'EQ', 'INE025R01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARTNIRMAN', 'Art Nirman Limited', 'General', 'General', 'EQ', 'INE738V01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARVEE', 'Arvee Laboratories (India) Limited', 'General', 'General', 'EQ', 'INE006Z01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARVIND', 'Arvind Limited', 'General', 'General', 'EQ', 'INE034A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARVINDFASN', 'Arvind Fashions Limited', 'General', 'General', 'EQ', 'INE955V01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ARVSMART', 'Arvind SmartSpaces Limited', 'General', 'General', 'EQ', 'INE034S01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASAHIINDIA', 'Asahi India Glass Limited', 'General', 'General', 'EQ', 'INE439A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASAHISONG', 'Asahi Songwon Colors Limited', 'General', 'General', 'EQ', 'INE228I01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASAL', 'Automotive Stampings and Assemblies Limited', 'General', 'General', 'EQ', 'INE900C01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASALCBR', 'Associated Alcohols & Breweries Ltd.', 'General', 'General', 'EQ', 'INE073G01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASHAPURMIN', 'Ashapura Minechem Limited', 'General', 'General', 'EQ', 'INE348A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASHIANA', 'Ashiana Housing Limited', 'General', 'General', 'EQ', 'INE365D01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASHIKA', 'Ashika Credit Capital Limited', 'General', 'General', 'EQ', 'INE094B01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASHIMASYN', 'Ashima Limited', 'General', 'General', 'EQ', 'INE440A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASHOKA', 'Ashoka Buildcon Limited', 'General', 'General', 'EQ', 'INE442H01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASHOKAMET', 'Ashoka Metcast Limited', 'General', 'General', 'EQ', 'INE760Y01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASHOKLEY', 'Ashok Leyland Limited', 'General', 'General', 'EQ', 'INE208A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASIANENE', 'Asian Energy Services Limited', 'General', 'General', 'EQ', 'INE276G01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASIANHOTNR', 'Asian Hotels (North) Limited', 'General', 'General', 'EQ', 'INE363A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASIANPAINT', 'Asian Paints Limited', 'General', 'General', 'EQ', 'INE021A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASIANTILES', 'Asian Granito India Limited', 'General', 'General', 'EQ', 'INE022I01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASKAUTOLTD', 'ASK Automotive Limited', 'General', 'General', 'EQ', 'INE491J01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASMS', 'Avio Smart Market Stack Limited', 'General', 'General', 'EQ', 'INE855F01042', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASPINWALL', 'Aspinwall and Company Limited', 'General', 'General', 'EQ', 'INE991I01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASTAR', 'Asian Star Company Limited', 'General', 'General', 'EQ', 'INE194D01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASTEC', 'Astec LifeSciences Limited', 'General', 'General', 'EQ', 'INE563J01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASTERDM', 'Aster DM Healthcare Limited', 'General', 'General', 'EQ', 'INE914M01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASTRAL', 'Astral Limited', 'General', 'General', 'EQ', 'INE006I01046', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASTRAMICRO', 'Astra Microwave Products Limited', 'General', 'General', 'EQ', 'INE386C01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ASTRAZEN', 'AstraZeneca Pharma India Limited', 'General', 'General', 'EQ', 'INE203A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ATALREAL', 'Atal Realtech Limited', 'General', 'General', 'EQ', 'INE0ALR01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ATAM', 'Atam Valves Limited', 'General', 'General', 'EQ', 'INE09KD01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ATGL', 'Adani Total Gas Limited', 'General', 'General', 'EQ', 'INE399L01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ATHERENERG', 'Ather Energy Limited', 'General', 'General', 'EQ', 'INE0LEZ01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ATL', 'Allcargo Terminals Limited', 'General', 'General', 'EQ', 'INE0NN701020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ATLANTAA', 'ATLANTAA LIMITED', 'General', 'General', 'EQ', 'INE285H01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ATLASCYCLE', 'Atlas Cycles (Haryana) Limited', 'General', 'General', 'EQ', 'INE446A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ATUL', 'Atul Limited', 'General', 'General', 'EQ', 'INE100A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ATULAUTO', 'Atul Auto Limited', 'General', 'General', 'EQ', 'INE951D01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AUBANK', 'AU Small Finance Bank Limited', 'General', 'General', 'EQ', 'INE949L01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AURIGROW', 'Auri Grow India Limited', 'General', 'General', 'EQ', 'INE925Y01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AURIONPRO', 'Aurionpro Solutions Limited', 'General', 'General', 'EQ', 'INE132H01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AUROPHARMA', 'Aurobindo Pharma Limited', 'General', 'General', 'EQ', 'INE406A01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AURUM', 'Aurum PropTech Limited', 'General', 'General', 'EQ', 'INE898S01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AUTOAXLES', 'Automotive Axles Limited', 'General', 'General', 'EQ', 'INE449A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AVALON', 'Avalon Technologies Limited', 'General', 'General', 'EQ', 'INE0LCL01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AVANTEL', 'Avantel Limited', 'General', 'General', 'EQ', 'INE005B01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AVANTIFEED', 'Avanti Feeds Limited', 'General', 'General', 'EQ', 'INE871C01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AVG', 'AVG Logistics Limited', 'General', 'General', 'EQ', 'INE680Z01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AVL', 'Aditya Vision Limited', 'General', 'General', 'EQ', 'INE679V01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AVONMORE', 'Avonmore Capital & Management Services Limited', 'General', 'General', 'EQ', 'INE323B01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AVROIND', 'AVRO INDIA LIMITED', 'General', 'General', 'EQ', 'INE652Z01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AVTNPL', 'AVT Natural Products Limited', 'General', 'General', 'EQ', 'INE488D01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AWFIS', 'Awfis Space Solutions Limited', 'General', 'General', 'EQ', 'INE108V01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AWHCL', 'Antony Waste Handling Cell Limited', 'General', 'General', 'EQ', 'INE01BK01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AWL', 'AWL Agri Business Limited', 'General', 'General', 'EQ', 'INE699H01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AXISBANK', 'Axis Bank Limited', 'General', 'General', 'EQ', 'INE238A01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AXISCADES', 'AXISCADES Technologies Limited', 'General', 'General', 'EQ', 'INE555B01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AXITA', 'Axita Cotton Limited', 'General', 'General', 'EQ', 'INE02EZ01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AYE', 'Aye Finance Limited', 'General', 'General', 'EQ', 'INE501X01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AYMSYNTEX', 'AYM Syntex Limited', 'General', 'General', 'EQ', 'INE193B01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('AZAD', 'Azad Engineering Limited', 'General', 'General', 'EQ', 'INE02IJ01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAGFILMS', 'B.A.G Films and Media Limited', 'General', 'General', 'EQ', 'INE116D01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAIDFIN', 'Baid Finserv Limited', 'General', 'General', 'EQ', 'INE020D01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJAJ-AUTO', 'Bajaj Auto Limited', 'General', 'General', 'EQ', 'INE917I01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJAJCON', 'Bajaj Consumer Care Limited', 'General', 'General', 'EQ', 'INE933K01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJAJELEC', 'Bajaj Electricals Limited', 'General', 'General', 'EQ', 'INE193E01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJAJFINSV', 'Bajaj Finserv Limited', 'General', 'General', 'EQ', 'INE918I01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJAJHCARE', 'Bajaj Healthcare Limited', 'General', 'General', 'EQ', 'INE411U01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJAJHFL', 'Bajaj Housing Finance Limited', 'General', 'General', 'EQ', 'INE377Y01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJAJHIND', 'Bajaj Hindusthan Sugar Limited', 'General', 'General', 'EQ', 'INE306A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJAJHLDNG', 'Bajaj Holdings & Investment Limited', 'General', 'General', 'EQ', 'INE118A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJAJINDEF', 'Indef Manufacturing Limited', 'General', 'General', 'EQ', 'INE0O9T01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJAJST', 'Bajaj Steel Industries Limited', 'General', 'General', 'EQ', 'INE704G01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJEL', 'Bajel Projects Limited', 'General', 'General', 'EQ', 'INE0KQN01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAJFINANCE', 'Bajaj Finance Limited', 'General', 'General', 'EQ', 'INE296A01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BALAJEE', 'Shree Tirupati Balajee Agro Trading Company Limited', 'General', 'General', 'EQ', 'INE0S2G01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BALAJITELE', 'Balaji Telefilms Limited', 'General', 'General', 'EQ', 'INE794B01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BALAMINES', 'Balaji Amines Limited', 'General', 'General', 'EQ', 'INE050E01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BALKRISHNA', 'Balkrishna Paper Mills Limited', 'General', 'General', 'EQ', 'INE875R01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BALKRISIND', 'Balkrishna Industries Limited', 'General', 'General', 'EQ', 'INE787D01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BALMLAWRIE', 'Balmer Lawrie & Company Limited', 'General', 'General', 'EQ', 'INE164A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BALPHARMA', 'Bal Pharma Limited', 'General', 'General', 'EQ', 'INE083D01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BALRAMCHIN', 'Balrampur Chini Mills Limited', 'General', 'General', 'EQ', 'INE119A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BALUFORGE', 'Balu Forge Industries Limited', 'General', 'General', 'EQ', 'INE011E01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BANARBEADS', 'Banaras Beads Limited', 'General', 'General', 'EQ', 'INE655B01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BANARISUG', 'Bannari Amman Sugars Limited', 'General', 'General', 'EQ', 'INE459A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BANCOINDIA', 'Banco Products (I) Limited', 'General', 'General', 'EQ', 'INE213C01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BANDHANBNK', 'Bandhan Bank Limited', 'General', 'General', 'EQ', 'INE545U01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BANG', 'Bang Overseas Limited', 'General', 'General', 'EQ', 'INE863I01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BANKBARODA', 'Bank of Baroda', 'General', 'General', 'EQ', 'INE028A01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BANKINDIA', 'Bank of India', 'General', 'General', 'EQ', 'INE084A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BANSALWIRE', 'Bansal Wire Industries Limited', 'General', 'General', 'EQ', 'INE0B9K01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BANSWRAS', 'Banswara Syntex Limited', 'General', 'General', 'EQ', 'INE629D01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BASF', 'BASF India Limited', 'General', 'General', 'EQ', 'INE373A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BASML', 'Bannari Amman Spinning Mills Limited', 'General', 'General', 'EQ', 'INE186H01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BATAINDIA', 'Bata India Limited', 'General', 'General', 'EQ', 'INE176A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BATLIBOI', 'Batliboi Limited', 'General', 'General', 'EQ', 'INE177C01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BAYERCROP', 'Bayer Cropscience Limited', 'General', 'General', 'EQ', 'INE462A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BBL', 'Bharat Bijlee Limited', 'General', 'General', 'EQ', 'INE464A01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BBOX', 'Black Box Limited', 'General', 'General', 'EQ', 'INE676A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BBTC', 'The Bombay Burmah Trading Corporation Limited', 'General', 'General', 'EQ', 'INE050A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BBTCL', 'B&B Triplewall Containers Limited', 'General', 'General', 'EQ', 'INE01EE01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BCG', 'Brightcom Group Limited', 'General', 'General', 'EQ', 'INE425B01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BCLIND', 'Bcl Industries Limited', 'General', 'General', 'EQ', 'INE412G01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BCONCEPTS', 'Brand Concepts Limited', 'General', 'General', 'EQ', 'INE977Y01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BCPL', 'BCPL Railway Infrastructure Limited', 'General', 'General', 'EQ', 'INE00SW01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BDL', 'Bharat Dynamics Limited', 'General', 'General', 'EQ', 'INE171Z01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BEARDSELL', 'Beardsell Limited', 'General', 'General', 'EQ', 'INE520H01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BECTORFOOD', 'Mrs. Bectors Food Specialities Limited', 'General', 'General', 'EQ', 'INE495P01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BEDMUTHA', 'Bedmutha Industries Limited', 'General', 'General', 'EQ', 'INE844K01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BEEKAY', 'Beekay Steel Industries Limited', 'General', 'General', 'EQ', 'INE213D01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BEL', 'Bharat Electronics Limited', 'General', 'General', 'EQ', 'INE263A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BELLACASA', 'Bella Casa Fashion & Retail Limited', 'General', 'General', 'EQ', 'INE344T01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BELRISE', 'Belrise Industries Limited', 'General', 'General', 'EQ', 'INE894V01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BEML', 'BEML Limited', 'General', 'General', 'EQ', 'INE258A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BENGALASM', 'Bengal & Assam Company Limited', 'General', 'General', 'EQ', 'INE083K01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BEPL', 'Bhansali Engineering Polymers Limited', 'General', 'General', 'EQ', 'INE922A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BERGEPAINT', 'Berger Paints (I) Limited', 'General', 'General', 'EQ', 'INE463A01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BESTAGRO', 'Best Agrolife Limited', 'General', 'General', 'EQ', 'INE052T01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BETA', 'Beta Drugs Limited', 'General', 'General', 'EQ', 'INE351Y01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BFINVEST', 'BF Investment Limited', 'General', 'General', 'EQ', 'INE878K01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BFUTILITIE', 'BF Utilities Limited', 'General', 'General', 'EQ', 'INE243D01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHAGCHEM', 'Bhagiradha Chemicals & Industries Limited', 'General', 'General', 'EQ', 'INE414D01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHAGERIA', 'Bhageria Industries Limited', 'General', 'General', 'EQ', 'INE354C01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHARATCOAL', 'Bharat Coking Coal Limited', 'General', 'General', 'EQ', 'INE05XR01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHARATFORG', 'Bharat Forge Limited', 'General', 'General', 'EQ', 'INE465A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHARATGEAR', 'Bharat Gears Limited', 'General', 'General', 'EQ', 'INE561C01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHARATRAS', 'Bharat Rasayan Limited', 'General', 'General', 'EQ', 'INE838B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHARATSE', 'Bharat Seats Limited', 'General', 'General', 'EQ', 'INE415D01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHARATWIRE', 'Bharat Wire Ropes Limited', 'General', 'General', 'EQ', 'INE316L01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHARTIARTL', 'Bharti Airtel Limited', 'General', 'General', 'EQ', 'INE397D01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHARTIHEXA', 'Bharti Hexacom Limited', 'General', 'General', 'EQ', 'INE343G01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BHEL', 'Bharat Heavy Electricals Limited', 'General', 'General', 'EQ', 'INE257A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BI', 'Bilcare Limited', 'General', 'General', 'EQ', 'INE986A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BIGBLOC', 'Bigbloc Construction Limited', 'General', 'General', 'EQ', 'INE412U01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BIKAJI', 'Bikaji Foods International Limited', 'General', 'General', 'EQ', 'INE00E101023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BIL', 'Bhartiya International Limited', 'General', 'General', 'EQ', 'INE828A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BIMETAL', 'Bimetal Bearings Limited', 'General', 'General', 'EQ', 'INE469A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BIOCON', 'Biocon Limited', 'General', 'General', 'EQ', 'INE376G01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BIOFILCHEM', 'Biofil Chemicals & Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE829A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BIRLACORPN', 'Birla Corporation Limited', 'General', 'General', 'EQ', 'INE340A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BIRLAMONEY', 'Aditya Birla Money Limited', 'General', 'General', 'EQ', 'INE865C01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BIRLANU', 'BirlaNu Limited', 'General', 'General', 'EQ', 'INE557A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BIRLAPREC', 'Birla Precision Technologies Limited', 'General', 'General', 'EQ', 'INE372E01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLACKBUCK', 'BLACKBUCK LIMITED', 'General', 'General', 'EQ', 'INE0UIZ01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLACKROSE', 'Black Rose Inds. Limited', 'General', 'General', 'EQ', 'INE761G01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLAL', 'BEML Land Assets Limited', 'General', 'General', 'EQ', 'INE0N7W01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLBLIMITED', 'BLB Limited', 'General', 'General', 'EQ', 'INE791A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLIL', 'Balmer Lawrie Investments Limited', 'General', 'General', 'EQ', 'INE525F01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLISSGVS', 'Bliss GVS Pharma Limited', 'General', 'General', 'EQ', 'INE416D01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLKASHYAP', 'B. L. Kashyap and Sons Limited', 'General', 'General', 'EQ', 'INE350H01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLS', 'BLS International Services Limited', 'General', 'General', 'EQ', 'INE153T01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLSE', 'BLS E-Services Limited', 'General', 'General', 'EQ', 'INE0NLT01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLUEDART', 'Blue Dart Express Limited', 'General', 'General', 'EQ', 'INE233B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLUEJET', 'Blue Jet Healthcare Limited', 'General', 'General', 'EQ', 'INE0KBH01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLUESTARCO', 'Blue Star Limited', 'General', 'General', 'EQ', 'INE472A01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLUESTONE', 'BlueStone Jewellery and Lifestyle Limited', 'General', 'General', 'EQ', 'INE304W01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BLUSPRING', 'Bluspring Enterprises Limited', 'General', 'General', 'EQ', 'INE0U4101014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BMWVENTLTD', 'BMW Ventures Limited', 'General', 'General', 'EQ', 'INE965W01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BNALTD', 'B & A Limited', 'General', 'General', 'EQ', 'INE489D01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BOHRAIND', 'Bohra Industries Limited', 'General', 'General', 'EQ', 'INE802W01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BOMDYEING', 'Bombay Dyeing & Mfg Company Limited', 'General', 'General', 'EQ', 'INE032A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BONLON', 'Bonlon Industries Limited', 'General', 'General', 'EQ', 'INE0B9A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BORANA', 'Borana Weaves Limited', 'General', 'General', 'EQ', 'INE16SF01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BOROLTD', 'Borosil Limited', 'General', 'General', 'EQ', 'INE02PY01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BORORENEW', 'BOROSIL RENEWABLES LIMITED', 'General', 'General', 'EQ', 'INE666D01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BOROSCI', 'Borosil Scientific Limited', 'General', 'General', 'EQ', 'INE02L001032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BOSCH-HCIL', 'BOSCH HOME COMFORT INDIA LIMITED', 'General', 'General', 'EQ', 'INE782A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BOSCHLTD', 'Bosch Limited', 'General', 'General', 'EQ', 'INE323A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BPCL', 'Bharat Petroleum Corporation Limited', 'General', 'General', 'EQ', 'INE029A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BPL', 'BPL Limited', 'General', 'General', 'EQ', 'INE110A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BRIGADE', 'Brigade Enterprises Limited', 'General', 'General', 'EQ', 'INE791I01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BRIGHOTEL', 'Brigade Hotel Ventures Limited', 'General', 'General', 'EQ', 'INE03NU01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BRITANNIA', 'Britannia Industries Limited', 'General', 'General', 'EQ', 'INE216A01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BRNL', 'Bharat Road Network Limited', 'General', 'General', 'EQ', 'INE727S01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BSE', 'BSE Limited', 'General', 'General', 'EQ', 'INE118H01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BSL', 'BSL Limited', 'General', 'General', 'EQ', 'INE594B01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BSOFT', 'BIRLASOFT LIMITED', 'General', 'General', 'EQ', 'INE836A01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BTML', 'Bodhi Tree Multimedia Limited', 'General', 'General', 'EQ', 'INE0EEJ01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BTTL', 'Bhilwara Technical Textiles Limited', 'General', 'General', 'EQ', 'INE274K01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BUILDPRO', 'Shankara Buildpro Limited', 'General', 'General', 'EQ', 'INE24OJ01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BUTTERFLY', 'Butterfly Gandhimathi Appliances Limited', 'General', 'General', 'EQ', 'INE295F01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('BVCL', 'Barak Valley Cements Limited', 'General', 'General', 'EQ', 'INE139I01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CAMLINFINE', 'Camlin Fine Sciences Limited', 'General', 'General', 'EQ', 'INE052I01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CAMPUS', 'Campus Activewear Limited', 'General', 'General', 'EQ', 'INE278Y01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CAMS', 'Computer Age Management Services Limited', 'General', 'General', 'EQ', 'INE596I01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CANBK', 'Canara Bank', 'General', 'General', 'EQ', 'INE476A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CANFINHOME', 'Can Fin Homes Limited', 'General', 'General', 'EQ', 'INE477A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CANHLIFE', 'Canara HSBC Life Insurance Company Limited', 'General', 'General', 'EQ', 'INE01TY01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CANTABIL', 'Cantabil Retail India Limited', 'General', 'General', 'EQ', 'INE068L01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CAPACITE', 'Capacit''e Infraprojects Limited', 'General', 'General', 'EQ', 'INE264T01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CAPILLARY', 'Capillary Technologies India Limited', 'General', 'General', 'EQ', 'INE0ILV01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CAPITALSFB', 'Capital Small Finance Bank Limited', 'General', 'General', 'EQ', 'INE646H01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CAPLIPOINT', 'Caplin Point Laboratories Limited', 'General', 'General', 'EQ', 'INE475E01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CARBORUNIV', 'Carborundum Universal Limited', 'General', 'General', 'EQ', 'INE120A01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CARERATING', 'CARE Ratings Limited', 'General', 'General', 'EQ', 'INE752H01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CARRARO', 'Carraro India Limited', 'General', 'General', 'EQ', 'INE0V7W01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CARTRADE', 'Cartrade Tech Limited', 'General', 'General', 'EQ', 'INE290S01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CARYSIL', 'CARYSIL LIMITED', 'General', 'General', 'EQ', 'INE482D01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CASTROLIND', 'Castrol India Limited', 'General', 'General', 'EQ', 'INE172A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CCAVENUE', 'AvenuesAI Limited', 'General', 'General', 'EQ', 'INE483S01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CCCL', 'Consolidated Construction Consortium Limited', 'General', 'General', 'EQ', 'INE429I01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CCHHL', 'Country Club Hospitality & Holidays Limited', 'General', 'General', 'EQ', 'INE652F01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CCL', 'CCL Products (India) Limited', 'General', 'General', 'EQ', 'INE421D01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CDSL', 'Central Depository Services (India) Limited', 'General', 'General', 'EQ', 'INE736A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CEATLTD', 'CEAT Limited', 'General', 'General', 'EQ', 'INE482A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CEIGALL', 'Ceigall India Limited', 'General', 'General', 'EQ', 'INE0AG901020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CEINSYS', 'Ceinsys Tech Limited', 'General', 'General', 'EQ', 'INE016Q01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CELEBRITY', 'Celebrity Fashions Limited', 'General', 'General', 'EQ', 'INE185H01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CELLO', 'Cello World Limited', 'General', 'General', 'EQ', 'INE0LMW01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CEMPRO', 'Cemindia Projects Limited', 'General', 'General', 'EQ', 'INE686A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CENTENKA', 'Century Enka Limited', 'General', 'General', 'EQ', 'INE485A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CENTEXT', 'Century Extrusions Limited', 'General', 'General', 'EQ', 'INE281A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CENTRALBK', 'Central Bank of India', 'General', 'General', 'EQ', 'INE483A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CENTRUM', 'Centrum Capital Limited', 'General', 'General', 'EQ', 'INE660C01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CENTUM', 'Centum Electronics Limited', 'General', 'General', 'EQ', 'INE320B01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CENTURYPLY', 'Century Plyboards (India) Limited', 'General', 'General', 'EQ', 'INE348B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CERA', 'Cera Sanitaryware Limited', 'General', 'General', 'EQ', 'INE739E01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CESC', 'CESC Limited', 'General', 'General', 'EQ', 'INE486A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CEWATER', 'Concord Enviro Systems Limited', 'General', 'General', 'EQ', 'INE037Z01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CGCL', 'Capri Global Capital Limited', 'General', 'General', 'EQ', 'INE180C01042', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CGPOWER', 'CG Power and Industrial Solutions Limited', 'General', 'General', 'EQ', 'INE067A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CHALET', 'Chalet Hotels Limited', 'General', 'General', 'EQ', 'INE427F01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CHAMBLFERT', 'Chambal Fertilizers & Chemicals Limited', 'General', 'General', 'EQ', 'INE085A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CHEMCON', 'Chemcon Speciality Chemicals Limited', 'General', 'General', 'EQ', 'INE03YM01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CHEMPLASTS', 'Chemplast Sanmar Limited', 'General', 'General', 'EQ', 'INE488A01050', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CHENNPETRO', 'Chennai Petroleum Corporation Limited', 'General', 'General', 'EQ', 'INE178A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CHEVIOT', 'Cheviot Company Limited', 'General', 'General', 'EQ', 'INE974B01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CHOICEIN', 'Choice International Limited', 'General', 'General', 'EQ', 'INE102B01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CHOLAFIN', 'Cholamandalam Investment and Finance Company Limited', 'General', 'General', 'EQ', 'INE121A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CHOLAHLDNG', 'Cholamandalam Financial Holdings Limited', 'General', 'General', 'EQ', 'INE149A01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CIEINDIA', 'CIE Automotive India Limited', 'General', 'General', 'EQ', 'INE536H01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CIFL', 'Capital India Finance Limited', 'General', 'General', 'EQ', 'INE345H01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CINELINE', 'Cineline India Limited', 'General', 'General', 'EQ', 'INE704H01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CINEVISTA', 'Cinevista Limited', 'General', 'General', 'EQ', 'INE039B01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CIPLA', 'Cipla Limited', 'General', 'General', 'EQ', 'INE059A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CLEAN', 'Clean Science and Technology Limited', 'General', 'General', 'EQ', 'INE227W01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CLEANMAX', 'Clean Max Enviro Energy Solutions Limited', 'General', 'General', 'EQ', 'INE647U01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CLSEL', 'Chaman Lal Setia Exports Limited', 'General', 'General', 'EQ', 'INE419D01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CMPDI', 'Central Mine Planning & Design Institute Limited', 'General', 'General', 'EQ', 'INE05HV01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CMRGREEN', 'CMR Green Technologies Limited', 'General', 'General', 'EQ', 'INE00WV01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CMSINFO', 'CMS Info Systems Limited', 'General', 'General', 'EQ', 'INE925R01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CNL', 'Creative Newtech Limited', 'General', 'General', 'EQ', 'INE985W01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COALINDIA', 'Coal India Limited', 'General', 'General', 'EQ', 'INE522F01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COASTCORP', 'Coastal Corporation Limited', 'General', 'General', 'EQ', 'INE377E01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COCHINSHIP', 'Cochin Shipyard Limited', 'General', 'General', 'EQ', 'INE704P01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COCKERILL', 'John Cockerill India Limited', 'General', 'General', 'EQ', 'INE515A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COFORGE', 'Coforge Limited', 'General', 'General', 'EQ', 'INE591G01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COHANCE', 'Cohance Lifesciences Limited', 'General', 'General', 'EQ', 'INE03QK01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COLPAL', 'Colgate Palmolive (India) Limited', 'General', 'General', 'EQ', 'INE259A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COMFINTE', 'Comfort Intech Limited', 'General', 'General', 'EQ', 'INE819A01049', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COMPUSOFT', 'Compucom Software Limited', 'General', 'General', 'EQ', 'INE453B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COMSYN', 'Commercial Syn Bags Limited', 'General', 'General', 'EQ', 'INE073V01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CONCOR', 'Container Corporation of India Limited', 'General', 'General', 'EQ', 'INE111A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CONCORDBIO', 'Concord Biotech Limited', 'General', 'General', 'EQ', 'INE338H01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CONFIPET', 'Confidence Petroleum India Limited', 'General', 'General', 'EQ', 'INE552D01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CONSOFINVT', 'Consolidated Finvest & Holdings Limited', 'General', 'General', 'EQ', 'INE025A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CONTROLPR', 'Control Print Limited', 'General', 'General', 'EQ', 'INE663B01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CORALFINAC', 'Coral India Finance & Housing Limited', 'General', 'General', 'EQ', 'INE558D01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COROMANDEL', 'Coromandel International Limited', 'General', 'General', 'EQ', 'INE169A01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CORONA', 'CORONA Remedies Limited', 'General', 'General', 'EQ', 'INE02ZQ01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COSMOFIRST', 'COSMO FIRST LIMITED', 'General', 'General', 'EQ', 'INE757A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('COUNCODOS', 'Country Condo''s Limited', 'General', 'General', 'EQ', 'INE695B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CPEDU', 'Career Point Edutech Limited', 'General', 'General', 'EQ', 'INE0P6P01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CPPLUS', 'Aditya Infotech Limited', 'General', 'General', 'EQ', 'INE819V01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CRAFTSMAN', 'Craftsman Automation Limited', 'General', 'General', 'EQ', 'INE00LO01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CRAMC', 'Canara Robeco Asset Management Company Limited', 'General', 'General', 'EQ', 'INE218I01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CREATIVEYE', 'Creative Eye Limited', 'General', 'General', 'EQ', 'INE230B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CREDITACC', 'CREDITACCESS GRAMEEN LIMITED', 'General', 'General', 'EQ', 'INE741K01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CREST', 'Crest Ventures Limited', 'General', 'General', 'EQ', 'INE559D01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CRISIL', 'Crisil Limited', 'General', 'General', 'EQ', 'INE007A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CRIZAC', 'Crizac Limited', 'General', 'General', 'EQ', 'INE0S4R01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CROMPTON', 'Crompton Greaves Consumer Electricals Limited', 'General', 'General', 'EQ', 'INE299U01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CROWN', 'Crown Lifters Limited', 'General', 'General', 'EQ', 'INE491V01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CSBBANK', 'CSB Bank Limited', 'General', 'General', 'EQ', 'INE679A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CSLFINANCE', 'CSL Finance Limited', 'General', 'General', 'EQ', 'INE718F01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CTE', 'Cambridge Technology Enterprises Limited', 'General', 'General', 'EQ', 'INE627H01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CUB', 'City Union Bank Limited', 'General', 'General', 'EQ', 'INE491A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CUBEXTUB', 'Cubex Tubings Limited', 'General', 'General', 'EQ', 'INE144D01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CUMMINSIND', 'Cummins India Limited', 'General', 'General', 'EQ', 'INE298A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CUPID', 'Cupid Limited', 'General', 'General', 'EQ', 'INE509F01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CURAA', 'Cura Technologies Limited', 'General', 'General', 'EQ', 'INE117B01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CYBERTECH', 'Cybertech Systems And Software Limited', 'General', 'General', 'EQ', 'INE214A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CYIENT', 'Cyient Limited', 'General', 'General', 'EQ', 'INE136B01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('CYIENTDLM', 'Cyient DLM Limited', 'General', 'General', 'EQ', 'INE055S01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DABUR', 'Dabur India Limited', 'General', 'General', 'EQ', 'INE016A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DAICHI', 'Dai-Ichi Karkaria Limited', 'General', 'General', 'EQ', 'INE928C01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DALBHARAT', 'Dalmia Bharat Limited', 'General', 'General', 'EQ', 'INE00R701025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DALMIASUG', 'Dalmia Bharat Sugar and Industries Limited', 'General', 'General', 'EQ', 'INE495A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DAMCAPITAL', 'Dam Capital Advisors Limited', 'General', 'General', 'EQ', 'INE284H01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DAMODARIND', 'Damodar Industries Limited', 'General', 'General', 'EQ', 'INE497D01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DANGEE', 'Dangee Dums Limited', 'General', 'General', 'EQ', 'INE688Y01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DATAMATICS', 'Datamatics Global Services Limited', 'General', 'General', 'EQ', 'INE365B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DATAPATTNS', 'Data Patterns (India) Limited', 'General', 'General', 'EQ', 'INE0IX101010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DAVANGERE', 'Davangere Sugar Company Limited', 'General', 'General', 'EQ', 'INE179G01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DBCORP', 'D.B.Corp Limited', 'General', 'General', 'EQ', 'INE950I01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DBL', 'Dilip Buildcon Limited', 'General', 'General', 'EQ', 'INE917M01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DBSTOCKBRO', 'DB (International) Stock Brokers Limited', 'General', 'General', 'EQ', 'INE921B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DCAL', 'Dishman Carbogen Amcis Limited', 'General', 'General', 'EQ', 'INE385W01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DCBBANK', 'DCB Bank Limited', 'General', 'General', 'EQ', 'INE503A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DCMSHRIRAM', 'DCM Shriram Limited', 'General', 'General', 'EQ', 'INE499A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DCMSRIND', 'DCM Shriram Industries Limited', 'General', 'General', 'EQ', 'INE843D01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DCW', 'DCW Limited', 'General', 'General', 'EQ', 'INE500A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DCXINDIA', 'DCX Systems Limited', 'General', 'General', 'EQ', 'INE0KL801015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DDEVPLSTIK', 'Ddev Plastiks Industries Limited', 'General', 'General', 'EQ', 'INE0HR601026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DECCANCE', 'Deccan Cements Limited', 'General', 'General', 'EQ', 'INE583C01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DECNGOLD', 'Deccan Gold Mines Limited', 'General', 'General', 'EQ', 'INE945F01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DEEPAKFERT', 'Deepak Fertilizers and Petrochemicals Corporation Limited', 'General', 'General', 'EQ', 'INE501A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DEEPAKNTR', 'Deepak Nitrite Limited', 'General', 'General', 'EQ', 'INE288B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DEEPINDS', 'Deep Industries Limited', 'General', 'General', 'EQ', 'INE0FHS01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DELHIVERY', 'Delhivery Limited', 'General', 'General', 'EQ', 'INE148O01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DELPHIFX', 'DELPHI WORLD MONEY LIMITED', 'General', 'General', 'EQ', 'INE726L01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DELTACORP', 'Delta Corp Limited', 'General', 'General', 'EQ', 'INE124G01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DELTAMAGNT', 'Delta Manufacturing Limited', 'General', 'General', 'EQ', 'INE393A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DEN', 'Den Networks Limited', 'General', 'General', 'EQ', 'INE947J01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DENORA', 'De Nora India Limited', 'General', 'General', 'EQ', 'INE244A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DENTA', 'Denta Water and Infra Solutions Limited', 'General', 'General', 'EQ', 'INE0R4L01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DEVIT', 'Dev Information Technology Limited', 'General', 'General', 'EQ', 'INE060X01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DEVX', 'Dev Accelerator Limited', 'General', 'General', 'EQ', 'INE0VOV01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DEVYANI', 'Devyani International Limited', 'General', 'General', 'EQ', 'INE872J01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DGCONTENT', 'Digicontent Limited', 'General', 'General', 'EQ', 'INE03JI01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DHAMPURSUG', 'Dhampur Sugar Mills Limited', 'General', 'General', 'EQ', 'INE041A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DHANBANK', 'Dhanlaxmi Bank Limited', 'General', 'General', 'EQ', 'INE680A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DHANUKA', 'Dhanuka Agritech Limited', 'General', 'General', 'EQ', 'INE435G01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DHARMAJ', 'Dharmaj Crop Guard Limited', 'General', 'General', 'EQ', 'INE00OQ01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DHUNINV', 'Dhunseri Investments Limited', 'General', 'General', 'EQ', 'INE320L01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DIACABS', 'Diamond Power Infrastructure Limited', 'General', 'General', 'EQ', 'INE989C01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DIAMINESQ', 'Diamines & Chemicals Limited', 'General', 'General', 'EQ', 'INE591D01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DIAMONDYD', 'Prataap Snacks Limited', 'General', 'General', 'EQ', 'INE393P01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DICIND', 'DIC India Limited', 'General', 'General', 'EQ', 'INE303A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DIFFNKG', 'Diffusion Engineers Limited', 'General', 'General', 'EQ', 'INE184O01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DIGIDRIVE', 'Digidrive Distributors Limited', 'General', 'General', 'EQ', 'INE0PSC01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DIGITIDE', 'Digitide Solutions Limited', 'General', 'General', 'EQ', 'INE0U4701011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DIGJAMLMTD', 'Digjam Limited', 'General', 'General', 'EQ', 'INE731U01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DISAQ', 'Disa India Limited', 'General', 'General', 'EQ', 'INE131C01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DIVGIITTS', 'Divgi Torqtransfer Systems Limited', 'General', 'General', 'EQ', 'INE753U01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DIVISLAB', 'Divi''s Laboratories Limited', 'General', 'General', 'EQ', 'INE361B01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DIXON', 'Dixon Technologies (India) Limited', 'General', 'General', 'EQ', 'INE935N01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DJML', 'DJ Mediaprint & Logistics Limited', 'General', 'General', 'EQ', 'INE0B1K01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DLF', 'DLF Limited', 'General', 'General', 'EQ', 'INE271C01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DLINKINDIA', 'D-Link (India) Limited', 'General', 'General', 'EQ', 'INE250K01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DMART', 'Avenue Supermarts Limited', 'General', 'General', 'EQ', 'INE192R01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DMCC', 'DMCC SPECIALITY CHEMICALS LIMITED', 'General', 'General', 'EQ', 'INE505A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DNAMEDIA', 'Diligent Media Corporation Limited', 'General', 'General', 'EQ', 'INE016M01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DODLA', 'Dodla Dairy Limited', 'General', 'General', 'EQ', 'INE021O01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DOLATALGO', 'Dolat Algotech Limited', 'General', 'General', 'EQ', 'INE966A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DOLLAR', 'Dollar Industries Limited', 'General', 'General', 'EQ', 'INE325C01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DOLPHIN', 'Dolphin Offshore Enterprises (India) Limited', 'General', 'General', 'EQ', 'INE920A01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DOMS', 'DOMS Industries Limited', 'General', 'General', 'EQ', 'INE321T01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DONEAR', 'Donear Industries Limited', 'General', 'General', 'EQ', 'INE668D01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DPABHUSHAN', 'D. P. Abhushan Limited', 'General', 'General', 'EQ', 'INE266Y01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DPWIRES', 'D P Wires Limited', 'General', 'General', 'EQ', 'INE864X01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DRAGARWQ', 'Dr Agarwals Eye Hospital Limited', 'General', 'General', 'EQ', 'INE934C01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DRCSYSTEMS', 'DRC Systems India Limited', 'General', 'General', 'EQ', 'INE03RS01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DREAMFOLKS', 'Dreamfolks Services Limited', 'General', 'General', 'EQ', 'INE0JS101016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DREDGECORP', 'Dredging Corporation of India Limited', 'General', 'General', 'EQ', 'INE506A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DRREDDY', 'Dr. Reddy''s Laboratories Limited', 'General', 'General', 'EQ', 'INE089A01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DSFCL', 'DCM Shriram Fine Chemicals Limited', 'General', 'General', 'EQ', 'INE0OFM01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DSSL', 'Dynacons Systems & Solutions Limited', 'General', 'General', 'EQ', 'INE417B01040', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DTIL', 'Dhunseri Tea & Industries Limited', 'General', 'General', 'EQ', 'INE341R01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DVL', 'Dhunseri Ventures Limited', 'General', 'General', 'EQ', 'INE477B01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DWARKESH', 'Dwarikesh Sugar Industries Limited', 'General', 'General', 'EQ', 'INE366A01041', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DYCL', 'Dynamic Cables Limited', 'General', 'General', 'EQ', 'INE600Y01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DYNAMATECH', 'Dynamatic Technologies Limited', 'General', 'General', 'EQ', 'INE221B01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('DYNPRO', 'Dynemic Products Limited', 'General', 'General', 'EQ', 'INE256H01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('E2E', 'E2E Networks Limited', 'General', 'General', 'EQ', 'INE255Z01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EASEMYTRIP', 'Easy Trip Planners Limited', 'General', 'General', 'EQ', 'INE07O001026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EBGNG', 'GNG Electronics Limited', 'General', 'General', 'EQ', 'INE18JU01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ECLERX', 'eClerx Services Limited', 'General', 'General', 'EQ', 'INE738I01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EDELWEISS', 'Edelweiss Financial Services Limited', 'General', 'General', 'EQ', 'INE532F01054', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EFCIL', 'EFC (I) Limited', 'General', 'General', 'EQ', 'INE886D01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EICHERMOT', 'Eicher Motors Limited', 'General', 'General', 'EQ', 'INE066A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EIDPARRY', 'EID Parry India Limited', 'General', 'General', 'EQ', 'INE126A01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EIEL', 'Enviro Infra Engineers Limited', 'General', 'General', 'EQ', 'INE0LLY01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EIFFL', 'Euro India Fresh Foods Limited', 'General', 'General', 'EQ', 'INE546V01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EIHAHOTELS', 'EIH Associated Hotels Limited', 'General', 'General', 'EQ', 'INE276C01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EIHOTEL', 'EIH Limited', 'General', 'General', 'EQ', 'INE230A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EIMCOELECO', 'Eimco Elecon (India) Limited', 'General', 'General', 'EQ', 'INE158B01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EKC', 'Everest Kanto Cylinder Limited', 'General', 'General', 'EQ', 'INE184H01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELANTAS', 'Elantas Beck India Limited', 'General', 'General', 'EQ', 'INE280B01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELCIDIN', 'EL CID Investments Limited', 'General', 'General', 'EQ', 'INE927X01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELDEHSG', 'Eldeco Housing And Industries Limited', 'General', 'General', 'EQ', 'INE668G01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELECON', 'Elecon Engineering Company Limited', 'General', 'General', 'EQ', 'INE205B01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELECTCAST', 'Electrosteel Castings Limited', 'General', 'General', 'EQ', 'INE086A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELECTHERM', 'Electrotherm (India) Limited', 'General', 'General', 'EQ', 'INE822G01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELGIEQUIP', 'Elgi Equipments Limited', 'General', 'General', 'EQ', 'INE285A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELGIRUBCO', 'Elgi Rubber Company Limited', 'General', 'General', 'EQ', 'INE819L01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELIN', 'Elin Electronics Limited', 'General', 'General', 'EQ', 'INE050401020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELITECON', 'Elitecon International Limited', 'General', 'General', 'EQ', 'INE669R01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELLEN', 'Ellenbarrie Industrial Gases Limited', 'General', 'General', 'EQ', 'INE236E01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ELPROINTL', 'Elpro International Limited', 'General', 'General', 'EQ', 'INE579B01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EMAMILTD', 'Emami Limited', 'General', 'General', 'EQ', 'INE548C01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EMAMIPAP', 'Emami Paper Mills Limited', 'General', 'General', 'EQ', 'INE830C01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EMBDL', 'Embassy Developments Limited', 'General', 'General', 'EQ', 'INE069I01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EMCURE', 'Emcure Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE168P01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EMIL', 'Electronics Mart India Limited', 'General', 'General', 'EQ', 'INE02YR01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EMKAY', 'Emkay Global Financial Services Limited', 'General', 'General', 'EQ', 'INE296H01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EMMBI', 'Emmbi Industries Limited', 'General', 'General', 'EQ', 'INE753K01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EMMVEE', 'Emmvee Photovoltaic Power Limited', 'General', 'General', 'EQ', 'INE1C6T01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EMSLIMITED', 'EMS Limited', 'General', 'General', 'EQ', 'INE0OV601013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EMUDHRA', 'eMudhra Limited', 'General', 'General', 'EQ', 'INE01QM01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ENDURANCE', 'Endurance Technologies Limited', 'General', 'General', 'EQ', 'INE913H01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ENERGYDEV', 'Energy Development Company Limited', 'General', 'General', 'EQ', 'INE306C01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ENGINERSIN', 'Engineers India Limited', 'General', 'General', 'EQ', 'INE510A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ENIL', 'Entertainment Network (India) Limited', 'General', 'General', 'EQ', 'INE265F01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ENRIN', 'Siemens Energy India Limited', 'General', 'General', 'EQ', 'INE1NPP01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ENTERO', 'Entero Healthcare Solutions Limited', 'General', 'General', 'EQ', 'INE010601016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EPACK', 'EPACK Durable Limited', 'General', 'General', 'EQ', 'INE0G5901015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EPACKPEB', 'EPack Prefab Technologies Limited', 'General', 'General', 'EQ', 'INE0MLS01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EPIGRAL', 'Epigral Limited', 'General', 'General', 'EQ', 'INE071N01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EPL', 'EPL Limited', 'General', 'General', 'EQ', 'INE255A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EQUITASBNK', 'Equitas Small Finance Bank Limited', 'General', 'General', 'EQ', 'INE063P01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ERIS', 'Eris Lifesciences Limited', 'General', 'General', 'EQ', 'INE406M01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ESABINDIA', 'Esab India Limited', 'General', 'General', 'EQ', 'INE284A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ESAFSFB', 'ESAF Small Finance Bank Limited', 'General', 'General', 'EQ', 'INE818W01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ESCORTS', 'Escorts Kubota Limited', 'General', 'General', 'EQ', 'INE042A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ESSARSHPNG', 'Essar Shipping Limited', 'General', 'General', 'EQ', 'INE122M01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ESTER', 'Ester Industries Limited', 'General', 'General', 'EQ', 'INE778B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ETERNAL', 'ETERNAL LIMITED', 'General', 'General', 'EQ', 'INE758T01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ETHOSLTD', 'Ethos Limited', 'General', 'General', 'EQ', 'INE04TZ01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EUREKAFORB', 'Eureka Forbes Limited', 'General', 'General', 'EQ', 'INE0KCE01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EUROBOND', 'Euro Panel Products Limited', 'General', 'General', 'EQ', 'INE505V01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EUROPRATIK', 'Euro Pratik Sales Limited', 'General', 'General', 'EQ', 'INE198501012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EVEREADY', 'Eveready Industries India Limited', 'General', 'General', 'EQ', 'INE128A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EVERESTIND', 'Everest Industries Limited', 'General', 'General', 'EQ', 'INE295A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EXCELINDUS', 'Excel Industries Limited', 'General', 'General', 'EQ', 'INE369A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EXCELSOFT', 'Excelsoft Technologies Limited', 'General', 'General', 'EQ', 'INE606N01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EXICOM', 'Exicom Tele-Systems Limited', 'General', 'General', 'EQ', 'INE777F01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EXIDEIND', 'Exide Industries Limited', 'General', 'General', 'EQ', 'INE302A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EXPLEOSOL', 'Expleo Solutions Limited', 'General', 'General', 'EQ', 'INE201K01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('EXXARO', 'Exxaro Tiles Limited', 'General', 'General', 'EQ', 'INE0GFE01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FABTECH', 'Fabtech Technologies Limited', 'General', 'General', 'EQ', 'INE0HF201011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FACT', 'Fertilizers and Chemicals Travancore Limited', 'General', 'General', 'EQ', 'INE188A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FAIRCHEMOR', 'Fairchem Organics Limited', 'General', 'General', 'EQ', 'INE0DNW01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FAZE3Q', 'Faze Three Limited', 'General', 'General', 'EQ', 'INE963C01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FCL', 'Fineotex Chemical Limited', 'General', 'General', 'EQ', 'INE045J01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FDC', 'FDC Limited', 'General', 'General', 'EQ', 'INE258B01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FEDDERSHOL', 'Fedders Holding Limited', 'General', 'General', 'EQ', 'INE417D01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FEDERALBNK', 'The Federal Bank  Limited', 'General', 'General', 'EQ', 'INE171A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FEDFINA', 'Fedbank Financial Services Limited', 'General', 'General', 'EQ', 'INE007N01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FERMENTA', 'Fermenta Biotech Limited', 'General', 'General', 'EQ', 'INE225B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FIBERWEB', 'Fiberweb (India) Limited', 'General', 'General', 'EQ', 'INE296C01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FIEMIND', 'Fiem Industries Limited', 'General', 'General', 'EQ', 'INE737H01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FILATEX', 'Filatex India Limited', 'General', 'General', 'EQ', 'INE816B01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FINCABLES', 'Finolex Cables Limited', 'General', 'General', 'EQ', 'INE235A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FINEORG', 'Fine Organic Industries Limited', 'General', 'General', 'EQ', 'INE686Y01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FINKURVE', 'Finkurve Financial Services Limited', 'General', 'General', 'EQ', 'INE734I01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FINOPB', 'Fino Payments Bank Limited', 'General', 'General', 'EQ', 'INE02NC01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FINPIPE', 'Finolex Industries Limited', 'General', 'General', 'EQ', 'INE183A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FIRSTCRY', 'Brainbees Solutions Limited', 'General', 'General', 'EQ', 'INE02RE01045', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FISCHER', 'Fischer Medical Ventures Limited', 'General', 'General', 'EQ', 'INE771F01041', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FIVESTAR', 'Five-Star Business Finance Limited', 'General', 'General', 'EQ', 'INE128S01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FLAIR', 'Flair Writing Industries Limited', 'General', 'General', 'EQ', 'INE00Y201027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FLUOROCHEM', 'Gujarat Fluorochemicals Limited', 'General', 'General', 'EQ', 'INE09N301011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FMGOETZE', 'Federal-Mogul Goetze (India) Limited.', 'General', 'General', 'EQ', 'INE529A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FOCUS', 'Focus Lighting and Fixtures Limited', 'General', 'General', 'EQ', 'INE593W01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FOODSIN', 'Foods & Inns Limited', 'General', 'General', 'EQ', 'INE976E01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FORCEMOT', 'FORCE MOTORS LTD', 'General', 'General', 'EQ', 'INE451A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FORTIS', 'Fortis Healthcare Limited', 'General', 'General', 'EQ', 'INE061F01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FOSECOIND', 'Foseco India Limited', 'General', 'General', 'EQ', 'INE519A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FRACTAL', 'Fractal Analytics Limited', 'General', 'General', 'EQ', 'INE212S01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FRONTSP', 'Frontier Springs Limited', 'General', 'General', 'EQ', 'INE572D01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FSL', 'Firstsource Solutions Limited', 'General', 'General', 'EQ', 'INE684F01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('FUSION', 'Fusion Finance Limited', 'General', 'General', 'EQ', 'INE139R01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GABRIEL', 'Gabriel India Limited', 'General', 'General', 'EQ', 'INE524A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GAEL', 'Gujarat Ambuja Exports Limited', 'General', 'General', 'EQ', 'INE036B01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GAIL', 'GAIL (India) Limited', 'General', 'General', 'EQ', 'INE129A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GALAPREC', 'Gala Precision Engineering Limited', 'General', 'General', 'EQ', 'INE0RE001014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GALAXYSURF', 'Galaxy Surfactants Limited', 'General', 'General', 'EQ', 'INE600K01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GALLANTT', 'Gallantt Ispat Limited', 'General', 'General', 'EQ', 'INE297H01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GANDHAR', 'Gandhar Oil Refinery (India) Limited', 'General', 'General', 'EQ', 'INE717W01049', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GANDHITUBE', 'Gandhi Special Tubes Limited', 'General', 'General', 'EQ', 'INE524B01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GANECOS', 'Ganesha Ecosphere Limited', 'General', 'General', 'EQ', 'INE845D01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GANESHBE', 'Ganesh Benzoplast Limited', 'General', 'General', 'EQ', 'INE388A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GANESHCP', 'Ganesh Consumer Products Limited', 'General', 'General', 'EQ', 'INE652V01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GANESHHOU', 'GANESH HOUSING LIMITED', 'General', 'General', 'EQ', 'INE460C01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GANGAFORGE', 'Ganga Forging Limited', 'General', 'General', 'EQ', 'INE691Z01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GANGESSECU', 'Ganges Securities Limited', 'General', 'General', 'EQ', 'INE335W01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GARFIBRES', 'Garware Technical Fibres Limited', 'General', 'General', 'EQ', 'INE276A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GARUDA', 'Garuda Construction and Engineering Limited', 'General', 'General', 'EQ', 'INE0JVO01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GATECH', 'GACM Technologies Limited', 'General', 'General', 'EQ', 'INE224E01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GATECHDVR', 'GACM Technologies Limited', 'General', 'General', 'EQ', 'INE224E01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GATEWAY', 'Gateway Distriparks Limited', 'General', 'General', 'EQ', 'INE079J01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GAYAHWS', 'Gayatri Highways Limited', 'General', 'General', 'EQ', 'INE287Z01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GCSL', 'Gretex Corporate Services Limited', 'General', 'General', 'EQ', 'INE199P01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GEECEE', 'GeeCee Ventures Limited', 'General', 'General', 'EQ', 'INE916G01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GEEKAYWIRE', 'Geekay Wires Limited', 'General', 'General', 'EQ', 'INE669X01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GEMAROMA', 'Gem Aromatics Limited', 'General', 'General', 'EQ', 'INE06XZ01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GENCON', 'Generic Engineering Construction and Projects Limited', 'General', 'General', 'EQ', 'INE854S01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GENESYS', 'Genesys International Corporation Limited', 'General', 'General', 'EQ', 'INE727B01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GENUSPAPER', 'Genus Paper & Boards Limited', 'General', 'General', 'EQ', 'INE949P01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GENUSPOWER', 'Genus Power Infrastructures Limited', 'General', 'General', 'EQ', 'INE955D01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GEOJITFSL', 'Geojit Financial Services Limited', 'General', 'General', 'EQ', 'INE007B01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GESHIP', 'The Great Eastern Shipping Company Limited', 'General', 'General', 'EQ', 'INE017A01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GFLLIMITED', 'GFL Limited', 'General', 'General', 'EQ', 'INE538A01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GHCL', 'GHCL Limited', 'General', 'General', 'EQ', 'INE539A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GHCLTEXTIL', 'GHCL Textiles Limited', 'General', 'General', 'EQ', 'INE0PA801013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GICHSGFIN', 'GIC Housing Finance Limited', 'General', 'General', 'EQ', 'INE289B01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GICL', 'Globe International Carriers Limited', 'General', 'General', 'EQ', 'INE947T01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GICRE', 'General Insurance Corporation of India', 'General', 'General', 'EQ', 'INE481Y01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GILLANDERS', 'Gillanders Arbuthnot & Company Limited', 'General', 'General', 'EQ', 'INE047B01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GILLETTE', 'Gillette India Limited', 'General', 'General', 'EQ', 'INE322A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GINNIFILA', 'Ginni Filaments Limited', 'General', 'General', 'EQ', 'INE424C01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GIPCL', 'Gujarat Industries Power Company Limited', 'General', 'General', 'EQ', 'INE162A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GKENERGY', 'GK Energy Limited', 'General', 'General', 'EQ', 'INE1AG301022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GKSL', 'Gujarat Kidney And Super Speciality Limited', 'General', 'General', 'EQ', 'INE0V0W01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GKWLIMITED', 'GKW Limited', 'General', 'General', 'EQ', 'INE528A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GLAND', 'Gland Pharma Limited', 'General', 'General', 'EQ', 'INE068V01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GLAXO', 'GlaxoSmithKline Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE159A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GLENMARK', 'Glenmark Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE935A01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GLOBAL', 'Global Education Limited', 'General', 'General', 'EQ', 'INE291W01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GLOBALVECT', 'Global Vectra Helicorp Limited', 'General', 'General', 'EQ', 'INE792H01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GLOBE', 'GLOBE ENTERPRISES (INDIA) LIMITED', 'General', 'General', 'EQ', 'INE581X01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GLOBUSSPR', 'Globus Spirits Limited', 'General', 'General', 'EQ', 'INE615I01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GLOSTERLTD', 'Gloster Limited', 'General', 'General', 'EQ', 'INE350Z01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GMBREW', 'GM Breweries Limited', 'General', 'General', 'EQ', 'INE075D01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GMDCLTD', 'Gujarat Mineral Development Corporation Limited', 'General', 'General', 'EQ', 'INE131A01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GMMPFAUDLR', 'GMM Pfaudler Limited', 'General', 'General', 'EQ', 'INE541A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GMRAIRPORT', 'GMR AIRPORTS LIMITED', 'General', 'General', 'EQ', 'INE776C01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GMRP&UI', 'GMR Power and Urban Infra Limited', 'General', 'General', 'EQ', 'INE0CU601026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GNA', 'GNA Axles Limited', 'General', 'General', 'EQ', 'INE934S01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GNFC', 'Gujarat Narmada Valley Fertilizers and Chemicals Limited', 'General', 'General', 'EQ', 'INE113A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GNRL', 'Gujarat Natural Resources Limited', 'General', 'General', 'EQ', 'INE207H01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOACARBON', 'Goa Carbon Limited', 'General', 'General', 'EQ', 'INE426D01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOCLCORP', 'GOCL Corporation Limited', 'General', 'General', 'EQ', 'INE077F01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOCOLORS', 'Go Fashion (India) Limited', 'General', 'General', 'EQ', 'INE0BJS01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GODAVARIB', 'Godavari Biorefineries Limited', 'General', 'General', 'EQ', 'INE497S01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GODFRYPHLP', 'Godfrey Phillips India Limited', 'General', 'General', 'EQ', 'INE260B01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GODIGIT', 'Go Digit General Insurance Limited', 'General', 'General', 'EQ', 'INE03JT01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GODREJAGRO', 'Godrej Agrovet Limited', 'General', 'General', 'EQ', 'INE850D01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GODREJCP', 'Godrej Consumer Products Limited', 'General', 'General', 'EQ', 'INE102D01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GODREJIND', 'Godrej Industries Limited', 'General', 'General', 'EQ', 'INE233A01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GODREJPROP', 'Godrej Properties Limited', 'General', 'General', 'EQ', 'INE484J01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOKEX', 'Gokaldas Exports Limited', 'General', 'General', 'EQ', 'INE887G01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOKUL', 'Gokul Refoils and Solvent Limited', 'General', 'General', 'EQ', 'INE020J01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOKULAGRO', 'Gokul Agro Resources Limited', 'General', 'General', 'EQ', 'INE314T01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOLDIAM', 'Goldiam International Limited', 'General', 'General', 'EQ', 'INE025B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOLDTECH', 'AION-TECH SOLUTIONS LIMITED', 'General', 'General', 'EQ', 'INE805A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOODLUCK', 'Goodluck India Limited', 'General', 'General', 'EQ', 'INE127I01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOODYEAR', 'Goodyear India Limited', 'General', 'General', 'EQ', 'INE533A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOPAL', 'Gopal Snacks Limited', 'General', 'General', 'EQ', 'INE0L9R01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GOYALALUM', 'Goyal Aluminiums Limited', 'General', 'General', 'EQ', 'INE705X01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GPIL', 'Godawari Power And Ispat limited', 'General', 'General', 'EQ', 'INE177H01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GPPL', 'Gujarat Pipavav Port Limited', 'General', 'General', 'EQ', 'INE517F01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GPTHEALTH', 'GPT Healthcare Limited', 'General', 'General', 'EQ', 'INE486R01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GPTINFRA', 'GPT Infraprojects Limited', 'General', 'General', 'EQ', 'INE390G01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRADIENTE', 'Gradiente Infotainment Limited', 'General', 'General', 'EQ', 'INE361K01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRANDOAK', 'Grand Oak Canyons Distillery Limited', 'General', 'General', 'EQ', 'INE926B01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRANULES', 'Granules India Limited', 'General', 'General', 'EQ', 'INE101D01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRAPHITE', 'Graphite India Limited', 'General', 'General', 'EQ', 'INE371A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRASIM', 'Grasim Industries Limited', 'General', 'General', 'EQ', 'INE047A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRAUWEIL', 'Grauer & Weil India Limited', 'General', 'General', 'EQ', 'INE266D01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRAVISSHO', 'Graviss Hospitality Limited', 'General', 'General', 'EQ', 'INE214F01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRAVITA', 'Gravita India Limited', 'General', 'General', 'EQ', 'INE024L01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GREAVESCOT', 'Greaves Cotton Limited', 'General', 'General', 'EQ', 'INE224A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GREENLAM', 'Greenlam Industries Limited', 'General', 'General', 'EQ', 'INE544R01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GREENPANEL', 'Greenpanel Industries Limited', 'General', 'General', 'EQ', 'INE08ZM01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GREENPLY', 'Greenply Industries Limited', 'General', 'General', 'EQ', 'INE461C01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GREENPOWER', 'Orient Green Power Company Limited', 'General', 'General', 'EQ', 'INE999K01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRINDWELL', 'Grindwell Norton Limited', 'General', 'General', 'EQ', 'INE536A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRINFRA', 'G R Infraprojects Limited', 'General', 'General', 'EQ', 'INE201P01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRMOVER', 'GRM Overseas Limited', 'General', 'General', 'EQ', 'INE192H01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GROBTEA', 'The Grob Tea Company Limited', 'General', 'General', 'EQ', 'INE646C01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GROWW', 'Billionbrains Garage Ventures Limited', 'General', 'General', 'EQ', 'INE0HOQ01053', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRPLTD', 'GRP Limited', 'General', 'General', 'EQ', 'INE137I01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRSE', 'Garden Reach Shipbuilders & Engineers Limited', 'General', 'General', 'EQ', 'INE382Z01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GRWRHITECH', 'Garware Hi-Tech Films Limited', 'General', 'General', 'EQ', 'INE291A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GSFC', 'Gujarat State Fertilizers & Chemicals Limited', 'General', 'General', 'EQ', 'INE026A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GSLSU', 'Global Surfaces Limited', 'General', 'General', 'EQ', 'INE0JSX01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GSPCROP', 'GSP Crop Science Limited', 'General', 'General', 'EQ', 'INE713R01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GTL', 'GTL Limited', 'General', 'General', 'EQ', 'INE043A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GTLINFRA', 'GTL Infrastructure Limited', 'General', 'General', 'EQ', 'INE221H01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GTPL', 'GTPL Hathway Limited', 'General', 'General', 'EQ', 'INE869I01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GUFICBIO', 'Gufic Biosciences Limited', 'General', 'General', 'EQ', 'INE742B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GUJALKALI', 'Gujarat Alkalies and Chemicals Limited', 'General', 'General', 'EQ', 'INE186A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GUJAPOLLO', 'Gujarat Apollo Industries Limited', 'General', 'General', 'EQ', 'INE826C01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GUJGASLTD', 'Gujarat Gas Limited', 'General', 'General', 'EQ', 'INE844O01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GUJRAFFIA', 'Gujarat Raffia Industries Limited', 'General', 'General', 'EQ', 'INE610B01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GUJTHEM', 'Gujarat Themis Biosyn Limited', 'General', 'General', 'EQ', 'INE942C01045', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GULFOILLUB', 'Gulf Oil Lubricants India Limited', 'General', 'General', 'EQ', 'INE635Q01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GULPOLY', 'Gulshan Polyols Limited', 'General', 'General', 'EQ', 'INE255D01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GVPIL', 'GE Power India Limited', 'General', 'General', 'EQ', 'INE878A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GVPTECH', 'GVP Infotech Limited', 'General', 'General', 'EQ', 'INE382T01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('GVT&D', 'GE Vernova T&D India Limited', 'General', 'General', 'EQ', 'INE200A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HAL', 'Hindustan Aeronautics Limited', 'General', 'General', 'EQ', 'INE066F01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HALDER', 'Halder Venture Limited', 'General', 'General', 'EQ', 'INE115S01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HALDYNGL', 'Haldyn Glass Limited', 'General', 'General', 'EQ', 'INE506D01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HALEOSLABS', 'HALEOS LABS LIMITED', 'General', 'General', 'EQ', 'INE320X01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HAPPSTMNDS', 'Happiest Minds Technologies Limited', 'General', 'General', 'EQ', 'INE419U01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HAPPYFORGE', 'Happy Forgings Limited', 'General', 'General', 'EQ', 'INE330T01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HARDWYN', 'Hardwyn India Limited', 'General', 'General', 'EQ', 'INE626Z01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HARIOMPIPE', 'Hariom Pipe Industries Limited', 'General', 'General', 'EQ', 'INE00EV01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HARRMALAYA', 'Harrisons  Malayalam Limited', 'General', 'General', 'EQ', 'INE544A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HARSHA', 'Harsha Engineers International Limited', 'General', 'General', 'EQ', 'INE0JUS01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HATHWAY', 'Hathway Cable & Datacom Limited', 'General', 'General', 'EQ', 'INE982F01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HATSUN', 'Hatsun Agro Product Limited', 'General', 'General', 'EQ', 'INE473B01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HAVELLS', 'Havells India Limited', 'General', 'General', 'EQ', 'INE176B01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HAVISHA', 'Sri Havisha Hospitality and Infrastructure Limited', 'General', 'General', 'EQ', 'INE293B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HAWKINCOOK', 'Hawkins Cookers Limited', 'General', 'General', 'EQ', 'INE979B01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HBESD', 'HB Estate Developers Limited', 'General', 'General', 'EQ', 'INE640B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HBLENGINE', 'HBL Engineering Limited', 'General', 'General', 'EQ', 'INE292B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HCC', 'Hindustan Construction Company Limited', 'General', 'General', 'EQ', 'INE549A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HCG', 'Healthcare Global Enterprises Limited', 'General', 'General', 'EQ', 'INE075I01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HCL-INSYS', 'HCL Infosystems Limited', 'General', 'General', 'EQ', 'INE236A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HCLTECH', 'HCL Technologies Limited', 'General', 'General', 'EQ', 'INE860A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HDBFS', 'HDB Financial Services Limited', 'General', 'General', 'EQ', 'INE756I01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HDFCAMC', 'HDFC Asset Management Company Limited', 'General', 'General', 'EQ', 'INE127D01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HDFCBANK', 'HDFC Bank Limited', 'General', 'General', 'EQ', 'INE040A01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HDFCLIFE', 'HDFC Life Insurance Company Limited', 'General', 'General', 'EQ', 'INE795G01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HEADSUP', 'Heads UP Ventures Limited', 'General', 'General', 'EQ', 'INE759V01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HEALTHX', 'Health X Platform Limited', 'General', 'General', 'EQ', 'INE019J01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HECPROJECT', 'HEC Infra Projects Limited', 'General', 'General', 'EQ', 'INE558R01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HEG', 'HEG Limited', 'General', 'General', 'EQ', 'INE545A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HEIDELBERG', 'HeidelbergCement India Limited', 'General', 'General', 'EQ', 'INE578A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HEMIPROP', 'Hemisphere Properties India Limited', 'General', 'General', 'EQ', 'INE0AJG01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HERANBA', 'Heranba Industries Limited', 'General', 'General', 'EQ', 'INE694N01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HERITGFOOD', 'Heritage Foods Limited', 'General', 'General', 'EQ', 'INE978A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HEROMOTOCO', 'Hero MotoCorp Limited', 'General', 'General', 'EQ', 'INE158A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HESTERBIO', 'Hester Biosciences Limited', 'General', 'General', 'EQ', 'INE782E01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HEXATRADEX', 'Hexa Tradex Limited', 'General', 'General', 'EQ', 'INE750M01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HEXT', 'Hexaware Technologies Limited', 'General', 'General', 'EQ', 'INE093A01041', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HFCL', 'HFCL Limited', 'General', 'General', 'EQ', 'INE548A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HGINFRA', 'H.G. Infra Engineering Limited', 'General', 'General', 'EQ', 'INE926X01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HGM', 'HandsOn Global Management (HGM) Limited', 'General', 'General', 'EQ', 'INE596H01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HGS', 'Hinduja Global Solutions Limited', 'General', 'General', 'EQ', 'INE170I01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HIKAL', 'Hikal Limited', 'General', 'General', 'EQ', 'INE475B01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HIMATSEIDE', 'Himatsingka Seide Limited', 'General', 'General', 'EQ', 'INE049A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HINDALCO', 'Hindalco Industries Limited', 'General', 'General', 'EQ', 'INE038A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HINDCOMPOS', 'Hindustan Composites Limited', 'General', 'General', 'EQ', 'INE310C01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HINDCOPPER', 'Hindustan Copper Limited', 'General', 'General', 'EQ', 'INE531E01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HINDOILEXP', 'Hindustan Oil Exploration Company Limited', 'General', 'General', 'EQ', 'INE345A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HINDPETRO', 'Hindustan Petroleum Corporation Limited', 'General', 'General', 'EQ', 'INE094A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HINDUNILVR', 'Hindustan Unilever Limited', 'General', 'General', 'EQ', 'INE030A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HINDWAREAP', 'Hindware Home Innovation Limited', 'General', 'General', 'EQ', 'INE05AN01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HINDZINC', 'Hindustan Zinc Limited', 'General', 'General', 'EQ', 'INE267A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HIRECT', 'Hind Rectifiers Limited', 'General', 'General', 'EQ', 'INE835D01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HISARMETAL', 'Hisar Metal Industries Limited', 'General', 'General', 'EQ', 'INE598C01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HITECH', 'Hi-Tech Pipes Limited', 'General', 'General', 'EQ', 'INE106T01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HLEGLAS', 'HLE Glascoat Limited', 'General', 'General', 'EQ', 'INE461D01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HLVLTD', 'HLV LIMITED', 'General', 'General', 'EQ', 'INE102A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HMAAGRO', 'HMA Agro Industries Limited', 'General', 'General', 'EQ', 'INE0ECP01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HMVL', 'Hindustan Media Ventures Limited', 'General', 'General', 'EQ', 'INE871K01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HNDFDS', 'Hindustan Foods Limited', 'General', 'General', 'EQ', 'INE254N01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HOMEFIRST', 'Home First Finance Company India Limited', 'General', 'General', 'EQ', 'INE481N01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HONASA', 'Honasa Consumer Limited', 'General', 'General', 'EQ', 'INE0J5401028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HONAUT', 'Honeywell Automation India Limited', 'General', 'General', 'EQ', 'INE671A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HONDAPOWER', 'Honda India Power Products Limited', 'General', 'General', 'EQ', 'INE634A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HPAL', 'HP Adhesives Limited', 'General', 'General', 'EQ', 'INE0GSL01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HPIL', 'Hindprakash Industries Limited', 'General', 'General', 'EQ', 'INE05X901010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HPL', 'HPL Electric & Power Limited', 'General', 'General', 'EQ', 'INE495S01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HSCL', 'Himadri Speciality Chemical Limited', 'General', 'General', 'EQ', 'INE019C01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HTMEDIA', 'HT Media Limited', 'General', 'General', 'EQ', 'INE501G01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HUBTOWN', 'Hubtown Limited', 'General', 'General', 'EQ', 'INE703H01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HUDCO', 'Housing & Urban Development Corporation Limited', 'General', 'General', 'EQ', 'INE031A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HUHTAMAKI', 'Huhtamaki India Limited', 'General', 'General', 'EQ', 'INE275B01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HYBRIDFIN', 'Hybrid Financial Services Limited', 'General', 'General', 'EQ', 'INE965B01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('HYUNDAI', 'Hyundai Motor India Limited', 'General', 'General', 'EQ', 'INE0V6F01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ICDSLTD', 'ICDS Limited', 'General', 'General', 'EQ', 'INE613B01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ICEMAKE', 'Ice Make Refrigeration Limited', 'General', 'General', 'EQ', 'INE520Y01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ICICIAMC', 'ICICI Prudential Asset Management Company Limited', 'General', 'General', 'EQ', 'INE346A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ICICIBANK', 'ICICI Bank Limited', 'General', 'General', 'EQ', 'INE090A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ICICIGI', 'ICICI Lombard General Insurance Company Limited', 'General', 'General', 'EQ', 'INE765G01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ICICIPRULI', 'ICICI Prudential Life Insurance Company Limited', 'General', 'General', 'EQ', 'INE726G01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ICIL', 'Indo Count Industries Limited', 'General', 'General', 'EQ', 'INE483B01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ICRA', 'ICRA Limited', 'General', 'General', 'EQ', 'INE725G01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IDBI', 'IDBI Bank Limited', 'General', 'General', 'EQ', 'INE008A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IDEA', 'Vodafone Idea Limited', 'General', 'General', 'EQ', 'INE669E01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IDFCFIRSTB', 'IDFC First Bank Limited', 'General', 'General', 'EQ', 'INE092T01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IEX', 'Indian Energy Exchange Limited', 'General', 'General', 'EQ', 'INE022Q01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IFBIND', 'IFB Industries Limited', 'General', 'General', 'EQ', 'INE559A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IFCI', 'IFCI Limited', 'General', 'General', 'EQ', 'INE039A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IFGLEXPOR', 'IFGL Refractories Limited', 'General', 'General', 'EQ', 'INE133Y01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IGARASHI', 'Igarashi Motors India Limited', 'General', 'General', 'EQ', 'INE188B01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IGCL', 'Indogulf Cropsciences Limited', 'General', 'General', 'EQ', 'INE05J901018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IGIL', 'International Gemological Institute Limited', 'General', 'General', 'EQ', 'INE0Q9301021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IGL', 'Indraprastha Gas Limited', 'General', 'General', 'EQ', 'INE203G01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IGPL', 'IG Petrochemicals Limited', 'General', 'General', 'EQ', 'INE204A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IIFL', 'IIFL Finance Limited', 'General', 'General', 'EQ', 'INE530B01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IIFLCAPS', 'IIFL Capital Services Limited', 'General', 'General', 'EQ', 'INE489L01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IITL', 'Industrial Investment Trust Limited', 'General', 'General', 'EQ', 'INE886A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IKIO', 'IKIO Technologies Limited', 'General', 'General', 'EQ', 'INE0LOJ01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IKS', 'Inventurus Knowledge Solutions Limited', 'General', 'General', 'EQ', 'INE115Q01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IMAGICAA', 'Imagicaaworld Entertainment Limited', 'General', 'General', 'EQ', 'INE172N01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IMFA', 'Indian Metals & Ferro Alloys Limited', 'General', 'General', 'EQ', 'INE919H01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IMPAL', 'India Motor Parts and Accessories Limited', 'General', 'General', 'EQ', 'INE547E01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INA', 'Insolation Energy Limited', 'General', 'General', 'EQ', 'INE0LGX01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INCREDIBLE', 'INCREDIBLE INDUSTRIES LIMITED', 'General', 'General', 'EQ', 'INE452L01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDBANK', 'Indbank Merchant Banking Services Limited', 'General', 'General', 'EQ', 'INE841B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDGN', 'Indegene Limited', 'General', 'General', 'EQ', 'INE065X01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDHOTEL', 'The Indian Hotels Company Limited', 'General', 'General', 'EQ', 'INE053A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDIACEM', 'The India Cements Limited', 'General', 'General', 'EQ', 'INE383A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDIAGLYCO', 'India Glycols Limited', 'General', 'General', 'EQ', 'INE560A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDIAMART', 'Indiamart Intermesh Limited', 'General', 'General', 'EQ', 'INE933S01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDIANB', 'Indian Bank', 'General', 'General', 'EQ', 'INE562A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDIANCARD', 'Indian Card Clothing Company Limited', 'General', 'General', 'EQ', 'INE061A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDIANHUME', 'Indian Hume Pipe Company Limited', 'General', 'General', 'EQ', 'INE323C01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDIASHLTR', 'India Shelter Finance Corporation Limited', 'General', 'General', 'EQ', 'INE922K01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDIGO', 'InterGlobe Aviation Limited', 'General', 'General', 'EQ', 'INE646L01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDIGOPNTS', 'Indigo Paints Limited', 'General', 'General', 'EQ', 'INE09VQ01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDIQUBE', 'Indiqube Spaces Limited', 'General', 'General', 'EQ', 'INE06ST01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDNIPPON', 'India Nippon Electricals Limited', 'General', 'General', 'EQ', 'INE092B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDOAMIN', 'Indo Amines Limited', 'General', 'General', 'EQ', 'INE760F01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDOBORAX', 'Indo Borax & Chemicals Limited', 'General', 'General', 'EQ', 'INE803D01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDOCO', 'Indoco Remedies Limited', 'General', 'General', 'EQ', 'INE873D01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDOFARM', 'Indo Farm Equipment Limited', 'General', 'General', 'EQ', 'INE622H01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDORAMA', 'Indo Rama Synthetics (India) Limited', 'General', 'General', 'EQ', 'INE156A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDOSTAR', 'IndoStar Capital Finance Limited', 'General', 'General', 'EQ', 'INE896L01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDOTHAI', 'Indo Thai Securities Limited', 'General', 'General', 'EQ', 'INE337M01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDOUS', 'Indo Us Biotech Limited', 'General', 'General', 'EQ', 'INE250Z01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDPRUD', 'Industrial & Prudential Investment Company Limited', 'General', 'General', 'EQ', 'INE620D01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDRAMEDCO', 'Indraprastha Medical Corporation Limited', 'General', 'General', 'EQ', 'INE681B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDSWFTLAB', 'Ind-Swift Laboratories Limited', 'General', 'General', 'EQ', 'INE915B01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDTERRAIN', 'Indian Terrain Fashions Limited', 'General', 'General', 'EQ', 'INE611L01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDUSINDBK', 'IndusInd Bank Limited', 'General', 'General', 'EQ', 'INE095A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INDUSTOWER', 'Indus Towers Limited', 'General', 'General', 'EQ', 'INE121J01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INFOBEAN', 'InfoBeans Technologies Limited', 'General', 'General', 'EQ', 'INE344S01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INFOMEDIA', 'Infomedia Press Limited', 'General', 'General', 'EQ', 'INE669A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INFY', 'Infosys Limited', 'General', 'General', 'EQ', 'INE009A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INGERRAND', 'Ingersoll Rand (India) Limited', 'General', 'General', 'EQ', 'INE177A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INNOVACAP', 'Innova Captab Limited', 'General', 'General', 'EQ', 'INE0DUT01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INNOVANA', 'Innovana Thinklabs Limited', 'General', 'General', 'EQ', 'INE403Y01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INNOVISION', 'Innovision Limited', 'General', 'General', 'EQ', 'INE0ADB01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INOXGREEN', 'Inox Green Energy Services Limited', 'General', 'General', 'EQ', 'INE510W01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INOXINDIA', 'INOX India Limited', 'General', 'General', 'EQ', 'INE616N01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INOXWIND', 'Inox Wind Limited', 'General', 'General', 'EQ', 'INE066P01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INSECTICID', 'Insecticides (India) Limited', 'General', 'General', 'EQ', 'INE070I01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INTELLECT', 'Intellect Design Arena Limited', 'General', 'General', 'EQ', 'INE306R01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INTENTECH', 'Intense Technologies Limited', 'General', 'General', 'EQ', 'INE781A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INTERARCH', 'Interarch Building Solutions Limited', 'General', 'General', 'EQ', 'INE00M901018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INTLCONV', 'International Conveyors Limited', 'General', 'General', 'EQ', 'INE575C01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INVENTURE', 'Inventure Growth & Securities Limited', 'General', 'General', 'EQ', 'INE878H01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('INVPRECQ', 'Investment & Precision Castings Limited', 'General', 'General', 'EQ', 'INE155E01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IOB', 'Indian Overseas Bank', 'General', 'General', 'EQ', 'INE565A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IOC', 'Indian Oil Corporation Limited', 'General', 'General', 'EQ', 'INE242A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IOLCP', 'IOL Chemicals and Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE485C01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IONEXCHANG', 'ION Exchange (India) Limited', 'General', 'General', 'EQ', 'INE570A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IPCALAB', 'IPCA Laboratories Limited', 'General', 'General', 'EQ', 'INE571A01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IPL', 'India Pesticides Limited', 'General', 'General', 'EQ', 'INE0D6701023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IRB', 'IRB Infrastructure Developers Limited', 'General', 'General', 'EQ', 'INE821I01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IRCON', 'Ircon International Limited', 'General', 'General', 'EQ', 'INE962Y01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IRCTC', 'Indian Railway Catering And Tourism Corporation Limited', 'General', 'General', 'EQ', 'INE335Y01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IREDA', 'Indian Renewable Energy Development Agency Limited', 'General', 'General', 'EQ', 'INE202E01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IRFC', 'Indian Railway Finance Corporation Limited', 'General', 'General', 'EQ', 'INE053F01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IRIS', 'IRIS RegTech Solutions Limited', 'General', 'General', 'EQ', 'INE864K01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IRISDOREME', 'Iris Clothings Limited', 'General', 'General', 'EQ', 'INE01GN01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IRMENERGY', 'IRM Energy Limited', 'General', 'General', 'EQ', 'INE07U701015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ISFT', 'Intrasoft Technologies Limited', 'General', 'General', 'EQ', 'INE566K01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ISGEC', 'Isgec Heavy Engineering Limited', 'General', 'General', 'EQ', 'INE858B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ISHANCH', 'Ishan Dyes and Chemicals Limited', 'General', 'General', 'EQ', 'INE561M01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ITC', 'ITC Limited', 'General', 'General', 'EQ', 'INE154A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ITCHOTELS', 'ITC Hotels Limited', 'General', 'General', 'EQ', 'INE379A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ITDC', 'India Tourism Development Corporation Limited', 'General', 'General', 'EQ', 'INE353K01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ITI', 'ITI Limited', 'General', 'General', 'EQ', 'INE248A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IVALUE', 'Ivalue Infosolutions Limited', 'General', 'General', 'EQ', 'INE056801025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IVC', 'IL&FS Investment Managers Limited', 'General', 'General', 'EQ', 'INE050B01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IVP', 'IVP Limited', 'General', 'General', 'EQ', 'INE043C01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IWP', 'The Indian Wood Products Company Limited', 'General', 'General', 'EQ', 'INE586E01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IXIGO', 'Le Travenues Technology Limited', 'General', 'General', 'EQ', 'INE0HV901016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('IZMO', 'IZMO Limited', 'General', 'General', 'EQ', 'INE848A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('J&KBANK', 'The Jammu & Kashmir Bank Limited', 'General', 'General', 'EQ', 'INE168A01041', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAGRAN', 'Jagran Prakashan Limited', 'General', 'General', 'EQ', 'INE199G01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAGSNPHARM', 'Jagsonpal Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE048B01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAICORPLTD', 'Jai Corp Limited', 'General', 'General', 'EQ', 'INE070D01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAINREC', 'Jain Resource Recycling Limited', 'General', 'General', 'EQ', 'INE0YD401026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAIPURKURT', 'Nandani Creation Limited', 'General', 'General', 'EQ', 'INE696V01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAMNAAUTO', 'Jamna Auto Industries Limited', 'General', 'General', 'EQ', 'INE039C01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JARO', 'Jaro Institute of Technology Management and Research Limited', 'General', 'General', 'EQ', 'INE00YJ01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JASH', 'Jash Engineering Limited', 'General', 'General', 'EQ', 'INE039O01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAYAGROGN', 'Jayant Agro Organics Limited', 'General', 'General', 'EQ', 'INE785A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAYBARMARU', 'Jay Bharat Maruti Limited', 'General', 'General', 'EQ', 'INE571B01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAYKAY', 'Jaykay Enterprises Limited', 'General', 'General', 'EQ', 'INE903A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAYNECOIND', 'Jayaswal Neco Industries Limited', 'General', 'General', 'EQ', 'INE854B01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JAYSREETEA', 'Jayshree Tea & Industries Limited', 'General', 'General', 'EQ', 'INE364A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JBCHEPHARM', 'JB Chemicals & Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE572A01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JBMA', 'JBM Auto Limited', 'General', 'General', 'EQ', 'INE927D01051', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JETFREIGHT', 'Jet Freight Logistics Limited', 'General', 'General', 'EQ', 'INE982V01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JGCHEM', 'J.G.Chemicals Limited', 'General', 'General', 'EQ', 'INE0MB501011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JHS', 'JHS Svendgaard Laboratories Limited', 'General', 'General', 'EQ', 'INE544H01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JINDALPHOT', 'Jindal Photo Limited', 'General', 'General', 'EQ', 'INE796G01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JINDALPOLY', 'Jindal Poly Films Limited', 'General', 'General', 'EQ', 'INE197D01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JINDALSAW', 'Jindal Saw Limited', 'General', 'General', 'EQ', 'INE324A01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JINDALSTEL', 'JINDAL STEEL LIMITED', 'General', 'General', 'EQ', 'INE749A01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JINDRILL', 'Jindal Drilling And Industries Limited', 'General', 'General', 'EQ', 'INE742C01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JINDWORLD', 'Jindal Worldwide Limited', 'General', 'General', 'EQ', 'INE247D01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JIOFIN', 'Jio Financial Services Limited', 'General', 'General', 'EQ', 'INE758E01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JISLDVREQS', 'Jain Irrigation Systems Limited', 'General', 'General', 'EQ', 'IN9175A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JISLJALEQS', 'Jain Irrigation Systems Limited', 'General', 'General', 'EQ', 'INE175A01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JITFINFRA', 'JITF Infralogistics Limited', 'General', 'General', 'EQ', 'INE863T01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JKCEMENT', 'JK Cement Limited', 'General', 'General', 'EQ', 'INE823G01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JKIL', 'J.Kumar Infraprojects Limited', 'General', 'General', 'EQ', 'INE576I01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JKLAKSHMI', 'JK Lakshmi Cement Limited', 'General', 'General', 'EQ', 'INE786A01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JKPAPER', 'JK Paper Limited', 'General', 'General', 'EQ', 'INE789E01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JKTYRE', 'JK Tyre & Industries Limited', 'General', 'General', 'EQ', 'INE573A01042', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JLHL', 'Jupiter Life Line Hospitals Limited', 'General', 'General', 'EQ', 'INE682M01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JMA', 'Jullundur Motor Agency (Delhi) Limited', 'General', 'General', 'EQ', 'INE412C01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JMFINANCIL', 'JM Financial Limited', 'General', 'General', 'EQ', 'INE780C01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JNKINDIA', 'JNK India Limited', 'General', 'General', 'EQ', 'INE0OAF01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JPOLYINVST', 'Jindal Poly Investment and Finance Company Limited', 'General', 'General', 'EQ', 'INE147P01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JPPOWER', 'Jaiprakash Power Ventures Limited', 'General', 'General', 'EQ', 'INE351F01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JSFB', 'Jana Small Finance Bank Limited', 'General', 'General', 'EQ', 'INE953L01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JSL', 'Jindal Stainless Limited', 'General', 'General', 'EQ', 'INE220G01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JSLL', 'Jeena Sikho Lifecare Limited', 'General', 'General', 'EQ', 'INE0J5801029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JSWCEMENT', 'JSW Cement Limited', 'General', 'General', 'EQ', 'INE718I01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JSWDULUX', 'JSW Dulux Limited', 'General', 'General', 'EQ', 'INE133A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JSWENERGY', 'JSW Energy Limited', 'General', 'General', 'EQ', 'INE121E01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JSWHL', 'JSW Holdings Limited', 'General', 'General', 'EQ', 'INE824G01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JSWINFRA', 'JSW Infrastructure Limited', 'General', 'General', 'EQ', 'INE880J01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JSWSTEEL', 'JSW Steel Limited', 'General', 'General', 'EQ', 'INE019A01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JTEKTINDIA', 'Jtekt India Limited', 'General', 'General', 'EQ', 'INE643A01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JTLIND', 'JTL INDUSTRIES LIMITED', 'General', 'General', 'EQ', 'INE391J01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JUBLCPL', 'Jubilant Agri and Consumer Products Limited', 'General', 'General', 'EQ', 'INE03CC01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JUBLFOOD', 'Jubilant Foodworks Limited', 'General', 'General', 'EQ', 'INE797F01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JUBLINGREA', 'Jubilant Ingrevia Limited', 'General', 'General', 'EQ', 'INE0BY001018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JUBLPHARMA', 'Jubilant Pharmova Limited', 'General', 'General', 'EQ', 'INE700A01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JUNIPER', 'Juniper Hotels Limited', 'General', 'General', 'EQ', 'INE696F01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JUSTDIAL', 'Just Dial Limited', 'General', 'General', 'EQ', 'INE599M01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JWL', 'Jupiter Wagons Limited', 'General', 'General', 'EQ', 'INE209L01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JYOTHYLAB', 'Jyothy Labs Limited', 'General', 'General', 'EQ', 'INE668F01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JYOTICNC', 'Jyoti CNC Automation Limited', 'General', 'General', 'EQ', 'INE980O01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('JYOTISTRUC', 'Jyoti Structures Limited', 'General', 'General', 'EQ', 'INE197A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KABRAEXTRU', 'Kabra Extrusion Technik Limited', 'General', 'General', 'EQ', 'INE900B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KAJARIACER', 'Kajaria Ceramics Limited', 'General', 'General', 'EQ', 'INE217B01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KALAMANDIR', 'Sai Silks (Kalamandir) Limited', 'General', 'General', 'EQ', 'INE438K01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KALPATARU', 'Kalpataru Limited', 'General', 'General', 'EQ', 'INE227J01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KALYANIFRG', 'Kalyani Forge Limited', 'General', 'General', 'EQ', 'INE314G01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KALYANKJIL', 'Kalyan Jewellers India Limited', 'General', 'General', 'EQ', 'INE303R01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KAMAHOLD', 'Kama Holdings Limited', 'General', 'General', 'EQ', 'INE411F01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KAMATHOTEL', 'Kamat Hotels (I) Limited', 'General', 'General', 'EQ', 'INE967C01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KAMDHENU', 'Kamdhenu Limited', 'General', 'General', 'EQ', 'INE390H01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KAMOPAINTS', 'Kamdhenu Ventures Limited', 'General', 'General', 'EQ', 'INE0BTI01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KANANIIND', 'Kanani Industries Limited', 'General', 'General', 'EQ', 'INE879E01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KANPRPLA', 'Kanpur Plastipack Limited', 'General', 'General', 'EQ', 'INE694E01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KANSAINER', 'Kansai Nerolac Paints Limited', 'General', 'General', 'EQ', 'INE531A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KAPSTON', 'Kapston Services Limited', 'General', 'General', 'EQ', 'INE542Z01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KARMAENG', 'Karma Energy Limited', 'General', 'General', 'EQ', 'INE725L01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KARURVYSYA', 'Karur Vysya Bank Limited', 'General', 'General', 'EQ', 'INE036D01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KAUSHALYA', 'Kaushalya Infrastructure Development Corporation Limited', 'General', 'General', 'EQ', 'INE234I01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KAVDEFENCE', 'Kavveri Defence & Wireless Technologies Limited', 'General', 'General', 'EQ', 'INE641C01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KAYA', 'Kaya Limited', 'General', 'General', 'EQ', 'INE587G01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KAYNES', 'Kaynes Technology India Limited', 'General', 'General', 'EQ', 'INE918Z01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KCP', 'KCP Limited', 'General', 'General', 'EQ', 'INE805C01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KCPSUGIND', 'KCP Sugar and Industries Corporation Limited', 'General', 'General', 'EQ', 'INE790B01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KDDL', 'KDDL Limited', 'General', 'General', 'EQ', 'INE291D01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KEC', 'KEC International Limited', 'General', 'General', 'EQ', 'INE389H01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KEEPLEARN', 'DSJ Keep Learning Limited', 'General', 'General', 'EQ', 'INE055C01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KEI', 'KEI Industries Limited', 'General', 'General', 'EQ', 'INE878B01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KELLTONTEC', 'Kellton Tech Solutions Limited', 'General', 'General', 'EQ', 'INE164B01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KENNAMET', 'Kennametal India Limited', 'General', 'General', 'EQ', 'INE717A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KERNEX', 'Kernex Microsystems (India) Limited', 'General', 'General', 'EQ', 'INE202H01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KEYFINSERV', 'Keynote Financial Services Limited', 'General', 'General', 'EQ', 'INE681C01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KFINTECH', 'Kfin Technologies Limited', 'General', 'General', 'EQ', 'INE138Y01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KHANDSE', 'Khandwala Securities Limited', 'General', 'General', 'EQ', 'INE060B01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KICL', 'Kalyani Investment Company Limited', 'General', 'General', 'EQ', 'INE029L01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KILITCH', 'Kilitch Drugs (India) Limited', 'General', 'General', 'EQ', 'INE729D01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KIMS', 'Krishna Institute of Medical Sciences Limited', 'General', 'General', 'EQ', 'INE967H01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KINGFA', 'Kingfa Science & Technology (India) Limited', 'General', 'General', 'EQ', 'INE473D01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KIOCL', 'KIOCL Limited', 'General', 'General', 'EQ', 'INE880L01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KIRANVYPAR', 'Kiran Vyapar Limited', 'General', 'General', 'EQ', 'INE555P01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KIRIINDUS', 'Kiri Industries Limited', 'General', 'General', 'EQ', 'INE415I01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KIRLFER', 'Kirloskar Ferrous Industries Limited', 'General', 'General', 'EQ', 'INE884B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KIRLOSBROS', 'Kirloskar Brothers Limited', 'General', 'General', 'EQ', 'INE732A01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KIRLOSENG', 'Kirloskar Oil Engines Limited', 'General', 'General', 'EQ', 'INE146L01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KIRLOSIND', 'Kirloskar Industries Limited', 'General', 'General', 'EQ', 'INE250A01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KIRLPNU', 'Kirloskar Pneumatic Company Limited', 'General', 'General', 'EQ', 'INE811A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KISSHT', 'OnEMI Technology Solutions Limited', 'General', 'General', 'EQ', 'INE12F801023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KITEX', 'Kitex Garments Limited', 'General', 'General', 'EQ', 'INE602G01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KKCL', 'Kewal Kiran Clothing Limited', 'General', 'General', 'EQ', 'INE401H01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KLBRENG-B', 'Kilburn Engineering Limited', 'General', 'General', 'EQ', 'INE338F01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KMEW', 'Knowledge Marine & Engineering Works Limited', 'General', 'General', 'EQ', 'INE0CJD01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KMSUGAR', 'K.M.Sugar Mills Limited', 'General', 'General', 'EQ', 'INE157H01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KNAGRI', 'KN Agri Resources Limited', 'General', 'General', 'EQ', 'INE0KNW01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KNRCON', 'KNR Constructions Limited', 'General', 'General', 'EQ', 'INE634I01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KOHINOOR', 'Kohinoor Foods Limited', 'General', 'General', 'EQ', 'INE080B01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KOKUYOCMLN', 'Kokuyo Camlin Limited', 'General', 'General', 'EQ', 'INE760A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KOLTEPATIL', 'Kolte - Patil Developers Limited', 'General', 'General', 'EQ', 'INE094I01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KOTAKBANK', 'Kotak Mahindra Bank Limited', 'General', 'General', 'EQ', 'INE237A01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KOTARISUG', 'Kothari Sugars And Chemicals Limited', 'General', 'General', 'EQ', 'INE419A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KOTHARIPET', 'Kothari Petrochemicals Limited', 'General', 'General', 'EQ', 'INE720A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KOTHARIPRO', 'Kothari Products Limited', 'General', 'General', 'EQ', 'INE823A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KOTIC', 'Kothari Industrial Corporation Limited', 'General', 'General', 'EQ', 'INE972A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KOTYARK', 'Kotyark Industries Limited', 'General', 'General', 'EQ', 'INE0J0B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KOVAI', 'Kovai Medical Center & Hospital Limited', 'General', 'General', 'EQ', 'INE177F01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KPEL', 'K.P. Energy Limited', 'General', 'General', 'EQ', 'INE127T01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KPIGREEN', 'KPI Green Energy Limited', 'General', 'General', 'EQ', 'INE542W01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KPIL', 'Kalpataru Projects International Limited', 'General', 'General', 'EQ', 'INE220B01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KPITTECH', 'KPIT Technologies Limited', 'General', 'General', 'EQ', 'INE04I401011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KPL', 'Kwality Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE552U01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KPRMILL', 'K.P.R. Mill Limited', 'General', 'General', 'EQ', 'INE930H01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KRBL', 'KRBL Limited', 'General', 'General', 'EQ', 'INE001B01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KREBSBIO', 'Krebs Biochemicals and Industries Limited', 'General', 'General', 'EQ', 'INE268B01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KRISHANA', 'Krishana Phoschem Limited', 'General', 'General', 'EQ', 'INE506W01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KRISHIVAL', 'Krishival Foods Limited', 'General', 'General', 'EQ', 'INE0GGO01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KRISHNADEF', 'Krishna Defence And Allied Industries Limited', 'General', 'General', 'EQ', 'INE0J5601015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KRITIKA', 'Kritika Wires Limited', 'General', 'General', 'EQ', 'INE00Z501029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KRONOX', 'Kronox Lab Sciences Limited', 'General', 'General', 'EQ', 'INE0ATZ01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KROSS', 'Kross Limited', 'General', 'General', 'EQ', 'INE0O6601022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KRSNAA', 'Krsnaa Diagnostics Limited', 'General', 'General', 'EQ', 'INE08LI01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KRYSTAL', 'Krystal Integrated Services Limited', 'General', 'General', 'EQ', 'INE0QN801017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KSB', 'Ksb Limited', 'General', 'General', 'EQ', 'INE999A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KSCL', 'Kaveri Seed Company Limited', 'General', 'General', 'EQ', 'INE455I01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KSHINTL', 'KSH International Limited', 'General', 'General', 'EQ', 'INE987S01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KSL', 'Kalyani Steels Limited', 'General', 'General', 'EQ', 'INE907A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KSOLVES', 'Ksolves India Limited', 'General', 'General', 'EQ', 'INE0D6I01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KSR', 'KSR Footwear Limited', 'General', 'General', 'EQ', 'INE1SPP01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KTKBANK', 'The Karnataka Bank Limited', 'General', 'General', 'EQ', 'INE614B01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KUANTUM', 'Kuantum Papers Limited', 'General', 'General', 'EQ', 'INE529I01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('KWIL', 'Kwality Wall''s (India) Limited', 'General', 'General', 'EQ', 'INE2KCE01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LAGNAM', 'Lagnam Spintex Limited', 'General', 'General', 'EQ', 'INE548Z01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LAHOTIOV', 'Lahoti Overseas Limited', 'General', 'General', 'EQ', 'INE515C01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LAL', 'Lorenzini Apparels Limited', 'General', 'General', 'EQ', 'INE740X01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LALPATHLAB', 'Dr. Lal Path Labs Ltd.', 'General', 'General', 'EQ', 'INE600L01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LAMBODHARA', 'Lambodhara Textiles Limited', 'General', 'General', 'EQ', 'INE112F01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LANCORHOL', 'Lancor Holdings Limited', 'General', 'General', 'EQ', 'INE572G01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LANDMARK', 'Landmark Cars Limited', 'General', 'General', 'EQ', 'INE559R01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LANDSMILL', 'Landsmill Green Limited', 'General', 'General', 'EQ', 'INE688J01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LAOPALA', 'La Opala RG Limited', 'General', 'General', 'EQ', 'INE059D01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LASA', 'Lasa Supergenerics Limited', 'General', 'General', 'EQ', 'INE670X01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LATENTVIEW', 'Latent View Analytics Limited', 'General', 'General', 'EQ', 'INE0I7C01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LAURUSLABS', 'Laurus Labs Limited', 'General', 'General', 'EQ', 'INE947Q01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LAXMICOT', 'Laxmi Cotspin Limited', 'General', 'General', 'EQ', 'INE801V01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LAXMIDENTL', 'Laxmi Dental Limited', 'General', 'General', 'EQ', 'INE0WO601020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LCCINFOTEC', 'LCC Infotech Limited', 'General', 'General', 'EQ', 'INE938A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LEMERITE', 'Le Merite Exports Limited', 'General', 'General', 'EQ', 'INE0G1L01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LEMONTREE', 'Lemon Tree Hotels Limited', 'General', 'General', 'EQ', 'INE970X01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LENSKART', 'Lenskart Solutions Limited', 'General', 'General', 'EQ', 'INE956O01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LEXUS', 'Lexus Granito (India) Limited', 'General', 'General', 'EQ', 'INE500X01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LFIC', 'Lakshmi Finance & Industrial Corporation Limited', 'General', 'General', 'EQ', 'INE850E01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LGBBROSLTD', 'LG Balakrishnan & Bros Limited', 'General', 'General', 'EQ', 'INE337A01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LGEINDIA', 'LG Electronics India Limited', 'General', 'General', 'EQ', 'INE324D01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LGHL', 'Laxmi Goldorna House Limited', 'General', 'General', 'EQ', 'INE258Y01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LIBAS', 'Libas Consumer Products Limited', 'General', 'General', 'EQ', 'INE908V01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LIBERTSHOE', 'Liberty Shoes Limited', 'General', 'General', 'EQ', 'INE557B01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LICHSGFIN', 'LIC Housing Finance Limited', 'General', 'General', 'EQ', 'INE115A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LICI', 'Life Insurance Corporation Of India', 'General', 'General', 'EQ', 'INE0J1Y01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LINC', 'Linc Limited', 'General', 'General', 'EQ', 'INE802B01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LINCOLN', 'Lincoln Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE405C01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LINDEINDIA', 'Linde India Limited', 'General', 'General', 'EQ', 'INE473A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LLOYDSENGG', 'LLOYDS ENGINEERING WORKS LIMITED', 'General', 'General', 'EQ', 'INE093R01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LLOYDSENT', 'Lloyds Enterprises Limited', 'General', 'General', 'EQ', 'INE080I01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LLOYDSME', 'Lloyds Metals And Energy Limited', 'General', 'General', 'EQ', 'INE281B01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LMW', 'LMW Limited', 'General', 'General', 'EQ', 'INE269B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LODHA', 'Lodha Developers Limited', 'General', 'General', 'EQ', 'INE670K01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LORDSCHLO', 'Lords Chloro Alkali Limited', 'General', 'General', 'EQ', 'INE846D01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LOTUSDEV', 'Sri Lotus Developers and Realty Limited', 'General', 'General', 'EQ', 'INE0V9Q01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LOTUSEYE', 'Lotus Eye Hospital and Institute Limited', 'General', 'General', 'EQ', 'INE947I01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LOVABLE', 'Lovable Lingerie Limited', 'General', 'General', 'EQ', 'INE597L01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LPDC', 'Landmark Property Development Company Limited', 'General', 'General', 'EQ', 'INE197J01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LT', 'Larsen & Toubro Limited', 'General', 'General', 'EQ', 'INE018A01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LTF', 'L&T Finance Limited', 'General', 'General', 'EQ', 'INE498L01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LTFOODS', 'LT Foods Limited', 'General', 'General', 'EQ', 'INE818H01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LTM', 'LTM Limited', 'General', 'General', 'EQ', 'INE214T01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LTTS', 'L&T Technology Services Limited', 'General', 'General', 'EQ', 'INE010V01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LUMAXIND', 'Lumax Industries Limited', 'General', 'General', 'EQ', 'INE162B01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LUMAXTECH', 'Lumax Auto Technologies Limited', 'General', 'General', 'EQ', 'INE872H01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LUPIN', 'Lupin Limited', 'General', 'General', 'EQ', 'INE326A01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LUXIND', 'Lux Industries Limited', 'General', 'General', 'EQ', 'INE150G01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LXCHEM', 'Laxmi Organic Industries Limited', 'General', 'General', 'EQ', 'INE576O01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LYKALABS', 'Lyka Labs Limited', 'General', 'General', 'EQ', 'INE933A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('LYPSAGEMS', 'Lypsa Gems & Jewellery Limited', 'General', 'General', 'EQ', 'INE142K01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('M&M', 'Mahindra & Mahindra Limited', 'General', 'General', 'EQ', 'INE101A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('M&MFIN', 'Mahindra & Mahindra Financial Services Limited', 'General', 'General', 'EQ', 'INE774D01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAANALU', 'Maan Aluminium Limited', 'General', 'General', 'EQ', 'INE215I01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MACPOWER', 'Macpower CNC Machines Limited', 'General', 'General', 'EQ', 'INE155Z01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MADHAV', 'Madhav Marbles and Granites Limited', 'General', 'General', 'EQ', 'INE925C01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MADHAVIPL', 'Madhav Infra Projects Limited', 'General', 'General', 'EQ', 'INE631R01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MADHUCON', 'Madhucon Projects Limited', 'General', 'General', 'EQ', 'INE378D01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MADRASFERT', 'Madras Fertilizers Limited', 'General', 'General', 'EQ', 'INE414A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAFATIND', 'Mafatlal Industries Limited', 'General', 'General', 'EQ', 'INE270B01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAGADSUGAR', 'Magadh Sugar & Energy Limited', 'General', 'General', 'EQ', 'INE347W01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAGNUM', 'Magnum Ventures Limited', 'General', 'General', 'EQ', 'INE387I01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAHABANK', 'Bank of Maharashtra', 'General', 'General', 'EQ', 'INE457A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAHAPEXLTD', 'Maha Rashtra Apex Corporation Limited', 'General', 'General', 'EQ', 'INE843B01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAHEPC', 'Mahindra EPC Irrigation Limited', 'General', 'General', 'EQ', 'INE215D01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAHLIFE', 'Mahindra Lifespace Developers Limited', 'General', 'General', 'EQ', 'INE813A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAHLOG', 'Mahindra Logistics Limited', 'General', 'General', 'EQ', 'INE766P01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAHSCOOTER', 'Maharashtra Scooters Limited', 'General', 'General', 'EQ', 'INE288A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAHSEAMLES', 'Maharashtra Seamless Limited', 'General', 'General', 'EQ', 'INE271B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAITHANALL', 'Maithan Alloys Limited', 'General', 'General', 'EQ', 'INE683C01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAJESAUT', 'Majestic Auto Limited', 'General', 'General', 'EQ', 'INE201B01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MALLCOM', 'Mallcom (India) Limited', 'General', 'General', 'EQ', 'INE389C01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MALUPAPER', 'Malu Paper Mills Limited', 'General', 'General', 'EQ', 'INE383H01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAMATA', 'Mamata Machinery Limited', 'General', 'General', 'EQ', 'INE0TO701015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANAKALUCO', 'Manaksia Aluminium Company Limited', 'General', 'General', 'EQ', 'INE859Q01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANAKCOAT', 'Manaksia Coated Metals & Industries Limited', 'General', 'General', 'EQ', 'INE830Q01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANAKSIA', 'Manaksia Limited', 'General', 'General', 'EQ', 'INE015D01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANALIPETC', 'Manali Petrochemicals Limited', 'General', 'General', 'EQ', 'INE201A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANAPPURAM', 'Manappuram Finance Limited', 'General', 'General', 'EQ', 'INE522D01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANBA', 'Manba Finance Limited', 'General', 'General', 'EQ', 'INE939X01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANCREDIT', 'Mangal Credit and Fincorp Limited', 'General', 'General', 'EQ', 'INE545L01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANGALAM', 'Mangalam Drugs And Organics Limited', 'General', 'General', 'EQ', 'INE584F01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANGLMCEM', 'Mangalam Cement Limited', 'General', 'General', 'EQ', 'INE347A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANINDS', 'Man Industries (India) Limited', 'General', 'General', 'EQ', 'INE993A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANINFRA', 'Man Infraconstruction Limited', 'General', 'General', 'EQ', 'INE949H01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANKIND', 'Mankind Pharma Limited', 'General', 'General', 'EQ', 'INE634S01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANOMAY', 'Manomay Tex India Limited', 'General', 'General', 'EQ', 'INE784W01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANORAMA', 'Manorama Industries Limited', 'General', 'General', 'EQ', 'INE00VM01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MANYAVAR', 'Vedant Fashions Limited', 'General', 'General', 'EQ', 'INE825V01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAPMYINDIA', 'C.E. Info Systems Limited', 'General', 'General', 'EQ', 'INE0BV301023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MARATHON', 'Marathon Nextgen Realty Limited', 'General', 'General', 'EQ', 'INE182D01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MARICO', 'Marico Limited', 'General', 'General', 'EQ', 'INE196A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MARINE', 'Marine Electricals (India) Limited', 'General', 'General', 'EQ', 'INE01JE01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MARKOLINES', 'Markolines Pavement Technologies Limited', 'General', 'General', 'EQ', 'INE0FW001016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MARKSANS', 'Marksans Pharma Limited', 'General', 'General', 'EQ', 'INE750C01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MARSONS', 'Marsons Limited', 'General', 'General', 'EQ', 'INE415B01044', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MARUTI', 'Maruti Suzuki India Limited', 'General', 'General', 'EQ', 'INE585B01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MASFIN', 'MAS Financial Services Limited', 'General', 'General', 'EQ', 'INE348L01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MASTEK', 'Mastek Limited', 'General', 'General', 'EQ', 'INE759A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MASTERTR', 'Master Trust Limited', 'General', 'General', 'EQ', 'INE677D01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MATRIMONY', 'Matrimony.Com Limited', 'General', 'General', 'EQ', 'INE866R01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAXESTATES', 'Max Estates Limited', 'General', 'General', 'EQ', 'INE03EI01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAXHEALTH', 'Max Healthcare Institute Limited', 'General', 'General', 'EQ', 'INE027H01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAXIND', 'Max India Limited', 'General', 'General', 'EQ', 'INE0CG601016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAYURUNIQ', 'Mayur Uniquoters Ltd', 'General', 'General', 'EQ', 'INE040D01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAZDA', 'Mazda Limited', 'General', 'General', 'EQ', 'INE885E01042', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MAZDOCK', 'Mazagon Dock Shipbuilders Limited', 'General', 'General', 'EQ', 'INE249Z01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MBAPL', 'Madhya Bharat Agro Products Limited', 'General', 'General', 'EQ', 'INE900L01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MBEL', 'M & B Engineering Limited', 'General', 'General', 'EQ', 'INE08N601015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MCCHRLS-B', 'Mac Charles India Limited', 'General', 'General', 'EQ', 'INE435D01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MCL', 'M TEK COPPER LIMITED', 'General', 'General', 'EQ', 'INE813V01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MCLOUD', 'Magellanic Cloud Limited', 'General', 'General', 'EQ', 'INE613C01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MCX', 'Multi Commodity Exchange of India Limited', 'General', 'General', 'EQ', 'INE745G01043', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MEDANTA', 'Global Health Limited', 'General', 'General', 'EQ', 'INE474Q01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MEDIASSIST', 'Medi Assist Healthcare Services Limited', 'General', 'General', 'EQ', 'INE456Z01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MEDICAMEQ', 'Medicamen Biotech Limited', 'General', 'General', 'EQ', 'INE646B01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MEDICO', 'Medico Remedies Limited', 'General', 'General', 'EQ', 'INE630Y01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MEDPLUS', 'Medplus Health Services Limited', 'General', 'General', 'EQ', 'INE804L01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MEESHO', 'Meesho Limited', 'General', 'General', 'EQ', 'INE0VDM01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MEGASTAR', 'Megastar Foods Limited', 'General', 'General', 'EQ', 'INE00EM01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MENNPIS', 'Menon Pistons Limited', 'General', 'General', 'EQ', 'INE650G01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MENONBE', 'Menon Bearings Limited', 'General', 'General', 'EQ', 'INE071D01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MERCANTILE', 'Mercantile Ventures Limited', 'General', 'General', 'EQ', 'INE689O01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('METROBRAND', 'Metro Brands Limited', 'General', 'General', 'EQ', 'INE317I01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('METROGLOBL', 'Metroglobal Limited', 'General', 'General', 'EQ', 'INE085D01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('METROPOLIS', 'Metropolis Healthcare Limited', 'General', 'General', 'EQ', 'INE112L01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MFML', 'Mahalaxmi Fabric Mills Limited', 'General', 'General', 'EQ', 'INE0US801024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MFSL', 'Max Financial Services Limited', 'General', 'General', 'EQ', 'INE180A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MGL', 'Mahanagar Gas Limited', 'General', 'General', 'EQ', 'INE002S01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MHLXMIRU', 'Mahalaxmi Rubtech Limited', 'General', 'General', 'EQ', 'INE112D01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MHRIL', 'Mahindra Holidays & Resorts India Limited', 'General', 'General', 'EQ', 'INE998I01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MICEL', 'MIC Electronics Limited', 'General', 'General', 'EQ', 'INE287C01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MIDHANI', 'Mishra Dhatu Nigam Limited', 'General', 'General', 'EQ', 'INE099Z01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MIDWESTLTD', 'Midwest Limited', 'General', 'General', 'EQ', 'INE0XAD01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MINDACORP', 'Minda Corporation Limited', 'General', 'General', 'EQ', 'INE842C01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MINDTECK', 'Mindteck (India) Limited', 'General', 'General', 'EQ', 'INE110B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MIRZAINT', 'Mirza International Limited', 'General', 'General', 'EQ', 'INE771A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MITTAL', 'Mittal Life Style Limited', 'General', 'General', 'EQ', 'INE997Y01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MKPL', 'M K Proteins Limited', 'General', 'General', 'EQ', 'INE964W01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MMFL', 'MM Forgings Limited', 'General', 'General', 'EQ', 'INE227C01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MMP', 'MMP Industries Limited', 'General', 'General', 'EQ', 'INE511Y01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MMTC', 'MMTC Limited', 'General', 'General', 'EQ', 'INE123F01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOBIKWIK', 'One Mobikwik Systems Limited', 'General', 'General', 'EQ', 'INE0HLU01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MODIRUBBER', 'Modi Rubber Limited', 'General', 'General', 'EQ', 'INE832A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MODIS', 'Modis Navnirman Limited', 'General', 'General', 'EQ', 'INE0L0L01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MODTHREAD', 'Modern Threads (India) Limited', 'General', 'General', 'EQ', 'INE794W01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOHITIND', 'Mohit Industries Limited', 'General', 'General', 'EQ', 'INE954E01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOIL', 'MOIL Limited', 'General', 'General', 'EQ', 'INE490G01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOKSH', 'Moksh Ornaments Limited', 'General', 'General', 'EQ', 'INE514Y01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOL', 'Meghmani Organics Limited', 'General', 'General', 'EQ', 'INE0CT101020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOLDTECH', 'Mold-Tek Technologies Limited', 'General', 'General', 'EQ', 'INE835B01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOLDTKPAC', 'Mold-Tek Packaging Limited', 'General', 'General', 'EQ', 'INE893J01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MONARCH', 'Monarch Networth Capital Limited', 'General', 'General', 'EQ', 'INE903D01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MONEYBOXX', 'Moneyboxx Finance Limited', 'General', 'General', 'EQ', 'INE296Q01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MONTECARLO', 'Monte Carlo Fashions Limited', 'General', 'General', 'EQ', 'INE950M01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOREPENLAB', 'Morepen Laboratories Limited', 'General', 'General', 'EQ', 'INE083A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOSCHIP', 'Moschip Technologies Limited', 'General', 'General', 'EQ', 'INE935B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOTHERSON', 'Samvardhana Motherson International Limited', 'General', 'General', 'EQ', 'INE775A01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOTILALOFS', 'Motilal Oswal Financial Services Limited', 'General', 'General', 'EQ', 'INE338I01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MOTISONS', 'Motisons Jewellers Limited', 'General', 'General', 'EQ', 'INE0FRK01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MPHASIS', 'MphasiS Limited', 'General', 'General', 'EQ', 'INE356A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MPSLTD', 'MPS Limited', 'General', 'General', 'EQ', 'INE943D01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MRF', 'MRF Limited', 'General', 'General', 'EQ', 'INE883A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MRPL', 'Mangalore Refinery and Petrochemicals Limited', 'General', 'General', 'EQ', 'INE103A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MSPL', 'MSP Steel & Power Limited', 'General', 'General', 'EQ', 'INE752G01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MSTCLTD', 'Mstc Limited', 'General', 'General', 'EQ', 'INE255X01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MSUMI', 'Motherson Sumi Wiring India Limited', 'General', 'General', 'EQ', 'INE0FS801015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MTARTECH', 'Mtar Technologies Limited', 'General', 'General', 'EQ', 'INE864I01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MTNL', 'Mahanagar Telephone Nigam Limited', 'General', 'General', 'EQ', 'INE153A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MUFIN', 'Mufin Green Finance Limited', 'General', 'General', 'EQ', 'INE08KJ01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MUFTI', 'Credo Brands Marketing Limited', 'General', 'General', 'EQ', 'INE220Q01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MUKANDLTD', 'Mukand Limited', 'General', 'General', 'EQ', 'INE304A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MUKKA', 'Mukka Proteins Limited', 'General', 'General', 'EQ', 'INE0CG401037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MUKTAARTS', 'Mukta Arts Limited', 'General', 'General', 'EQ', 'INE374B01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MUNJALAU', 'Munjal Auto Industries Limited', 'General', 'General', 'EQ', 'INE672B01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MUNJALSHOW', 'Munjal Showa Limited', 'General', 'General', 'EQ', 'INE577A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MURUDCERA', 'Murudeshwar Ceramics Limited', 'General', 'General', 'EQ', 'INE692B01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MUTHOOTCAP', 'Muthoot Capital Services Limited', 'General', 'General', 'EQ', 'INE296G01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MUTHOOTFIN', 'Muthoot Finance Limited', 'General', 'General', 'EQ', 'INE414G01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MUTHOOTMF', 'Muthoot Microfin Limited', 'General', 'General', 'EQ', 'INE046W01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MVGJL', 'Manoj Vaibhav Gems N Jewellers Limited', 'General', 'General', 'EQ', 'INE0KNT01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('MWL', 'Mangalam Worldwide Limited', 'General', 'General', 'EQ', 'INE0JYY01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NACLIND', 'NACL Industries Limited', 'General', 'General', 'EQ', 'INE295D01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAGREEKEXP', 'Nagreeka Exports Limited', 'General', 'General', 'EQ', 'INE123B01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAHARCAP', 'Nahar Capital and Financial Services Limited', 'General', 'General', 'EQ', 'INE049I01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAHARINDUS', 'Nahar Industrial Enterprises Limited', 'General', 'General', 'EQ', 'INE289A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAHARPOLY', 'Nahar Poly Films Limited', 'General', 'General', 'EQ', 'INE308A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAM-INDIA', 'Nippon Life India Asset Management Limited', 'General', 'General', 'EQ', 'INE298J01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NARMADA', 'Narmada Agrobase Limited', 'General', 'General', 'EQ', 'INE117Z01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NATCAPSUQ', 'Natural Capsules Limited', 'General', 'General', 'EQ', 'INE936B01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NATCOPHARM', 'Natco Pharma Limited', 'General', 'General', 'EQ', 'INE987B01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NATHBIOGEN', 'Nath Bio-Genes (India) Limited', 'General', 'General', 'EQ', 'INE448G01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NATIONALUM', 'National Aluminium Company Limited', 'General', 'General', 'EQ', 'INE139A01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NATIONSTD', 'National Standard (India) Limited', 'General', 'General', 'EQ', 'INE166R01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAUKRI', 'Info Edge (India) Limited', 'General', 'General', 'EQ', 'INE663F01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAVA', 'NAVA LIMITED', 'General', 'General', 'EQ', 'INE725A01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAVINFLUOR', 'Navin Fluorine International Limited', 'General', 'General', 'EQ', 'INE048G01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAVKARCORP', 'Navkar Corporation Limited', 'General', 'General', 'EQ', 'INE278M01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAVNETEDUL', 'Navneet Education Limited', 'General', 'General', 'EQ', 'INE060A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NAZARA', 'Nazara Technologies Limited', 'General', 'General', 'EQ', 'INE418L01047', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NBCC', 'NBCC (India) Limited', 'General', 'General', 'EQ', 'INE095N01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NBIFIN', 'N. B. I. Industrial Finance Company Limited', 'General', 'General', 'EQ', 'INE365I01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NCC', 'NCC Limited', 'General', 'General', 'EQ', 'INE868B01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NCLIND', 'NCL Industries Limited', 'General', 'General', 'EQ', 'INE732C01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NDGL', 'Naga Dhunseri Group Limited', 'General', 'General', 'EQ', 'INE756C01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NDL', 'Nandan Denim Limited', 'General', 'General', 'EQ', 'INE875G01048', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NDLVENTURE', 'NDL Ventures Limited', 'General', 'General', 'EQ', 'INE353A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NDRAUTO', 'Ndr Auto Components Limited', 'General', 'General', 'EQ', 'INE07OG01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NDTV', 'New Delhi Television Limited', 'General', 'General', 'EQ', 'INE155G01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NEAGI', 'Neelamalai Agro Industries Limited', 'General', 'General', 'EQ', 'INE605D01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NECCLTD', 'North Eastern Carrying Corporation Limited', 'General', 'General', 'EQ', 'INE553C01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NELCAST', 'Nelcast Limited', 'General', 'General', 'EQ', 'INE189I01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NELCO', 'NELCO Limited', 'General', 'General', 'EQ', 'INE045B01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NEOGEN', 'Neogen Chemicals Limited', 'General', 'General', 'EQ', 'INE136S01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NEPHROPLUS', 'Nephrocare Health Services Limited', 'General', 'General', 'EQ', 'INE428V01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NESCO', 'Nesco Limited', 'General', 'General', 'EQ', 'INE317F01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NESTLEIND', 'Nestle India Limited', 'General', 'General', 'EQ', 'INE239A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NETWEB', 'Netweb Technologies India Limited', 'General', 'General', 'EQ', 'INE0NT901020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NETWORK18', 'Network18 Media & Investments Limited', 'General', 'General', 'EQ', 'INE870H01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NEULANDLAB', 'Neuland Laboratories Limited', 'General', 'General', 'EQ', 'INE794A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NEWGEN', 'Newgen Software Technologies Limited', 'General', 'General', 'EQ', 'INE619B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NEXTMEDIA', 'Next Mediaworks Limited', 'General', 'General', 'EQ', 'INE747B01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NFL', 'National Fertilizers Limited', 'General', 'General', 'EQ', 'INE870D01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NGLFINE', 'NGL Fine-Chem Limited', 'General', 'General', 'EQ', 'INE887E01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NH', 'Narayana Hrudayalaya Ltd.', 'General', 'General', 'EQ', 'INE410P01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NHPC', 'NHPC Limited', 'General', 'General', 'EQ', 'INE848E01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NIACL', 'The New India Assurance Company Limited', 'General', 'General', 'EQ', 'INE470Y01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NIBE', 'NIBE Limited', 'General', 'General', 'EQ', 'INE149O01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NIBL', 'NRB Industrial Bearings Limited', 'General', 'General', 'EQ', 'INE047O01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NIITLTD', 'NIIT Limited', 'General', 'General', 'EQ', 'INE161A01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NIITMTS', 'NIIT Learning Systems Limited', 'General', 'General', 'EQ', 'INE342G01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NILAINFRA', 'Nila Infrastructures Limited', 'General', 'General', 'EQ', 'INE937C01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NILASPACES', 'Nila Spaces Limited', 'General', 'General', 'EQ', 'INE00S901012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NILE', 'Nile Limited', 'General', 'General', 'EQ', 'INE445D01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NILKAMAL', 'Nilkamal Limited', 'General', 'General', 'EQ', 'INE310A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NIPPOBATRY', 'Indo-National Limited', 'General', 'General', 'EQ', 'INE567A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NIRAJISPAT', 'Niraj Ispat Industries Limited', 'General', 'General', 'EQ', 'INE326T01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NIRLON', 'Nirlon Limited', 'General', 'General', 'EQ', 'INE910A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NITCO', 'Nitco Limited', 'General', 'General', 'EQ', 'INE858F01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NITINSPIN', 'Nitin Spinners Limited', 'General', 'General', 'EQ', 'INE229H01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NITIRAJ', 'Nitiraj Engineers Limited', 'General', 'General', 'EQ', 'INE439T01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NITTAGELA', 'Nitta Gelatin India Limited', 'General', 'General', 'EQ', 'INE265B01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NIVABUPA', 'Niva Bupa Health Insurance Company Limited', 'General', 'General', 'EQ', 'INE995S01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NKIND', 'NK Industries Limited', 'General', 'General', 'EQ', 'INE542C01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NLCINDIA', 'NLC India Limited', 'General', 'General', 'EQ', 'INE589A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NMDC', 'NMDC Limited', 'General', 'General', 'EQ', 'INE584A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NOCIL', 'NOCIL Limited', 'General', 'General', 'EQ', 'INE163A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NORBTEAEXP', 'Norben Tea & Exports Limited', 'General', 'General', 'EQ', 'INE369C01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NORTHARC', 'Northern Arc Capital Limited', 'General', 'General', 'EQ', 'INE850M01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NOVARTIND', 'Novartis India Limited', 'General', 'General', 'EQ', 'INE234A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NPST', 'Network People Services Technologies Limited', 'General', 'General', 'EQ', 'INE0FFK01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NRAIL', 'N R Agarwal Industries Limited', 'General', 'General', 'EQ', 'INE740D01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NRBBEARING', 'NRB Bearing Limited', 'General', 'General', 'EQ', 'INE349A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NSIL', 'Nalwa Sons Investments Limited', 'General', 'General', 'EQ', 'INE023A01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NSLNISP', 'NMDC Steel Limited', 'General', 'General', 'EQ', 'INE0NNS01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NTPC', 'NTPC Limited', 'General', 'General', 'EQ', 'INE733E01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NTPCGREEN', 'NTPC Green Energy Limited', 'General', 'General', 'EQ', 'INE0ONG01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NUCLEUS', 'Nucleus Software Exports Limited', 'General', 'General', 'EQ', 'INE096B01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NURECA', 'Nureca Limited', 'General', 'General', 'EQ', 'INE0DSF01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NUVAMA', 'Nuvama Wealth Management Limited', 'General', 'General', 'EQ', 'INE531F01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NUVOCO', 'Nuvoco Vistas Corporation Limited', 'General', 'General', 'EQ', 'INE118D01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('NYKAA', 'FSN E-Commerce Ventures Limited', 'General', 'General', 'EQ', 'INE388Y01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OAL', 'Oriental Aromatics Limited', 'General', 'General', 'EQ', 'INE959C01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OBCL', 'Orissa Bengal Carrier Limited', 'General', 'General', 'EQ', 'INE426Z01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OBEROIRLTY', 'Oberoi Realty Limited', 'General', 'General', 'EQ', 'INE093I01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ODIGMA', 'Odigma Consultancy Solutions Limited', 'General', 'General', 'EQ', 'INE054301028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OFSS', 'Oracle Financial Services Software Limited', 'General', 'General', 'EQ', 'INE881D01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OIL', 'Oil India Limited', 'General', 'General', 'EQ', 'INE274J01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OLAELEC', 'Ola Electric Mobility Limited', 'General', 'General', 'EQ', 'INE0LXG01040', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OLECTRA', 'Olectra Greentech Limited', 'General', 'General', 'EQ', 'INE260D01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OMAXE', 'Omaxe Limited', 'General', 'General', 'EQ', 'INE800H01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OMFREIGHT', 'Om Freight Forwarders Limited', 'General', 'General', 'EQ', 'INE1BZC01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OMINFRAL', 'OM INFRA LIMITED', 'General', 'General', 'EQ', 'INE239D01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OMNI', 'Omnitech Engineering Limited', 'General', 'General', 'EQ', 'INE0UH301010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OMPOWER', 'Om Power Transmission Limited', 'General', 'General', 'EQ', 'INE25E901019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ONEPOINT', 'One Point One Solutions Limited', 'General', 'General', 'EQ', 'INE840Y01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ONESOURCE', 'Onesource Specialty Pharma Limited', 'General', 'General', 'EQ', 'INE013P01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ONGC', 'Oil & Natural Gas Corporation Limited', 'General', 'General', 'EQ', 'INE213A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ONMOBILE', 'OnMobile Global Limited', 'General', 'General', 'EQ', 'INE809I01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ONWARDTEC', 'Onward Technologies Limited', 'General', 'General', 'EQ', 'INE229A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OPTIEMUS', 'Optiemus Infracom Limited', 'General', 'General', 'EQ', 'INE350C01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORBTEXP', 'Orbit Exports Limited', 'General', 'General', 'EQ', 'INE231G01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORCHASP', 'Orchasp Limited', 'General', 'General', 'EQ', 'INE215B01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORCHPHARMA', 'Orchid Pharma Limited', 'General', 'General', 'EQ', 'INE191A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORICONENT', 'Oricon Enterprises Limited', 'General', 'General', 'EQ', 'INE730A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORIENTALTL', 'Oriental Trimex Limited', 'General', 'General', 'EQ', 'INE998H01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORIENTBELL', 'Orient Bell Limited', 'General', 'General', 'EQ', 'INE607D01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORIENTCEM', 'Orient Cement Limited', 'General', 'General', 'EQ', 'INE876N01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORIENTCER', 'ORIENT CERATECH LIMITED', 'General', 'General', 'EQ', 'INE569C01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORIENTELEC', 'Orient Electric Limited', 'General', 'General', 'EQ', 'INE142Z01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORIENTHOT', 'Oriental Hotels Limited', 'General', 'General', 'EQ', 'INE750A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORIENTLTD', 'Orient Press Limited', 'General', 'General', 'EQ', 'INE609C01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORIENTPPR', 'Orient Paper & Industries Limited', 'General', 'General', 'EQ', 'INE592A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORIENTTECH', 'Orient Technologies Limited', 'General', 'General', 'EQ', 'INE0PPK01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORISSAMINE', 'The Orissa Minerals Development Company Limited', 'General', 'General', 'EQ', 'INE725E01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ORKLAINDIA', 'Orkla India Limited', 'General', 'General', 'EQ', 'INE16NZ01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OSWALGREEN', 'Oswal Greentech Limited', 'General', 'General', 'EQ', 'INE143A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OSWALPUMPS', 'Oswal Pumps Limited', 'General', 'General', 'EQ', 'INE0BYP01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('OSWALSEEDS', 'ShreeOswal Seeds And Chemicals Limited', 'General', 'General', 'EQ', 'INE00IK01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PACEDIGITK', 'Pace Digitek Limited', 'General', 'General', 'EQ', 'INE0S3G01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PAGEIND', 'Page Industries Limited', 'General', 'General', 'EQ', 'INE761H01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PAISALO', 'Paisalo Digital Limited', 'General', 'General', 'EQ', 'INE420C01059', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PAKKA', 'PAKKA LIMITED', 'General', 'General', 'EQ', 'INE551D01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PALASHSECU', 'Palash Securities Limited', 'General', 'General', 'EQ', 'INE471W01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PANACEABIO', 'Panacea Biotec Limited', 'General', 'General', 'EQ', 'INE922B01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PANACHE', 'Panache Digilife Limited', 'General', 'General', 'EQ', 'INE895W01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PANAMAPET', 'Panama Petrochem Limited', 'General', 'General', 'EQ', 'INE305C01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PANSARI', 'Pansari Developers Limited', 'General', 'General', 'EQ', 'INE697V01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PAR', 'Par Drugs And Chemicals Limited', 'General', 'General', 'EQ', 'INE04LG01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PARACABLES', 'Paramount Communications Limited', 'General', 'General', 'EQ', 'INE074B01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PARADEEP', 'Paradeep Phosphates Limited', 'General', 'General', 'EQ', 'INE088F01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PARAGMILK', 'Parag Milk Foods Limited', 'General', 'General', 'EQ', 'INE883N01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PARAS', 'Paras Defence and Space Technologies Limited', 'General', 'General', 'EQ', 'INE045601023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PARASPETRO', 'Paras Petrofils Limited', 'General', 'General', 'EQ', 'INE162C01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PARKHOSPS', 'Park Medi World Limited', 'General', 'General', 'EQ', 'INE119201023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PARKHOTELS', 'Apeejay Surrendra Park Hotels Limited', 'General', 'General', 'EQ', 'INE988S01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PASHUPATI', 'Pashupati Cotspin Limited', 'General', 'General', 'EQ', 'INE124Y01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PATANJALI', 'Patanjali Foods Limited', 'General', 'General', 'EQ', 'INE619A01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PATELENG', 'Patel Engineering Limited', 'General', 'General', 'EQ', 'INE244B01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PATELRMART', 'Patel Retail Limited', 'General', 'General', 'EQ', 'INE0R8B01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PATINTLOG', 'Patel Integrated Logistics Limited', 'General', 'General', 'EQ', 'INE529D01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PAUSHAKLTD', 'Paushak Limited', 'General', 'General', 'EQ', 'INE111F01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PAYTM', 'One 97 Communications Limited', 'General', 'General', 'EQ', 'INE982J01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PCBL', 'PCBL Chemical Limited', 'General', 'General', 'EQ', 'INE602A01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PCJEWELLER', 'PC Jeweller Limited', 'General', 'General', 'EQ', 'INE785M01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PDMJEPAPER', 'Pudumjee Paper Products Limited', 'General', 'General', 'EQ', 'INE865T01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PDSL', 'PDS Limited', 'General', 'General', 'EQ', 'INE111Q01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PENIND', 'Pennar Industries Limited', 'General', 'General', 'EQ', 'INE932A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PERSISTENT', 'Persistent Systems Limited', 'General', 'General', 'EQ', 'INE262H01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PETRONET', 'Petronet LNG Limited', 'General', 'General', 'EQ', 'INE347G01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PFC', 'Power Finance Corporation Limited', 'General', 'General', 'EQ', 'INE134E01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PFIZER', 'Pfizer Limited', 'General', 'General', 'EQ', 'INE182A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PFS', 'PTC India Financial Services Limited', 'General', 'General', 'EQ', 'INE560K01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PGEL', 'PG Electroplast Limited', 'General', 'General', 'EQ', 'INE457L01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PGHH', 'Procter & Gamble Hygiene and Health Care Limited', 'General', 'General', 'EQ', 'INE179A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PGHL', 'Procter & Gamble Health Limited', 'General', 'General', 'EQ', 'INE199A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PGIL', 'Pearl Global Industries Limited', 'General', 'General', 'EQ', 'INE940H01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PHOENIXLTD', 'The Phoenix Mills Limited', 'General', 'General', 'EQ', 'INE211B01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PICCADIL', 'Piccadily Agro Industries Limited', 'General', 'General', 'EQ', 'INE546C01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PIDILITIND', 'Pidilite Industries Limited', 'General', 'General', 'EQ', 'INE318A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PIGL', 'Power & Instrumentation (Gujarat) Limited', 'General', 'General', 'EQ', 'INE557Z01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PIIND', 'PI Industries Limited', 'General', 'General', 'EQ', 'INE603J01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PILANIINVS', 'Pilani Investment and Industries Corporation Limited', 'General', 'General', 'EQ', 'INE417C01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PINELABS', 'Pine Labs Limited', 'General', 'General', 'EQ', 'INE15B701018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PIONEEREMB', 'Pioneer Embroideries Limited', 'General', 'General', 'EQ', 'INE156C01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PIONRINV', 'Pioneer Investcorp Limited', 'General', 'General', 'EQ', 'INE746D01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PIRAMALFIN', 'Piramal Finance Limited', 'General', 'General', 'EQ', 'INE202B01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PITTIENG', 'Pitti Engineering Limited', 'General', 'General', 'EQ', 'INE450D01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PIXTRANS', 'Pix Transmissions Limited', 'General', 'General', 'EQ', 'INE751B01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PKTEA', 'The Peria Karamalai Tea & Produce Company Limited', 'General', 'General', 'EQ', 'INE431F01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PLASTIBLEN', 'Plastiblends India Limited', 'General', 'General', 'EQ', 'INE083C01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PLATIND', 'Platinum Industries Limited', 'General', 'General', 'EQ', 'INE0PT501018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PML', 'Paul Merchants Limited', 'General', 'General', 'EQ', 'INE291E01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PNB', 'Punjab National Bank', 'General', 'General', 'EQ', 'INE160A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PNBGILTS', 'PNB Gilts Limited', 'General', 'General', 'EQ', 'INE859A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PNBHOUSING', 'PNB Housing Finance Limited', 'General', 'General', 'EQ', 'INE572E01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PNC', 'Pritish Nandy Communications Limited', 'General', 'General', 'EQ', 'INE392B01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PNCINFRA', 'PNC Infratech Limited', 'General', 'General', 'EQ', 'INE195J01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PNGJL', 'P N Gadgil Jewellers Limited', 'General', 'General', 'EQ', 'INE953R01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PNGSREVA', 'PNGS Reva Diamond Jewellery Limited', 'General', 'General', 'EQ', 'INE1RDG01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POCL', 'Pondy Oxides & Chemicals Limited', 'General', 'General', 'EQ', 'INE063E01053', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PODDARMENT', 'Poddar Pigments Limited', 'General', 'General', 'EQ', 'INE371C01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POKARNA', 'Pokarna Limited', 'General', 'General', 'EQ', 'INE637C01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POLICYBZR', 'PB Fintech Limited', 'General', 'General', 'EQ', 'INE417T01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POLYCAB', 'Polycab India Limited', 'General', 'General', 'EQ', 'INE455K01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POLYMED', 'Poly Medicure Limited', 'General', 'General', 'EQ', 'INE205C01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POLYPLEX', 'Polyplex Corporation Limited', 'General', 'General', 'EQ', 'INE633B01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PONNIERODE', 'Ponni Sugars (Erode) Limited', 'General', 'General', 'EQ', 'INE838E01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POONAWALLA', 'Poonawalla Fincorp Limited', 'General', 'General', 'EQ', 'INE511C01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POWERGRID', 'Power Grid Corporation of India Limited', 'General', 'General', 'EQ', 'INE752E01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POWERICA', 'Powerica Limited', 'General', 'General', 'EQ', 'INE921L01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POWERINDIA', 'Hitachi Energy India Limited', 'General', 'General', 'EQ', 'INE07Y701011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('POWERMECH', 'Power Mech Projects Limited', 'General', 'General', 'EQ', 'INE211R01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PPAP', 'PPAP Automotive Limited', 'General', 'General', 'EQ', 'INE095I01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PPL', 'Prakash Pipes Limited', 'General', 'General', 'EQ', 'INE050001010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PPLPHARMA', 'Piramal Pharma Limited', 'General', 'General', 'EQ', 'INE0DK501011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRABHA', 'Prabha Energy Limited', 'General', 'General', 'EQ', 'INE0I0M01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRADPME', 'Pradeep Metals Limited', 'General', 'General', 'EQ', 'INE770A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRAENG', 'Prajay Engineers Syndicate Limited', 'General', 'General', 'EQ', 'INE505C01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRAJIND', 'Praj Industries Limited', 'General', 'General', 'EQ', 'INE074A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRAKASH', 'Prakash Industries Limited', 'General', 'General', 'EQ', 'INE603A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRAKASHSTL', 'Prakash Steelage Limited', 'General', 'General', 'EQ', 'INE696K01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRAVEG', 'Praveg Limited', 'General', 'General', 'EQ', 'INE722B01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRECAM', 'Precision Camshafts Limited', 'General', 'General', 'EQ', 'INE484I01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRECOT', 'Precot Limited', 'General', 'General', 'EQ', 'INE283A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRECWIRE', 'Precision Wires India Limited', 'General', 'General', 'EQ', 'INE372C01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PREMCO', 'Premco Global Limited', 'General', 'General', 'EQ', 'INE001E01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PREMEXPLN', 'Premier Explosives Limited', 'General', 'General', 'EQ', 'INE863B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PREMIERENE', 'Premier Energies Limited', 'General', 'General', 'EQ', 'INE0BS701011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRESTIGE', 'Prestige Estates Projects Limited', 'General', 'General', 'EQ', 'INE811K01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRICOLLTD', 'Pricol Limited', 'General', 'General', 'EQ', 'INE726V01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRIMESECU', 'Prime Securities Limited', 'General', 'General', 'EQ', 'INE032B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRIMO', 'Primo Chemicals Limited', 'General', 'General', 'EQ', 'INE607A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRINCEPIPE', 'Prince Pipes And Fittings Limited', 'General', 'General', 'EQ', 'INE689W01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRITIKAUTO', 'Pritika Auto Industries Limited', 'General', 'General', 'EQ', 'INE583R01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRIVISCL', 'Privi Speciality Chemicals Limited', 'General', 'General', 'EQ', 'INE959A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PROSTARM', 'Prostarm Info Systems Limited', 'General', 'General', 'EQ', 'INE0BX301013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PROTEAN', 'Protean eGov Technologies Limited', 'General', 'General', 'EQ', 'INE004A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PROZONER', 'Prozone Realty Limited', 'General', 'General', 'EQ', 'INE195N01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRSMJOHNSN', 'Prism Johnson Limited', 'General', 'General', 'EQ', 'INE010A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PRUDENT', 'Prudent Corporate Advisory Services Limited', 'General', 'General', 'EQ', 'INE00F201020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PSB', 'Punjab & Sind Bank', 'General', 'General', 'EQ', 'INE608A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PSPPROJECT', 'PSP Projects Limited', 'General', 'General', 'EQ', 'INE488V01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PTC', 'PTC India Limited', 'General', 'General', 'EQ', 'INE877F01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PTCIL', 'PTC Industries Limited', 'General', 'General', 'EQ', 'INE596F01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PTL', 'PTL Enterprises Limited', 'General', 'General', 'EQ', 'INE034D01049', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PUNJABCHEM', 'Punjab Chemicals & Crop Protection Limited', 'General', 'General', 'EQ', 'INE277B01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PURVA', 'Puravankara Limited', 'General', 'General', 'EQ', 'INE323I01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PVP', 'PVP Ventures Limited', 'General', 'General', 'EQ', 'INE362A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PVRINOX', 'PVR INOX Limited', 'General', 'General', 'EQ', 'INE191H01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PVSL', 'Popular Vehicles and Services Limited', 'General', 'General', 'EQ', 'INE772T01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PWL', 'Physicswallah Limited', 'General', 'General', 'EQ', 'INE0LP301011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('PYRAMID', 'Pyramid Technoplast Limited', 'General', 'General', 'EQ', 'INE0MIS01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('QMSMEDI', 'QMS Medical Allied Services Limited', 'General', 'General', 'EQ', 'INE0FMW01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('QUADFUTURE', 'Quadrant Future Tek Limited', 'General', 'General', 'EQ', 'INE0LRY01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('QUESS', 'Quess Corp Limited', 'General', 'General', 'EQ', 'INE615P01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('QUINT', 'Quint Digital Limited', 'General', 'General', 'EQ', 'INE641R01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RACLGEAR', 'RACL Geartech Limited', 'General', 'General', 'EQ', 'INE704B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RADAAN', 'Radaan Mediaworks India Limited', 'General', 'General', 'EQ', 'INE874F01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RADHIKAJWE', 'Radhika Jeweltech Limited', 'General', 'General', 'EQ', 'INE583V01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RADIANTCMS', 'Radiant Cash Management Services Limited', 'General', 'General', 'EQ', 'INE855R01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RADICO', 'Radico Khaitan Limited', 'General', 'General', 'EQ', 'INE944F01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RADIOCITY', 'Music Broadcast Limited', 'General', 'General', 'EQ', 'INE919I01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAILTEL', 'Railtel Corporation Of India Limited', 'General', 'General', 'EQ', 'INE0DD101019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAIN', 'Rain Industries Limited', 'General', 'General', 'EQ', 'INE855B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAINBOW', 'Rainbow Childrens Medicare Limited', 'General', 'General', 'EQ', 'INE961O01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAJMET', 'Rajnandini Metal Limited', 'General', 'General', 'EQ', 'INE00KV01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAJOOENG', 'Rajoo Engineers Limited', 'General', 'General', 'EQ', 'INE535F01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAJPALAYAM', 'Rajapalayam Mills Limited', 'General', 'General', 'EQ', 'INE296E01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAJRATAN', 'Rajratan Global Wire Limited', 'General', 'General', 'EQ', 'INE451D01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAJSREESUG', 'Rajshree Sugars & Chemicals Limited', 'General', 'General', 'EQ', 'INE562B01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAJTV', 'Raj Television Network Limited', 'General', 'General', 'EQ', 'INE952H01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RALLIS', 'Rallis India Limited', 'General', 'General', 'EQ', 'INE613A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAMANEWS', 'Shree Rama Newsprint Limited', 'General', 'General', 'EQ', 'INE278B01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAMAPHO', 'Rama Phosphates Limited', 'General', 'General', 'EQ', 'INE809A01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAMASTEEL', 'Rama Steel Tubes Limited', 'General', 'General', 'EQ', 'INE230R01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAMCOCEM', 'The Ramco Cements Limited', 'General', 'General', 'EQ', 'INE331A01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAMCOIND', 'Ramco Industries Limited', 'General', 'General', 'EQ', 'INE614A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAMCOSYS', 'Ramco Systems Limited', 'General', 'General', 'EQ', 'INE246B01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAMKY', 'Ramky Infrastructure Limited', 'General', 'General', 'EQ', 'INE874I01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAMRAT', 'Ram Ratna Wires Limited', 'General', 'General', 'EQ', 'INE207E01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RANASUG', 'Rana Sugars Limited', 'General', 'General', 'EQ', 'INE625B01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RANEHOLDIN', 'Rane Holdings Limited', 'General', 'General', 'EQ', 'INE384A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RATEGAIN', 'Rategain Travel Technologies Limited', 'General', 'General', 'EQ', 'INE0CLI01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RATNAMANI', 'Ratnamani Metals & Tubes Limited', 'General', 'General', 'EQ', 'INE703B01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RATNAVEER', 'Ratnaveer Precision Engineering Limited', 'General', 'General', 'EQ', 'INE05CZ01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAYMOND', 'Raymond Limited', 'General', 'General', 'EQ', 'INE301A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAYMONDLSL', 'Raymond Lifestyle Limited', 'General', 'General', 'EQ', 'INE02ID01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RAYMONDREL', 'Raymond Realty Limited', 'General', 'General', 'EQ', 'INE1SY401010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RBA', 'Restaurant Brands Asia Limited', 'General', 'General', 'EQ', 'INE07T201019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RBLBANK', 'RBL Bank Limited', 'General', 'General', 'EQ', 'INE976G01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RBZJEWEL', 'RBZ Jewellers Limited', 'General', 'General', 'EQ', 'INE0PEQ01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RCF', 'Rashtriya Chemicals and Fertilizers Limited', 'General', 'General', 'EQ', 'INE027A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RECLTD', 'REC Limited', 'General', 'General', 'EQ', 'INE020B01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('REDINGTON', 'Redington Limited', 'General', 'General', 'EQ', 'INE891D01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('REDTAPE', 'Redtape Limited', 'General', 'General', 'EQ', 'INE0LXT01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('REFEX', 'Refex Industries Limited', 'General', 'General', 'EQ', 'INE056I01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('REGENCERAM', 'Regency Ceramics Limited', 'General', 'General', 'EQ', 'INE277C01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RELAXO', 'Relaxo Footwears Limited', 'General', 'General', 'EQ', 'INE131B01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RELCHEMQ', 'Reliance Chemotex Industries Limited', 'General', 'General', 'EQ', 'INE750D01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RELIABLE', 'Reliable Data Services Limited', 'General', 'General', 'EQ', 'INE375Y01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RELIANCE', 'Reliance Industries Limited', 'General', 'General', 'EQ', 'INE002A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RELIGARE', 'Religare Enterprises Limited', 'General', 'General', 'EQ', 'INE621H01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RELTD', 'Ravindra Energy Limited', 'General', 'General', 'EQ', 'INE206N01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('REMSONSIND', 'Remsons Industries Limited', 'General', 'General', 'EQ', 'INE474C01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RENUKA', 'Shree Renuka Sugars Limited', 'General', 'General', 'EQ', 'INE087H01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('REPCOHOME', 'Repco Home Finance Limited', 'General', 'General', 'EQ', 'INE612J01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('REPRO', 'Repro India Limited', 'General', 'General', 'EQ', 'INE461B01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RESPONIND', 'Responsive Industries Limited', 'General', 'General', 'EQ', 'INE688D01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RETAIL', 'JHS Svendgaard Retail Ventures Limited', 'General', 'General', 'EQ', 'INE03DD01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RGL', 'Renaissance Global Limited', 'General', 'General', 'EQ', 'INE722H01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RHETAN', 'Rhetan TMT Limited', 'General', 'General', 'EQ', 'INE0KKN01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RHIM', 'RHI MAGNESITA INDIA LIMITED', 'General', 'General', 'EQ', 'INE743M01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RHL', 'Robust Hotels Limited', 'General', 'General', 'EQ', 'INE508K01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RICOAUTO', 'Rico Auto Industries Limited', 'General', 'General', 'EQ', 'INE209B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RIIL', 'Reliance Industrial Infrastructure Limited', 'General', 'General', 'EQ', 'INE046A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RISHABH', 'Rishabh Instruments Limited', 'General', 'General', 'EQ', 'INE0N2P01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RITCO', 'Ritco Logistics Limited', 'General', 'General', 'EQ', 'INE01EG01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RITES', 'RITES Limited', 'General', 'General', 'EQ', 'INE320J01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RKDL', 'Ravi Kumar Distilleries Limited', 'General', 'General', 'EQ', 'INE722J01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RKEC', 'RKEC Projects Limited', 'General', 'General', 'EQ', 'INE786W01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RKFORGE', 'Ramkrishna Forgings Limited', 'General', 'General', 'EQ', 'INE399G01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RKSWAMY', 'R K Swamy Limited', 'General', 'General', 'EQ', 'INE0NQ801033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RMDRIP', 'R M Drip and Sprinklers Systems Limited', 'General', 'General', 'EQ', 'INE219Y01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RML', 'Rane (Madras) Limited', 'General', 'General', 'EQ', 'INE050H01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RNBDENIMS', 'R&B Denims Limited', 'General', 'General', 'EQ', 'INE012Q01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ROHLTD', 'Royal Orchid Hotels Limited', 'General', 'General', 'EQ', 'INE283H01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ROLEXRINGS', 'Rolex Rings Limited', 'General', 'General', 'EQ', 'INE645S01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ROML', 'Raj Oil Mills Limited', 'General', 'General', 'EQ', 'INE294G01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ROSSARI', 'Rossari Biotech Limited', 'General', 'General', 'EQ', 'INE02A801020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ROSSELLIND', 'Rossell India Limited', 'General', 'General', 'EQ', 'INE847C01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ROSSTECH', 'Rossell Techsys Limited', 'General', 'General', 'EQ', 'INE0OJW01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ROTO', 'Roto Pumps Limited', 'General', 'General', 'EQ', 'INE535D01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ROUTE', 'ROUTE MOBILE LIMITED', 'General', 'General', 'EQ', 'INE450U01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RPEL', 'Raghav Productivity Enhancers Limited', 'General', 'General', 'EQ', 'INE912T01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RPGLIFE', 'RPG Life Sciences Limited', 'General', 'General', 'EQ', 'INE105J01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RPOWER', 'Reliance Power Limited', 'General', 'General', 'EQ', 'INE614G01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RPPINFRA', 'R.P.P. Infra Projects Limited', 'General', 'General', 'EQ', 'INE324L01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RPPL', 'Rajshree Polypack Limited', 'General', 'General', 'EQ', 'INE760W01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RPSGVENT', 'RPSG VENTURES LIMITED', 'General', 'General', 'EQ', 'INE425Y01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RPTECH', 'Rashi Peripherals Limited', 'General', 'General', 'EQ', 'INE0J1F01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RRIL', 'RRIL Limited', 'General', 'General', 'EQ', 'INE951M01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RRKABEL', 'R R Kabel Limited', 'General', 'General', 'EQ', 'INE777K01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RSDFIN', 'RSD Finance Limited', 'General', 'General', 'EQ', 'INE616F01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RSL', 'Rajputana Stainless Limited', 'General', 'General', 'EQ', 'INE313L01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RSYSTEMS', 'R Systems International Limited', 'General', 'General', 'EQ', 'INE411H01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RTNINDIA', 'RattanIndia Enterprises Limited', 'General', 'General', 'EQ', 'INE834M01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RTNPOWER', 'RattanIndia Power Limited', 'General', 'General', 'EQ', 'INE399K01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RUBFILA', 'Rubfila International Limited', 'General', 'General', 'EQ', 'INE642C01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RUBICON', 'Rubicon Research Limited', 'General', 'General', 'EQ', 'INE506V01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RUCHINFRA', 'Ruchi Infrastructure Limited', 'General', 'General', 'EQ', 'INE413B01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RUCHIRA', 'Ruchira Papers Limited', 'General', 'General', 'EQ', 'INE803H01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RUPA', 'Rupa & Company Limited', 'General', 'General', 'EQ', 'INE895B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RUSHIL', 'Rushil Decor Limited', 'General', 'General', 'EQ', 'INE573K01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RUSTOMJEE', 'Keystone Realtors Limited', 'General', 'General', 'EQ', 'INE263M01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RVHL', 'Ravinder Heights Limited', 'General', 'General', 'EQ', 'INE09E501017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RVNL', 'Rail Vikas Nigam Limited', 'General', 'General', 'EQ', 'INE415G01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('RVTH', 'Revathi Equipment India Limited', 'General', 'General', 'EQ', 'INE0DAB01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAATVIKGL', 'Saatvik Green Energy Limited', 'General', 'General', 'EQ', 'INE13B501022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SADBHAV', 'Sadbhav Engineering Limited', 'General', 'General', 'EQ', 'INE226H01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAFARI', 'Safari Industries (India) Limited', 'General', 'General', 'EQ', 'INE429E01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAGARDEEP', 'Sagardeep Alloys Limited', 'General', 'General', 'EQ', 'INE976T01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAGCEM', 'Sagar Cements Limited', 'General', 'General', 'EQ', 'INE229C01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAGILITY', 'SAGILITY LIMITED', 'General', 'General', 'EQ', 'INE0W2G01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAHLIBHFI', 'Shalibhadra Finance Limited', 'General', 'General', 'EQ', 'INE861D01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAHYADRI', 'Sahyadri Industries Limited', 'General', 'General', 'EQ', 'INE280H01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAIL', 'Steel Authority of India Limited', 'General', 'General', 'EQ', 'INE114A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAILIFE', 'Sai Life Sciences Limited', 'General', 'General', 'EQ', 'INE570L01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAIPARENT', 'Sai Parenterals Limited', 'General', 'General', 'EQ', 'INE0H9F01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAKAR', 'Sakar Healthcare Limited', 'General', 'General', 'EQ', 'INE732S01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAKHTISUG', 'Sakthi Sugars Limited', 'General', 'General', 'EQ', 'INE623A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAKSOFT', 'Saksoft Limited', 'General', 'General', 'EQ', 'INE667G01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SALASAR', 'Salasar Techno Engineering Limited', 'General', 'General', 'EQ', 'INE170V01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SALONA', 'Salona Cotspin Limited', 'General', 'General', 'EQ', 'INE498E01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SALZERELEC', 'Salzer Electronics Limited', 'General', 'General', 'EQ', 'INE457F01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAMBHAAV', 'Sambhaav Media Limited', 'General', 'General', 'EQ', 'INE699B01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAMBHV', 'Sambhv Steel Tubes Limited', 'General', 'General', 'EQ', 'INE12NJ01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAMHI', 'Samhi Hotels Limited', 'General', 'General', 'EQ', 'INE08U801020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAMMAANCAP', 'Sammaan Capital Limited', 'General', 'General', 'EQ', 'INE148I01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAMPANN', 'Sampann Utpadan India Limited', 'General', 'General', 'EQ', 'INE735M01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SANATHAN', 'Sanathan Textiles Limited', 'General', 'General', 'EQ', 'INE0JPD01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SANDESH', 'The Sandesh Limited', 'General', 'General', 'EQ', 'INE583B01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SANDHAR', 'Sandhar Technologies Limited', 'General', 'General', 'EQ', 'INE278H01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SANDUMA', 'Sandur Manganese & Iron Ores Limited', 'General', 'General', 'EQ', 'INE149K01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SANGAMIND', 'Sangam (India) Limited', 'General', 'General', 'EQ', 'INE495C01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SANGHVIMOV', 'Sanghvi Movers Limited', 'General', 'General', 'EQ', 'INE989A01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SANOFI', 'Sanofi India Limited', 'General', 'General', 'EQ', 'INE058A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SANOFICONR', 'Sanofi Consumer Healthcare India Limited', 'General', 'General', 'EQ', 'INE0UOS01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SANSERA', 'Sansera Engineering Limited', 'General', 'General', 'EQ', 'INE953O01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SANSTAR', 'Sanstar Limited', 'General', 'General', 'EQ', 'INE08NE01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAPPHIRE', 'Sapphire Foods India Limited', 'General', 'General', 'EQ', 'INE806T01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAPPL', 'Shree Ajit Pulp & Paper Limited', 'General', 'General', 'EQ', 'INE185C01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SARDAEN', 'Sarda Energy & Minerals Limited', 'General', 'General', 'EQ', 'INE385C01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAREGAMA', 'Saregama India Limited', 'General', 'General', 'EQ', 'INE979A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SARLAPOLY', 'Sarla Performance Fibers Limited', 'General', 'General', 'EQ', 'INE453D01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SASKEN', 'Sasken Technologies Limited', 'General', 'General', 'EQ', 'INE231F01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SATIA', 'Satia Industries Limited', 'General', 'General', 'EQ', 'INE170E01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SATIN', 'Satin Creditcare Network Limited', 'General', 'General', 'EQ', 'INE836B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAURASHCEM', 'Saurashtra Cement Limited', 'General', 'General', 'EQ', 'INE626A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SAYAJIHOTL', 'Sayaji Hotels Limited', 'General', 'General', 'EQ', 'INE318C01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SBC', 'SBC Exports Limited', 'General', 'General', 'EQ', 'INE04AK01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SBCL', 'Shivalik Bimetal Controls Limited', 'General', 'General', 'EQ', 'INE386D01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SBFC', 'SBFC Finance Limited', 'General', 'General', 'EQ', 'INE423Y01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SBGLP', 'Suratwwala Business Group Limited', 'General', 'General', 'EQ', 'INE05ST01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SBICARD', 'SBI Cards and Payment Services Limited', 'General', 'General', 'EQ', 'INE018E01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SBILIFE', 'SBI Life Insurance Company Limited', 'General', 'General', 'EQ', 'INE123W01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SBIN', 'State Bank of India', 'General', 'General', 'EQ', 'INE062A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SCANSTL', 'Scan Steels Limited', 'General', 'General', 'EQ', 'INE099G01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SCHAEFFLER', 'Schaeffler India Limited', 'General', 'General', 'EQ', 'INE513A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SCHAND', 'S Chand And Company Limited', 'General', 'General', 'EQ', 'INE807K01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SCHNEIDER', 'Schneider Electric Infrastructure Limited', 'General', 'General', 'EQ', 'INE839M01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SCI', 'Shipping Corporation Of India Limited', 'General', 'General', 'EQ', 'INE109A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SCILAL', 'Shipping Corporation of India Land and Assets Limited', 'General', 'General', 'EQ', 'INE0PB301013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SCODATUBES', 'Scoda Tubes Limited', 'General', 'General', 'EQ', 'INE090501011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SCPL', 'Sheetal Cool Products Limited', 'General', 'General', 'EQ', 'INE501Y01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SDBL', 'Som Distilleries & Breweries Limited', 'General', 'General', 'EQ', 'INE480C01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SEAMECLTD', 'Seamec Limited', 'General', 'General', 'EQ', 'INE497B01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SECMARK', 'SecMark Consultancy Limited', 'General', 'General', 'EQ', 'INE0BTM01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SECURKLOUD', 'SECUREKLOUD TECHNOLOGIES LIMITED', 'General', 'General', 'EQ', 'INE650K01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SEDEMAC', 'SEDEMAC Mechatronics Limited', 'General', 'General', 'EQ', 'INE00XB01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SEIL', 'Shanti Educational Initiatives Limited', 'General', 'General', 'EQ', 'INE440T01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SELMC', 'SEL Manufacturing Company Limited', 'General', 'General', 'EQ', 'INE105I01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SENCO', 'Senco Gold Limited', 'General', 'General', 'EQ', 'INE602W01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SENORES', 'Senores Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE0RB801010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SEPC', 'SEPC Limited', 'General', 'General', 'EQ', 'INE964H01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SERVOTECH', 'Servotech Renewable Power System Limited', 'General', 'General', 'EQ', 'INE782X01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SESHAPAPER', 'Seshasayee Paper and Boards Limited', 'General', 'General', 'EQ', 'INE630A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SETL', 'Standard Engineering Technology Limited', 'General', 'General', 'EQ', 'INE0M4D01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SFL', 'Sheela Foam Limited', 'General', 'General', 'EQ', 'INE916U01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SGFIN', 'SG Finserve Limited', 'General', 'General', 'EQ', 'INE618R01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SGIL', 'Synergy Green Industries Limited', 'General', 'General', 'EQ', 'INE00QT01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SGL', 'STL Global Limited', 'General', 'General', 'EQ', 'INE353H01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SGMART', 'SG Mart Limited', 'General', 'General', 'EQ', 'INE385F01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHADOWFAX', 'Shadowfax Technologies Limited', 'General', 'General', 'EQ', 'INE12UN01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHAH', 'Shah Metacorp Limited', 'General', 'General', 'EQ', 'INE482J01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHAHALLOYS', 'Shah Alloys Limited', 'General', 'General', 'EQ', 'INE640C01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHAILY', 'Shaily Engineering Plastics Limited', 'General', 'General', 'EQ', 'INE151G01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHAKTIPUMP', 'Shakti Pumps (India) Limited', 'General', 'General', 'EQ', 'INE908D01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHALBY', 'Shalby Limited', 'General', 'General', 'EQ', 'INE597J01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHALPAINTS', 'Shalimar Paints Limited', 'General', 'General', 'EQ', 'INE849C01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHANTI', 'Shanti Overseas (India) Limited', 'General', 'General', 'EQ', 'INE933X01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHANTIGEAR', 'Shanthi Gears Limited', 'General', 'General', 'EQ', 'INE631A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHANTIGOLD', 'Shanti Gold International Limited', 'General', 'General', 'EQ', 'INE06ZD01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHARDACROP', 'Sharda Cropchem Limited', 'General', 'General', 'EQ', 'INE221J01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHARDAMOTR', 'Sharda Motor Industries Limited', 'General', 'General', 'EQ', 'INE597I01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHARDUL', 'Shardul Securities Limited', 'General', 'General', 'EQ', 'INE037B01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHAREINDIA', 'Share India Securities Limited', 'General', 'General', 'EQ', 'INE932X01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHBAJRG', 'Shri Bajrang Alliance Limited', 'General', 'General', 'EQ', 'INE402H01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHEMAROO', 'Shemaroo Entertainment Limited', 'General', 'General', 'EQ', 'INE363M01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHILCTECH', 'Shilchar Technologies Limited', 'General', 'General', 'EQ', 'INE024F01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHILPAMED', 'Shilpa Medicare Limited', 'General', 'General', 'EQ', 'INE790G01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHINDL', 'Sharat Industries Limited', 'General', 'General', 'EQ', 'INE220Z01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHIVATEX', 'Shiva Texyarn Limited', 'General', 'General', 'EQ', 'INE705C01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHIVAUM', 'Shiv Aum Steels Limited', 'General', 'General', 'EQ', 'INE719F01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHK', 'S H Kelkar and Company Limited', 'General', 'General', 'EQ', 'INE500L01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHOPERSTOP', 'Shoppers Stop Limited', 'General', 'General', 'EQ', 'INE498B01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHRADHA', 'Shradha Realty Limited', 'General', 'General', 'EQ', 'INE715Y01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHREDIGCEM', 'Shree Digvijay Cement Co.Ltd', 'General', 'General', 'EQ', 'INE232A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHREECEM', 'SHREE CEMENT LIMITED', 'General', 'General', 'EQ', 'INE070A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHREEJISPG', 'Shreeji Shipping Global Limited', 'General', 'General', 'EQ', 'INE1B6101010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHREEPUSHK', 'Shree Pushkar Chemicals & Fertilisers Limited', 'General', 'General', 'EQ', 'INE712K01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHREERAMA', 'Shree Rama Multi-Tech Limited', 'General', 'General', 'EQ', 'INE879A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHREYANIND', 'Shreyans Industries Limited', 'General', 'General', 'EQ', 'INE231C01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHRIKRISH', 'Shri Krishna Devcon Limited', 'General', 'General', 'EQ', 'INE997I01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHRINGARMS', 'Shringar House of Mangalsutra Limited', 'General', 'General', 'EQ', 'INE1B3L01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHRIPISTON', 'Shriram Pistons & Rings Limited', 'General', 'General', 'EQ', 'INE526E01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHRIRAMFIN', 'Shriram Finance Limited', 'General', 'General', 'EQ', 'INE721A01047', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHRIRAMPPS', 'Shriram Properties Limited', 'General', 'General', 'EQ', 'INE217L01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHYAMCENT', 'Shyam Century Ferrous Limited', 'General', 'General', 'EQ', 'INE979R01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SHYAMMETL', 'Shyam Metalics and Energy Limited', 'General', 'General', 'EQ', 'INE810G01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SICAGEN', 'Sicagen India Limited', 'General', 'General', 'EQ', 'INE176J01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIEMENS', 'Siemens Limited', 'General', 'General', 'EQ', 'INE003A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIGIND', 'Signet Industries Limited', 'General', 'General', 'EQ', 'INE529F01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIGMA', 'Sigma Solve Limited', 'General', 'General', 'EQ', 'INE0A0S01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIGNATURE', 'Signatureglobal (India) Limited', 'General', 'General', 'EQ', 'INE903U01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIGNPOST', 'Signpost India Limited', 'General', 'General', 'EQ', 'INE0KGZ01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIKA', 'Sika Interplant Systems Limited', 'General', 'General', 'EQ', 'INE438E01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIKKO', 'Sikko Industries Limited', 'General', 'General', 'EQ', 'INE112X01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIL', 'Standard Industries Limited', 'General', 'General', 'EQ', 'INE173A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SILGO', 'Silgo Retail Limited', 'General', 'General', 'EQ', 'INE01II01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SILINV', 'SIL Investments Limited', 'General', 'General', 'EQ', 'INE923A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SILLYMONKS', 'Silly Monks Entertainment Limited', 'General', 'General', 'EQ', 'INE203Y01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SILVERTUC', 'Silver Touch Technologies Limited', 'General', 'General', 'EQ', 'INE625X01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIMPLEXINF', 'Simplex Infrastructures Limited', 'General', 'General', 'EQ', 'INE059B01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SINCLAIR', 'Sinclairs Hotels Limited', 'General', 'General', 'EQ', 'INE985A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SINDHUTRAD', 'Sindhu Trade Links Limited', 'General', 'General', 'EQ', 'INE325D01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SINGERIND', 'Singer India Limited', 'General', 'General', 'EQ', 'INE638A01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SINTERCOM', 'Sintercom India Limited', 'General', 'General', 'EQ', 'INE129Z01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIRCA', 'Sirca Paints India Limited', 'General', 'General', 'EQ', 'INE792Z01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIS', 'SIS LIMITED', 'General', 'General', 'EQ', 'INE285J01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SIYSIL', 'Siyaram Silk Mills Limited', 'General', 'General', 'EQ', 'INE076B01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SJS', 'S.J.S. Enterprises Limited', 'General', 'General', 'EQ', 'INE284S01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SJVN', 'SJVN Limited', 'General', 'General', 'EQ', 'INE002L01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SKFINDIA', 'SKF India Limited', 'General', 'General', 'EQ', 'INE640A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SKFINDUS', 'SKF India (Industrial) Limited', 'General', 'General', 'EQ', 'INE2J8701016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SKIPPER', 'Skipper Limited', 'General', 'General', 'EQ', 'INE439E01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SKMEGGPROD', 'SKM Egg Products Export (India) Limited', 'General', 'General', 'EQ', 'INE411D01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SKYGOLD', 'SKY GOLD AND DIAMONDS LIMITED', 'General', 'General', 'EQ', 'INE01IU01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SMARTWORKS', 'Smartworks Coworking Spaces Limited', 'General', 'General', 'EQ', 'INE0NAZ01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SMCGLOBAL', 'SMC Global Securities Limited', 'General', 'General', 'EQ', 'INE103C01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SMLMAH', 'SML Mahindra Limited', 'General', 'General', 'EQ', 'INE294B01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SMLT', 'Sarthak Metals Limited', 'General', 'General', 'EQ', 'INE017W01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SMSPHARMA', 'SMS Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE812G01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SNOWMAN', 'Snowman Logistics Limited', 'General', 'General', 'EQ', 'INE734N01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOBHA', 'Sobha Limited', 'General', 'General', 'EQ', 'INE671H01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOLARA', 'Solara Active Pharma Sciences Limited', 'General', 'General', 'EQ', 'INE624Z01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOLARINDS', 'Solar Industries India Limited', 'General', 'General', 'EQ', 'INE343H01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOLARWORLD', 'Solarworld Energy Solutions Limited', 'General', 'General', 'EQ', 'INE0TY101024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOLEX', 'Solex Energy Limited', 'General', 'General', 'EQ', 'INE880Y01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOMANYCERA', 'Somany Ceramics Limited', 'General', 'General', 'EQ', 'INE355A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOMATEX', 'Soma Textiles & Industries Limited', 'General', 'General', 'EQ', 'INE314C01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOMICONVEY', 'Somi Conveyor Beltings Limited', 'General', 'General', 'EQ', 'INE323J01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SONACOMS', 'Sona BLW Precision Forgings Limited', 'General', 'General', 'EQ', 'INE073K01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SONAL', 'Sonal Mercantile Limited', 'General', 'General', 'EQ', 'INE321M01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SONAMLTD', 'SONAM LIMITED', 'General', 'General', 'EQ', 'INE00LM01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SONATSOFTW', 'Sonata Software Limited', 'General', 'General', 'EQ', 'INE269A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOTL', 'Savita Oil Technologies Limited', 'General', 'General', 'EQ', 'INE035D01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOUTHBANK', 'The South Indian Bank Limited', 'General', 'General', 'EQ', 'INE683A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SOUTHWEST', 'South West Pinnacle Exploration Limited', 'General', 'General', 'EQ', 'INE980Y01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPAL', 'S. P. Apparels Limited', 'General', 'General', 'EQ', 'INE212I01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPANDANA', 'Spandana Sphoorty Financial Limited', 'General', 'General', 'EQ', 'INE572J01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPARC', 'Sun Pharma Advanced Research Company Limited', 'General', 'General', 'EQ', 'INE232I01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPCENET', 'Spacenet Enterprises India Limited', 'General', 'General', 'EQ', 'INE970N01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPECIALITY', 'Speciality Restaurants Limited', 'General', 'General', 'EQ', 'INE247M01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPECTRUM', 'Spectrum Electrical Industries Limited', 'General', 'General', 'EQ', 'INE01EO01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPENCERS', 'Spencer''s Retail Limited', 'General', 'General', 'EQ', 'INE020801028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPIC', 'Southern Petrochemicals Industries Corporation  Limited', 'General', 'General', 'EQ', 'INE147A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPLIL', 'SPL Industries Limited', 'General', 'General', 'EQ', 'INE978G01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPLPETRO', 'Supreme Petrochem Limited', 'General', 'General', 'EQ', 'INE663A01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPMLINFRA', 'SPML Infra Limited', 'General', 'General', 'EQ', 'INE937A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SPORTKING', 'Sportking India Limited', 'General', 'General', 'EQ', 'INE885H01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SRD', 'Shankar Lal Rampal Dye-Chem Limited', 'General', 'General', 'EQ', 'INE01NE01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SREEL', 'Sreeleathers Limited', 'General', 'General', 'EQ', 'INE099F01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SRF', 'SRF Limited', 'General', 'General', 'EQ', 'INE647A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SRGHFL', 'SRG Housing Finance Limited', 'General', 'General', 'EQ', 'INE559N01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SRHHYPOLTD', 'Sree Rayalaseema Hi-Strength Hypo Limited', 'General', 'General', 'EQ', 'INE917H01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SRM', 'SRM Contractors Limited', 'General', 'General', 'EQ', 'INE0R6Z01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SRTL', 'Shree Ram Twistex Limited', 'General', 'General', 'EQ', 'INE19GK01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SSDL', 'Saraswati Saree Depot Limited', 'General', 'General', 'EQ', 'INE0PQ101010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SSWL', 'Steel Strips Wheels Limited', 'General', 'General', 'EQ', 'INE802C01033', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STALLION', 'Stallion India Fluorochemicals Limited', 'General', 'General', 'EQ', 'INE0RYC01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STANLEY', 'Stanley Lifestyles Limited', 'General', 'General', 'EQ', 'INE01A001028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STAR', 'Strides Pharma Science Limited', 'General', 'General', 'EQ', 'INE939A01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STARCEMENT', 'Star Cement Limited', 'General', 'General', 'EQ', 'INE460H01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STARHEALTH', 'Star Health and Allied Insurance Company Limited', 'General', 'General', 'EQ', 'INE575P01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STARPAPER', 'Star Paper Mills Limited', 'General', 'General', 'EQ', 'INE733A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STARTECK', 'Starteck Finance Limited', 'General', 'General', 'EQ', 'INE992I01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STCINDIA', 'The State Trading Corporation of India Limited', 'General', 'General', 'EQ', 'INE655A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STEELCAS', 'Steelcast Limited', 'General', 'General', 'EQ', 'INE124E01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STEELCITY', 'Steel City Securities Limited', 'General', 'General', 'EQ', 'INE395H01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STEELXIND', 'STEEL EXCHANGE INDIA LIMITED', 'General', 'General', 'EQ', 'INE503B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STEL', 'Stel Holdings Limited', 'General', 'General', 'EQ', 'INE577L01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STERTOOLS', 'Sterling Tools Limited', 'General', 'General', 'EQ', 'INE334A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STOVEKRAFT', 'Stove Kraft Limited', 'General', 'General', 'EQ', 'INE00IN01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STUDDS', 'Studds Accessories Limited', 'General', 'General', 'EQ', 'INE00Q601028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STYL', 'Seshaasai Technologies Limited', 'General', 'General', 'EQ', 'INE04VU01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STYLAMIND', 'Stylam Industries Limited', 'General', 'General', 'EQ', 'INE239C01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('STYRENIX', 'Styrenix Performance Materials Limited', 'General', 'General', 'EQ', 'INE189B01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUBROS', 'Subros Limited', 'General', 'General', 'EQ', 'INE287B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUDARCOLOR', 'Sudarshan Colorants India Limited', 'General', 'General', 'EQ', 'INE492A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUDARSCHEM', 'Sudarshan Chemical Industries Limited', 'General', 'General', 'EQ', 'INE659A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUDEEPPHRM', 'Sudeep Pharma Limited', 'General', 'General', 'EQ', 'INE0QPI01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUKHJITS', 'Sukhjit Starch & Chemicals Limited', 'General', 'General', 'EQ', 'INE450E01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SULA', 'Sula Vineyards Limited', 'General', 'General', 'EQ', 'INE142Q01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUMEETINDS', 'Sumeet Industries Limited', 'General', 'General', 'EQ', 'INE235C01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUMICHEM', 'Sumitomo Chemical India Limited', 'General', 'General', 'EQ', 'INE258G01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUMMITSEC', 'Summit Securities Limited', 'General', 'General', 'EQ', 'INE519C01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUNCLAY', 'Sundaram Clayton Limited', 'General', 'General', 'EQ', 'INE0Q3R01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUNDARAM', 'Sundaram Multi Pap Limited', 'General', 'General', 'EQ', 'INE108E01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUNDARMFIN', 'Sundaram Finance Limited', 'General', 'General', 'EQ', 'INE660A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUNDRMBRAK', 'Sundaram Brake Linings Limited', 'General', 'General', 'EQ', 'INE073D01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUNDRMFAST', 'Sundram Fasteners Limited', 'General', 'General', 'EQ', 'INE387A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUNDROP', 'Sundrop Brands Limited', 'General', 'General', 'EQ', 'INE209A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUNFLAG', 'Sunflag Iron And Steel Company Limited', 'General', 'General', 'EQ', 'INE947A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUNPHARMA', 'Sun Pharmaceutical Industries Limited', 'General', 'General', 'EQ', 'INE044A01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUNTECK', 'Sunteck Realty Limited', 'General', 'General', 'EQ', 'INE805D01034', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUNTV', 'Sun TV Network Limited', 'General', 'General', 'EQ', 'INE424H01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUPERHOUSE', 'Superhouse Limited', 'General', 'General', 'EQ', 'INE712B01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUPRAJIT', 'Suprajit Engineering Limited', 'General', 'General', 'EQ', 'INE399C01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUPREME', 'Supreme Holdings & Hospitality (India) Limited', 'General', 'General', 'EQ', 'INE822E01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUPREMEIND', 'Supreme Industries Limited', 'General', 'General', 'EQ', 'INE195A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUPREMEINF', 'Supreme Infrastructure India Limited', 'General', 'General', 'EQ', 'INE550H01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUPRIYA', 'Supriya Lifescience Limited', 'General', 'General', 'EQ', 'INE07RO01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SURAJEST', 'Suraj Estate Developers Limited', 'General', 'General', 'EQ', 'INE843S01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SURAJLTD', 'Suraj Limited', 'General', 'General', 'EQ', 'INE713C01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SURAKSHA', 'Suraksha Diagnostic Limited', 'General', 'General', 'EQ', 'INE877V01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SURANASOL', 'Surana Solar Limited', 'General', 'General', 'EQ', 'INE272L01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SURANAT&P', 'Surana Telecom and Power Limited', 'General', 'General', 'EQ', 'INE130B01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SURYALA', 'Suryalata Spinning Mills Limited', 'General', 'General', 'EQ', 'INE132C01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SURYALAXMI', 'Suryalakshmi Cotton Mills Limited', 'General', 'General', 'EQ', 'INE713B01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SURYAROSNI', 'Surya Roshni Limited', 'General', 'General', 'EQ', 'INE335A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SURYODAY', 'Suryoday Small Finance Bank Limited', 'General', 'General', 'EQ', 'INE428Q01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUTLEJTEX', 'Sutlej Textiles and Industries Limited', 'General', 'General', 'EQ', 'INE645H01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUVEN', 'Suven Life Sciences Limited', 'General', 'General', 'EQ', 'INE495B01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUVIDHAA', 'Suvidhaa Infoserve Limited', 'General', 'General', 'EQ', 'INE018401013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUYOG', 'Suyog Telematics Limited', 'General', 'General', 'EQ', 'INE442P01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SUZLON', 'Suzlon Energy Limited', 'General', 'General', 'EQ', 'INE040H01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SWANCORP', 'SWAN CORP LIMITED', 'General', 'General', 'EQ', 'INE665A01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SWARAJENG', 'Swaraj Engines Limited', 'General', 'General', 'EQ', 'INE277A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SWELECTES', 'Swelect Energy Systems Limited', 'General', 'General', 'EQ', 'INE409B01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SWIGGY', 'Swiggy Limited', 'General', 'General', 'EQ', 'INE00H001014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SWSOLAR', 'Sterling and Wilson Renewable Energy Limited', 'General', 'General', 'EQ', 'INE00M201021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SYMPHONY', 'Symphony Limited', 'General', 'General', 'EQ', 'INE225D01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SYNCOMF', 'Syncom Formulations (India) Limited', 'General', 'General', 'EQ', 'INE312C01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SYNGENE', 'Syngene International Limited', 'General', 'General', 'EQ', 'INE398R01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('SYRMA', 'Syrma SGS Technology Limited', 'General', 'General', 'EQ', 'INE0DYJ01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TAALTECH', 'Taal Tech Limited', 'General', 'General', 'EQ', 'INE524T01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TAINWALCHM', 'Tainwala Chemical and Plastic (I) Limited', 'General', 'General', 'EQ', 'INE123C01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TAJGVK', 'Taj GVK Hotels & Resorts Limited', 'General', 'General', 'EQ', 'INE586B01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TALBROAUTO', 'Talbros Automotive Components Limited', 'General', 'General', 'EQ', 'INE187D01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TAMBOLIIN', 'Tamboli Industries Limited', 'General', 'General', 'EQ', 'INE864J01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TANLA', 'Tanla Platforms Limited', 'General', 'General', 'EQ', 'INE483C01032', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TARACHAND', 'Tara Chand InfraLogistic Solutions Limited', 'General', 'General', 'EQ', 'INE555Z01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TARAPUR', 'Tarapur Transformers Limited', 'General', 'General', 'EQ', 'INE747K01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TARC', 'TARC Limited', 'General', 'General', 'EQ', 'INE0EK901012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TARIL', 'Transformers And Rectifiers (India) Limited', 'General', 'General', 'EQ', 'INE763I01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TARMAT', 'Tarmat Limited', 'General', 'General', 'EQ', 'INE924H01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TARSONS', 'Tarsons Products Limited', 'General', 'General', 'EQ', 'INE144Z01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TASTYBITE', 'Tasty Bite Eatables Limited', 'General', 'General', 'EQ', 'INE488B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TATACAP', 'Tata Capital Limited', 'General', 'General', 'EQ', 'INE976I01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TATACHEM', 'Tata Chemicals Limited', 'General', 'General', 'EQ', 'INE092A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TATACOMM', 'Tata Communications Limited', 'General', 'General', 'EQ', 'INE151A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TATACONSUM', 'TATA CONSUMER PRODUCTS LIMITED', 'General', 'General', 'EQ', 'INE192A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TATAELXSI', 'Tata Elxsi Limited', 'General', 'General', 'EQ', 'INE670A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TATAINVEST', 'Tata Investment Corporation Limited', 'General', 'General', 'EQ', 'INE672A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TATAPOWER', 'Tata Power Company Limited', 'General', 'General', 'EQ', 'INE245A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TATASTEEL', 'Tata Steel Limited', 'General', 'General', 'EQ', 'INE081A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TATATECH', 'Tata Technologies Limited', 'General', 'General', 'EQ', 'INE142M01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TATVA', 'Tatva Chintan Pharma Chem Limited', 'General', 'General', 'EQ', 'INE0GK401011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TBOTEK', 'TBO Tek Limited', 'General', 'General', 'EQ', 'INE673O01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TBZ', 'Tribhovandas Bhimji Zaveri Limited', 'General', 'General', 'EQ', 'INE760L01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TCC', 'TCC Concept Limited', 'General', 'General', 'EQ', 'INE887D01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TCI', 'Transport Corporation of India Limited', 'General', 'General', 'EQ', 'INE688A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TCIEXP', 'TCI Express Limited', 'General', 'General', 'EQ', 'INE586V01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TCPLPACK', 'TCPL Packaging Limited', 'General', 'General', 'EQ', 'INE822C01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TCS', 'Tata Consultancy Services Limited', 'General', 'General', 'EQ', 'INE467B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TDPOWERSYS', 'TD Power Systems Limited', 'General', 'General', 'EQ', 'INE419M01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TEAMGTY', 'Team India Guaranty Limited', 'General', 'General', 'EQ', 'INE289C01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TEAMLEASE', 'Teamlease Services Limited', 'General', 'General', 'EQ', 'INE985S01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TECHM', 'Tech Mahindra Limited', 'General', 'General', 'EQ', 'INE669C01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TECHNOE', 'Techno Electric & Engineering Company Limited', 'General', 'General', 'EQ', 'INE285K01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TECHNVISN', 'TechNVision Ventures Limited', 'General', 'General', 'EQ', 'INE314H01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TECILCHEM', 'TECIL Chemicals and Hydro Power Limited', 'General', 'General', 'EQ', 'INE014B01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TEGA', 'Tega Industries Limited', 'General', 'General', 'EQ', 'INE011K01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TEJASNET', 'Tejas Networks Limited', 'General', 'General', 'EQ', 'INE010J01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TEMBO', 'Tembo Global Industries Limited', 'General', 'General', 'EQ', 'INE869Y01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TENNIND', 'Tenneco Clean Air India Limited', 'General', 'General', 'EQ', 'INE19RI01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TERASOFT', 'Tera Software Limited', 'General', 'General', 'EQ', 'INE482B01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TEXINFRA', 'Texmaco Infrastructure & Holdings Limited', 'General', 'General', 'EQ', 'INE435C01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TEXMOPIPES', 'Texmo Pipes and Products Limited', 'General', 'General', 'EQ', 'INE141K01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TEXRAIL', 'Texmaco Rail & Engineering Limited', 'General', 'General', 'EQ', 'INE621L01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TFCILTD', 'Tourism Finance Corporation of India Limited', 'General', 'General', 'EQ', 'INE305A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TFL', 'Transwarranty Finance Limited', 'General', 'General', 'EQ', 'INE804H01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TGBHOTELS', 'TGB Banquets And Hotels Limited', 'General', 'General', 'EQ', 'INE797H01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('THAKDEV', 'Thakkers Developers Limited', 'General', 'General', 'EQ', 'INE403F01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('THANGAMAYL', 'Thangamayil Jewellery Limited', 'General', 'General', 'EQ', 'INE085J01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('THEINVEST', 'The Investment Trust Of India Limited', 'General', 'General', 'EQ', 'INE924D01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('THEJO', 'Thejo Engineering Limited', 'General', 'General', 'EQ', 'INE121N01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('THELEELA', 'Leela Palaces Hotels & Resorts Limited', 'General', 'General', 'EQ', 'INE0AQ201015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('THEMISMED', 'Themis Medicare Limited', 'General', 'General', 'EQ', 'INE083B01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('THERMAX', 'Thermax Limited', 'General', 'General', 'EQ', 'INE152A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('THOMASCOOK', 'Thomas Cook  (India)  Limited', 'General', 'General', 'EQ', 'INE332A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('THOMASCOTT', 'Thomas Scott (India) Limited', 'General', 'General', 'EQ', 'INE480M01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('THYROCARE', 'Thyrocare Technologies Limited', 'General', 'General', 'EQ', 'INE594H01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TI', 'Tilaknagar Industries Limited', 'General', 'General', 'EQ', 'INE133E01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TICL', 'Twamev Construction and Infrastructure Limited', 'General', 'General', 'EQ', 'INE388G01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TIIL', 'Technocraft Industries (India) Limited', 'General', 'General', 'EQ', 'INE545H01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TIINDIA', 'Tube Investments of India Limited', 'General', 'General', 'EQ', 'INE974X01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TIJARIA', 'Tijaria Polypipes Limited', 'General', 'General', 'EQ', 'INE440L01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TIL', 'TIL Limited', 'General', 'General', 'EQ', 'INE806C01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TIMETECHNO', 'Time Technoplast Limited', 'General', 'General', 'EQ', 'INE508G01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TIMEX', 'Timex Group India Limited', 'General', 'General', 'EQ', 'INE064A01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TIMKEN', 'Timken India Limited', 'General', 'General', 'EQ', 'INE325A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TINNARUBR', 'Tinna Rubber and Infrastructure Limited', 'General', 'General', 'EQ', 'INE015C01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TIPSFILMS', 'Tips Films Limited', 'General', 'General', 'EQ', 'INE0LQS01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TIPSMUSIC', 'Tips Music Limited', 'General', 'General', 'EQ', 'INE716B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TIRUMALCHM', 'Thirumalai Chemicals Limited', 'General', 'General', 'EQ', 'INE338A01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TITAGARH', 'TITAGARH RAIL SYSTEMS LIMITED', 'General', 'General', 'EQ', 'INE615H01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TITAN', 'Titan Company Limited', 'General', 'General', 'EQ', 'INE280A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TMB', 'Tamilnad Mercantile Bank Limited', 'General', 'General', 'EQ', 'INE668A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TMCV', 'Tata Motors Limited', 'General', 'General', 'EQ', 'INE1TAE01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TMPV', 'Tata Motors Passenger Vehicles Limited', 'General', 'General', 'EQ', 'INE155A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TNPETRO', 'Tamilnadu PetroProducts Limited', 'General', 'General', 'EQ', 'INE148A01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TNPL', 'Tamil Nadu Newsprint & Papers Limited', 'General', 'General', 'EQ', 'INE107A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TNTELE', 'Tamilnadu Telecommunication Limited', 'General', 'General', 'EQ', 'INE141D01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TOLINS', 'Tolins Tyres Limited', 'General', 'General', 'EQ', 'INE0RWQ01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TORNTPHARM', 'Torrent Pharmaceuticals Limited', 'General', 'General', 'EQ', 'INE685A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TORNTPOWER', 'Torrent Power Limited', 'General', 'General', 'EQ', 'INE813H01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TOTAL', 'Total Transport Systems Limited', 'General', 'General', 'EQ', 'INE336X01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TOUCHWOOD', 'Touchwood Entertainment Limited', 'General', 'General', 'EQ', 'INE486Y01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TPHQ', 'Teamo Productions HQ Limited', 'General', 'General', 'EQ', 'INE065J01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TPLPLASTEH', 'TPL Plastech Limited', 'General', 'General', 'EQ', 'INE413G01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRACXN', 'Tracxn Technologies Limited', 'General', 'General', 'EQ', 'INE0HMF01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRANSPEK', 'Transpek Industry Limited', 'General', 'General', 'EQ', 'INE687A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRANSRAILL', 'Transrail Lighting Limited', 'General', 'General', 'EQ', 'INE454P01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRANSWORLD', 'TRANSWORLD SHIPPING LINES LIMITED', 'General', 'General', 'EQ', 'INE757B01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRAVELFOOD', 'Travel Food Services Limited', 'General', 'General', 'EQ', 'INE103V01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TREEHOUSE', 'Tree House Education & Accessories Limited', 'General', 'General', 'EQ', 'INE040M01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TREJHARA', 'TREJHARA SOLUTIONS LIMITED', 'General', 'General', 'EQ', 'INE00CA01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TREL', 'Transindia Real Estate Limited', 'General', 'General', 'EQ', 'INE0O3901029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRENT', 'Trent Limited', 'General', 'General', 'EQ', 'INE849A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRF', 'TRF Limited', 'General', 'General', 'EQ', 'INE391D01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRIDENT', 'Trident Limited', 'General', 'General', 'EQ', 'INE064C01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRIGYN', 'Trigyn Technologies Limited', 'General', 'General', 'EQ', 'INE948A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRITURBINE', 'Triveni Turbine Limited', 'General', 'General', 'EQ', 'INE152M01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRIVENI', 'Triveni Engineering & Industries Limited', 'General', 'General', 'EQ', 'INE256C01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRU', 'TruCap Finance Limited', 'General', 'General', 'EQ', 'INE615R01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TRUALT', 'TruAlt Bioenergy Limited', 'General', 'General', 'EQ', 'INE0MWH01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TSFINV', 'TSF INVESTMENTS LIMITED', 'General', 'General', 'EQ', 'INE202Z01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TTKHLTCARE', 'TTK Healthcare Limited', 'General', 'General', 'EQ', 'INE910C01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TTKPRESTIG', 'TTK Prestige Limited', 'General', 'General', 'EQ', 'INE690A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TTL', 'T T Limited', 'General', 'General', 'EQ', 'INE592B01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TTML', 'Tata Teleservices (Maharashtra) Limited', 'General', 'General', 'EQ', 'INE517B01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TVSELECT', 'TVS Electronics Limited', 'General', 'General', 'EQ', 'INE236G01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TVSHLTD', 'TVS Holdings Limited', 'General', 'General', 'EQ', 'INE105A01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TVSMOTOR', 'TVS Motor Company Limited', 'General', 'General', 'EQ', 'INE494B01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TVSSCS', 'TVS Supply Chain Solutions Limited', 'General', 'General', 'EQ', 'INE395N01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TVSSRICHAK', 'TVS Srichakra Limited', 'General', 'General', 'EQ', 'INE421C01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TVTODAY', 'TV Today Network Limited', 'General', 'General', 'EQ', 'INE038F01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('TVVISION', 'TV Vision Limited', 'General', 'General', 'EQ', 'INE871L01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UBL', 'United Breweries Limited', 'General', 'General', 'EQ', 'INE686F01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UCAL', 'UCAL LIMITED', 'General', 'General', 'EQ', 'INE139B01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UCOBANK', 'UCO Bank', 'General', 'General', 'EQ', 'INE691A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UDS', 'Updater Services Limited', 'General', 'General', 'EQ', 'INE851I01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UEL', 'Ujaas Energy Limited', 'General', 'General', 'EQ', 'INE899L01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UFBL', 'United Foodbrands Limited', 'General', 'General', 'EQ', 'INE382M01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UFLEX', 'UFLEX Limited', 'General', 'General', 'EQ', 'INE516A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UFO', 'UFO Moviez India Limited', 'General', 'General', 'EQ', 'INE527H01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UGARSUGAR', 'The Ugar Sugar Works Limited', 'General', 'General', 'EQ', 'INE071E01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UGROCAP', 'Ugro Capital Limited', 'General', 'General', 'EQ', 'INE583D01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UJJIVANSFB', 'Ujjivan Small Finance Bank Limited', 'General', 'General', 'EQ', 'INE551W01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ULTRACEMCO', 'UltraTech Cement Limited', 'General', 'General', 'EQ', 'INE481G01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ULTRAMAR', 'Ultramarine & Pigments Limited', 'General', 'General', 'EQ', 'INE405A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UMIYA-MRO', 'UMIYA BUILDCON LIMITED', 'General', 'General', 'EQ', 'INE398B01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNICHEMLAB', 'Unichem Laboratories Limited', 'General', 'General', 'EQ', 'INE351A01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNIECOM', 'Unicommerce Esolutions Limited', 'General', 'General', 'EQ', 'INE00U401027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNIENTER', 'Uniphos Enterprises Limited', 'General', 'General', 'EQ', 'INE037A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNIMECH', 'Unimech Aerospace and Manufacturing Limited', 'General', 'General', 'EQ', 'INE0U3I01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNIONBANK', 'Union Bank of India', 'General', 'General', 'EQ', 'INE692A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNIPARTS', 'Uniparts India Limited', 'General', 'General', 'EQ', 'INE244O01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNITDSPR', 'United Spirits Limited', 'General', 'General', 'EQ', 'INE854D01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNITECH', 'Unitech Limited', 'General', 'General', 'EQ', 'INE694A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNITEDTEA', 'The United Nilgiri Tea Estates Company Limited', 'General', 'General', 'EQ', 'INE458F01011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNIVASTU', 'Univastu India Limited', 'General', 'General', 'EQ', 'INE562X01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNIVCABLES', 'Universal Cables Limited', 'General', 'General', 'EQ', 'INE279A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UNOMINDA', 'UNO Minda Limited', 'General', 'General', 'EQ', 'INE405E01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UPL', 'UPL Limited', 'General', 'General', 'EQ', 'INE628A01036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('URAVIDEF', 'Uravi Defence and Technology Limited', 'General', 'General', 'EQ', 'INE568Z01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('URBANCO', 'Urban Company Limited', 'General', 'General', 'EQ', 'INE0CAZ01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('URJA', 'Urja Global Limited', 'General', 'General', 'EQ', 'INE550C01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('USHAMART', 'Usha Martin Limited', 'General', 'General', 'EQ', 'INE228A01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('USK', 'Udayshivakumar Infra Limited', 'General', 'General', 'EQ', 'INE0N0Y01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UTIAMC', 'UTI Asset Management Company Limited', 'General', 'General', 'EQ', 'INE094J01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UTKARSHBNK', 'Utkarsh Small Finance Bank Limited', 'General', 'General', 'EQ', 'INE735W01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UTTAMSUGAR', 'Uttam Sugar Mills Limited', 'General', 'General', 'EQ', 'INE786F01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('UYFINCORP', 'U. Y. Fincorp Limited', 'General', 'General', 'EQ', 'INE152C01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('V2RETAIL', 'V2 Retail Limited', 'General', 'General', 'EQ', 'INE945H01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VADILALIND', 'Vadilal Industries Limited', 'General', 'General', 'EQ', 'INE694D01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VAIBHAVGBL', 'Vaibhav Global Limited', 'General', 'General', 'EQ', 'INE884A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VAKRANGEE', 'Vakrangee Limited', 'General', 'General', 'EQ', 'INE051B01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VALIANTORG', 'Valiant Organics Limited', 'General', 'General', 'EQ', 'INE565V01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VARDHACRLC', 'Vardhman Acrylics Limited', 'General', 'General', 'EQ', 'INE116G01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VARDMNPOLY', 'Vardhman Polytex Limited', 'General', 'General', 'EQ', 'INE835A01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VARROC', 'Varroc Engineering Limited', 'General', 'General', 'EQ', 'INE665L01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VASWANI', 'Vaswani Industries Limited', 'General', 'General', 'EQ', 'INE590L01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VBL', 'Varun Beverages Limited', 'General', 'General', 'EQ', 'INE200M01039', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VCL', 'Vaxtex Cotfab Limited', 'General', 'General', 'EQ', 'INE098201036', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VEDL', 'Vedanta Limited', 'General', 'General', 'EQ', 'INE205A01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VEEDOL', 'Veedol Corporation Limited', 'General', 'General', 'EQ', 'INE484C01030', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VELJAN', 'Veljan Denison Limited', 'General', 'General', 'EQ', 'INE232E01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VENKEYS', 'Venky''s (India) Limited', 'General', 'General', 'EQ', 'INE398A01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VENTIVE', 'Ventive Hospitality Limited', 'General', 'General', 'EQ', 'INE781S01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VENUSPIPES', 'Venus Pipes & Tubes Limited', 'General', 'General', 'EQ', 'INE0JA001018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VERANDA', 'Veranda Learning Solutions Limited', 'General', 'General', 'EQ', 'INE0IQ001011', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VESUVIUS', 'Vesuvius India Limited', 'General', 'General', 'EQ', 'INE386A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VETO', 'Veto Switchgears And Cables Limited', 'General', 'General', 'EQ', 'INE918N01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VGL', 'VARVEE GLOBAL LIMITED', 'General', 'General', 'EQ', 'INE273D01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VGUARD', 'V-Guard Industries Limited', 'General', 'General', 'EQ', 'INE951I01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VHL', 'Vardhman Holdings Limited', 'General', 'General', 'EQ', 'INE701A01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIDHIING', 'Vidhi Specialty Food Ingredients Limited', 'General', 'General', 'EQ', 'INE632C01026', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIDYAWIRES', 'Vidya Wires Limited', 'General', 'General', 'EQ', 'INE14UN01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIJAYA', 'Vijaya Diagnostic Centre Limited', 'General', 'General', 'EQ', 'INE043W01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIKASECO', 'Vikas EcoTech Limited', 'General', 'General', 'EQ', 'INE806A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIKASLIFE', 'Vikas Lifecare Limited', 'General', 'General', 'EQ', 'INE161L01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIKRAMSOLR', 'Vikram Solar Limited', 'General', 'General', 'EQ', 'INE078V01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIKRAN', 'Vikran Engineering Limited', 'General', 'General', 'EQ', 'INE01R501028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIMTALABS', 'Vimta Labs Limited', 'General', 'General', 'EQ', 'INE579C01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VINATIORGA', 'Vinati Organics Limited', 'General', 'General', 'EQ', 'INE410B01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VINCOFE', 'Vintage Coffee And Beverages Limited', 'General', 'General', 'EQ', 'INE498Q01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VINDHYATEL', 'Vindhya Telelinks Limited', 'General', 'General', 'EQ', 'INE707A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VINNY', 'Vinny Overseas Limited', 'General', 'General', 'EQ', 'INE01KI01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VINYLINDIA', 'Vinyl Chemicals (India) Limited', 'General', 'General', 'EQ', 'INE250B01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIPIND', 'VIP Industries Limited', 'General', 'General', 'EQ', 'INE054A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIPULLTD', 'Vipul Limited', 'General', 'General', 'EQ', 'INE946H01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIRINCHI', 'Virinchi Limited', 'General', 'General', 'EQ', 'INE539B01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VISAKAIND', 'Visaka Industries Limited', 'General', 'General', 'EQ', 'INE392A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VISHNU', 'Vishnu Chemicals Limited', 'General', 'General', 'EQ', 'INE270I01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VISHWARAJ', 'Vishwaraj Sugar Industries Limited', 'General', 'General', 'EQ', 'INE430N01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIVIDHA', 'Visagar Polytex Limited', 'General', 'General', 'EQ', 'INE370E01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VIYASH', 'Viyash Scientific Limited', 'General', 'General', 'EQ', 'INE807F01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VLSFINANCE', 'VLS Finance Limited', 'General', 'General', 'EQ', 'INE709A01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VMART', 'V-Mart Retail Limited', 'General', 'General', 'EQ', 'INE665J01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VMM', 'Vishal Mega Mart Limited', 'General', 'General', 'EQ', 'INE01EA01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VOLTAMP', 'Voltamp Transformers Limited', 'General', 'General', 'EQ', 'INE540H01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VOLTAS', 'Voltas Limited', 'General', 'General', 'EQ', 'INE226A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VRAJ', 'Vraj Iron and Steel Limited', 'General', 'General', 'EQ', 'INE0S2V01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VRLLOG', 'VRL Logistics Limited', 'General', 'General', 'EQ', 'INE366I01010', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VSSL', 'Vardhman Special Steels Limited', 'General', 'General', 'EQ', 'INE050M01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VSTIND', 'VST Industries Limited', 'General', 'General', 'EQ', 'INE710A01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VSTL', 'Vibhor Steel Tubes Limited', 'General', 'General', 'EQ', 'INE0QTF01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VSTTILLERS', 'V.S.T Tillers Tractors Limited', 'General', 'General', 'EQ', 'INE764D01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('VTL', 'Vardhman Textiles Limited', 'General', 'General', 'EQ', 'INE825A01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WAAREEENER', 'Waaree Energies Limited', 'General', 'General', 'EQ', 'INE377N01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WAAREEINDO', 'Indosolar Limited', 'General', 'General', 'EQ', 'INE866K01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WAAREERTL', 'Waaree Renewable Technologies Limited', 'General', 'General', 'EQ', 'INE299N01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WABAG', 'VA Tech Wabag Limited', 'General', 'General', 'EQ', 'INE956G01038', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WAKEFIT', 'Wakefit Innovations Limited', 'General', 'General', 'EQ', 'INE0E7301029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WALCHANNAG', 'Walchandnagar Industries Limited', 'General', 'General', 'EQ', 'INE711A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WANBURY', 'Wanbury Limited', 'General', 'General', 'EQ', 'INE107F01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WCIL', 'Western Carriers (India) Limited', 'General', 'General', 'EQ', 'INE0CJF01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WEALTH', 'Wealth First Portfolio Managers Limited', 'General', 'General', 'EQ', 'INE658T01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WEBELSOLAR', 'Websol Energy System Limited', 'General', 'General', 'EQ', 'INE855C01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WEIZMANIND', 'Weizmann Limited', 'General', 'General', 'EQ', 'INE080A01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WEL', 'Wonder Electricals Limited', 'General', 'General', 'EQ', 'INE02WG01024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WELCORP', 'Welspun Corp Limited', 'General', 'General', 'EQ', 'INE191B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WELENT', 'Welspun Enterprises Limited', 'General', 'General', 'EQ', 'INE625G01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WELSPLSOL', 'Welspun Specialty Solutions Limited', 'General', 'General', 'EQ', 'INE731F01037', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WELSPUNLIV', 'Welspun Living Limited', 'General', 'General', 'EQ', 'INE192B01031', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WENDT', 'Wendt (India) Limited', 'General', 'General', 'EQ', 'INE274C01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WESTLIFE', 'WESTLIFE FOODWORLD LIMITED', 'General', 'General', 'EQ', 'INE274F01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WEWORK', 'WeWork India Management Limited', 'General', 'General', 'EQ', 'INE085001019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WHEELS', 'Wheels India Limited', 'General', 'General', 'EQ', 'INE715A01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WHIRLPOOL', 'Whirlpool of India Limited', 'General', 'General', 'EQ', 'INE716A01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WILLAMAGOR', 'Williamson Magor & Company Limited', 'General', 'General', 'EQ', 'INE210A01017', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WINDLAS', 'Windlas Biotech Limited', 'General', 'General', 'EQ', 'INE0H5O01029', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WINDMACHIN', 'Windsor Machines Limited', 'General', 'General', 'EQ', 'INE052A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WIPL', 'The Western India Plywoods Limited', 'General', 'General', 'EQ', 'INE215F01023', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WIPRO', 'Wipro Limited', 'General', 'General', 'EQ', 'INE075A01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WOCKPHARMA', 'Wockhardt Limited', 'General', 'General', 'EQ', 'INE049B01025', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WONDERLA', 'Wonderla Holidays Limited', 'General', 'General', 'EQ', 'INE066O01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WORTHPERI', 'Worth Peripherals Limited', 'General', 'General', 'EQ', 'INE196Y01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WPIL', 'WPIL Limited', 'General', 'General', 'EQ', 'INE765D01022', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WSI', 'W S Industries (I) Limited', 'General', 'General', 'EQ', 'INE100D01014', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('WSTCSTPAPR', 'West Coast Paper Mills Limited', 'General', 'General', 'EQ', 'INE976A01021', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('XCHANGING', 'Xchanging Solutions Limited', 'General', 'General', 'EQ', 'INE692G01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('XELPMOC', 'Xelpmoc Design And Tech Limited', 'General', 'General', 'EQ', 'INE01P501012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('XPROINDIA', 'Xpro India Limited', 'General', 'General', 'EQ', 'INE445C01015', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('XTGLOBAL', 'Xtglobal Infotech Limited', 'General', 'General', 'EQ', 'INE547B01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('YASHO', 'Yasho Industries Limited', 'General', 'General', 'EQ', 'INE616Z01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('YATHARTH', 'Yatharth Hospital & Trauma Care Services Limited', 'General', 'General', 'EQ', 'INE0JO301016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('YATRA', 'Yatra Online Limited', 'General', 'General', 'EQ', 'INE0JR601024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('YESBANK', 'Yes Bank Limited', 'General', 'General', 'EQ', 'INE528G01035', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('YUKEN', 'Yuken India Limited', 'General', 'General', 'EQ', 'INE384C01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZAGGLE', 'Zaggle Prepaid Ocean Services Limited', 'General', 'General', 'EQ', 'INE07K301024', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZEEL', 'Zee Entertainment Enterprises Limited', 'General', 'General', 'EQ', 'INE256A01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZEEMEDIA', 'Zee Media Corporation Limited', 'General', 'General', 'EQ', 'INE966H01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZENITHEXPO', 'Zenith Exports Limited', 'General', 'General', 'EQ', 'INE058B01018', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZENITHSTL', 'Zenith Steel Pipes & Industries Limited', 'General', 'General', 'EQ', 'INE318D01020', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZENSARTECH', 'Zensar Technologies Limited', 'General', 'General', 'EQ', 'INE520A01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZENTEC', 'Zen Technologies Limited', 'General', 'General', 'EQ', 'INE251B01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZFCVINDIA', 'ZF Commercial Vehicle Control Systems India Limited', 'General', 'General', 'EQ', 'INE342J01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZFSTEERING', 'ZF Steering Gear (India) Limited', 'General', 'General', 'EQ', 'INE116C01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZODIACLOTH', 'Zodiac Clothing Company Limited', 'General', 'General', 'EQ', 'INE206B01013', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZOTA', 'Zota Health Care LImited', 'General', 'General', 'EQ', 'INE358U01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZSARACOM', 'Saraswati Commercial India Limited', 'General', 'General', 'EQ', 'INE967G01019', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZUARI', 'Zuari Agro Chemicals Limited', 'General', 'General', 'EQ', 'INE840M01016', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZUARIIND', 'ZUARI INDUSTRIES LIMITED', 'General', 'General', 'EQ', 'INE217A01012', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZYDUSLIFE', 'Zydus Lifesciences Limited', 'General', 'General', 'EQ', 'INE010B01027', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;
INSERT INTO stocks (symbol, company_name, sector, industry, series, isin, is_active) 
VALUES ('ZYDUSWELL', 'Zydus Wellness Limited', 'General', 'General', 'EQ', 'INE768C01028', true) 
ON CONFLICT (symbol) DO UPDATE SET 
    company_name = EXCLUDED.company_name, 
    isin = EXCLUDED.isin,
    series = EXCLUDED.series,
    is_active = EXCLUDED.is_active;

COMMIT;

-- Successfully processed: 2097 stocks
-- Skipped (non-EQ or invalid): 277 entries
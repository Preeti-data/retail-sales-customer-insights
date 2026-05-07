-- Remove duplicates
SELECT DISTINCT *
FROM sales;

-- Standardize date formats
SELECT 
    Region,
    Country,
    [Item Type],
    [Sales Channel],
    [Order Priority],
    CONVERT(date, [Order Date], 101) AS OrderDate,
    CONVERT(date, [Ship Date], 101) AS ShipDate,
    [Units Sold],
    [Unit Price],
    [Unit Cost],
    [Total Revenue],
    [Total Cost],
    [Total Profit]
FROM sales;

-- Check for missing values
SELECT 
    SUM(CASE WHEN Region IS NULL THEN 1 ELSE 0 END) AS MissingRegion,
    SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS MissingCountry,
    SUM(CASE WHEN [Item Type] IS NULL THEN 1 ELSE 0 END) AS MissingItemType
FROM sales;

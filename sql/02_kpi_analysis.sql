-- Total Revenue
SELECT SUM([Total Revenue]) AS TotalRevenue
FROM sales;

-- Total Profit
SELECT SUM([Total Profit]) AS TotalProfit
FROM sales;

-- Profit Margin
SELECT 
    SUM([Total Profit]) / SUM([Total Revenue]) AS ProfitMargin
FROM sales;

-- Average Order Value (AOV)
SELECT 
    AVG([Total Revenue]) AS AverageOrderValue
FROM sales;

-- Monthly Revenue Trend
SELECT 
    YEAR(CONVERT(date, [Order Date], 101)) AS Year,
    MONTH(CONVERT(date, [Order Date], 101)) AS Month,
    SUM([Total Revenue]) AS MonthlyRevenue
FROM sales
GROUP BY YEAR(CONVERT(date, [Order Date], 101)), MONTH(CONVERT(date, [Order Date], 101))
ORDER BY Year, Month;

-- Revenue by Region
SELECT 
    Region,
    SUM([Total Revenue]) AS Revenue
FROM sales
GROUP BY Region
ORDER BY Revenue DESC;

-- Revenue by Item Type
SELECT 
    [Item Type],
    SUM([Total Revenue]) AS Revenue
FROM sales
GROUP BY [Item Type]
ORDER BY Revenue DESC;

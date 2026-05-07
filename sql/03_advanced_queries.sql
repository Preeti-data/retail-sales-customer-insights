-- Top 10 most profitable countries
SELECT TOP 10
    Country,
    SUM([Total Profit]) AS Profit
FROM sales
GROUP BY Country
ORDER BY Profit DESC;

-- Window function: Running total revenue
SELECT 
    Country,
    [Order Date],
    [Total Revenue],
    SUM([Total Revenue]) OVER (ORDER BY CONVERT(date, [Order Date], 101)) AS RunningRevenue
FROM sales;

-- CTE: High priority orders
WITH HighPriority AS (
    SELECT *
    FROM sales
    WHERE [Order Priority] = 'H'
)
SELECT 
    Country,
    SUM([Total Revenue]) AS HighPriorityRevenue
FROM HighPriority
GROUP BY Country
ORDER BY HighPriorityRevenue DESC;

-- Discount impact (if discount existed)
-- Here we simulate discount impact using Unit Price vs Unit Cost
SELECT 
    [Item Type],
    AVG([Unit Price] - [Unit Cost]) AS AvgMargin
FROM sales
GROUP BY [Item Type]
ORDER BY AvgMargin DESC;

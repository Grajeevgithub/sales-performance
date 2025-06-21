-- 1. Total Sales and Profit
SELECT 
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Superstore;

-- 2. Top 10 Products by Sales
SELECT 
    "Product Name", 
    SUM(Sales) AS total_sales
FROM Superstore
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;

-- 3. Profit by Region
SELECT 
    Region, 
    SUM(Profit) AS total_profit
FROM Superstore
GROUP BY Region
ORDER BY total_profit DESC;

-- 4. Monthly Sales Trend
SELECT 
    DATE_TRUNC('month', "Order Date") AS month,
    SUM(Sales) AS total_sales
FROM Superstore
GROUP BY month
ORDER BY month;

-- 5. Category and Sub-Category Performance
SELECT 
    Category,
    "Sub-Category",
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Superstore
GROUP BY Category, "Sub-Category"
ORDER BY total_sales DESC;

-- 6. Loss-Making Products
SELECT 
    "Product Name", 
    Sales, 
    Profit
FROM Superstore
WHERE Profit < 0
ORDER BY Profit ASC;

-- 7. State-Level Performance
SELECT 
    State,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Superstore
GROUP BY State
ORDER BY total_sales DESC;

-- 8. Sales Target Gap
SELECT 
    SUM(Sales) AS total_sales,
    3000000 AS target,
    3000000 - SUM(Sales) AS gap_to_target
FROM Superstore;

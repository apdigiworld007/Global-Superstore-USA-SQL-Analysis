-- Global Superstore USA Analysis (2016–2017)
-- Author: Amir Payara
-- Tool: MySQL
-- Data Source: Power BI extracted CSV
-- 1. Total Sales, Profit & Orders
SELECT
  ROUND(SUM(Sales), 2)   AS Total_Sales,
  ROUND(SUM(Profit), 2)  AS Total_Profit,
  COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM `orders usa`
WHERE
  Country = 'United States'
  AND order_date_correct BETWEEN '2014-01-01' AND '2017-12-31';
-- 2. Top 5 Customers by Sales
SELECT
  `Customer Name` AS Customer_Name,
  ROUND(SUM(Sales), 2) AS Total_Sales
FROM `orders usa`
WHERE YEAR(order_date_correct) IN (2014, 2017)
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 5;
-- 3. Monthly Sales Trend
SELECT
  YEAR(order_date_correct) AS Year,
  MONTH(order_date_correct) AS Month,
  ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM `orders usa`
WHERE YEAR(order_date_correct) IN (2014, 2015, 2016, 2017)
GROUP BY
  YEAR(order_date_correct),
  MONTH(order_date_correct)
ORDER BY
  YEAR(order_date_correct),
  MONTH(order_date_correct);
-- 4. Monthly Profit Trend
SELECT
  YEAR(order_date_correct) AS Year,
  MONTH(order_date_correct) AS Month,
  ROUND(SUM(Profit), 2) AS Monthly_Profit
FROM `orders usa`
WHERE YEAR(order_date_correct) IN (2014, 2015, 2016, 2017)
GROUP BY
  YEAR(order_date_correct),
  MONTH(order_date_correct)
ORDER BY
  YEAR(order_date_correct),
  MONTH(order_date_correct);
-- 5. Sales by Category
SELECT
  Category,
  ROUND(SUM(Sales),2) AS Total_Sales
FROM `orders usa`
GROUP BY Category
ORDER BY Total_Sales DESC;
-- 6. Top 5 States by Sales
SELECT
  State,
  ROUND(SUM(Sales),2) AS Total_Sales
FROM `orders usa`
WHERE YEAR(order_date_correct) IN (2014, 2017)
  AND State IS NOT NULL
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;
 -- 7. Loss-Making Products
SELECT
  `Product Name` AS Product_Name,
  ROUND(SUM(Profit), 2) AS Total_Profit
FROM `orders usa`
WHERE YEAR(order_date_correct) IN (2014, 2017)
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC
LIMIT 10;

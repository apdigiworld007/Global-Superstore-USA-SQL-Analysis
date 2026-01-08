# Global-Superstore-USA-SQL-Analysis
SQL analysis of Global Superstore USA data validated with Power BI
# SQL Sales Analysis – Global Superstore (USA)

## Project Overview
This project analyzes USA sales performance from the Global Superstore dataset using MySQL.
The analysis focuses on sales, profit, orders, customers, time trends, geography, and
loss-making products.

**Time Period:** 2014–2017  
**Region:** United States only  
**Rows Analyzed:** ~9,972 (validated with Power BI)

## Tools Used
- MySQL
- MySQL Workbench
- Excel (data export from Power BI)
- GitHub

## Dataset
The dataset was exported directly from Power BI (Table View) to ensure **100% data
consistency** with dashboard results.

**Table Used:**
- `orders usa`

## Key Business Questions Answered
- What are the total sales, total profit, and total orders?
- Who are the top 5 customers by sales?
- How do monthly sales and profit trends change over time?
- Which product categories generate the most sales?
- Which states contribute the highest revenue?
- Which products are loss-making?

## Key Results (USA)
- **Total Sales:** 2.27M  
- **Total Profit:** 282.86K  
- **Total Orders:** 4,931  

*(All values validated against Power BI)*

## SQL Analysis
All finalized and validated SQL queries are available here:

- `sql/global_superstore_usa_analysis.sql`

The SQL analysis includes:
- Aggregations
- Grouping & filtering
- Date-based analysis
- Profitability analysis

## Sample Outputs

### Monthly Sales Trend

![Monthly Sales 2014](screenshots/03_1_Monthly_Sales_Trend_2014.png)
![Monthly Sales 2015](screenshots/03_2_Monthly_Sales_Trend_2015.png)
![Monthly Sales 2016](screenshots/03_3_Monthly_Sales_Trend_2016.png)
![Monthly Sales 2017](screenshots/03_4_Monthly_Sales_Trend_2017.png)

![Monthly Sales](screenshots/monthly_trend.png)

### Monthly Profit Trend
![Monthly Profit](screenshots/monthly_profit.png)

### Top Customers
![Top Customers](screenshots/top_customers.png)

### Loss-Making Products
![Loss Products](screenshots/loss_products.png)

## Skills Demonstrated
- SQL aggregations & filtering
- Date handling & time-series analysis
- Data validation with Power BI
- Business-focused insights
- Clean, reproducible SQL analysis

## Next Steps
- Python analysis on the same dataset
- Advanced SQL (CTEs, window functions)
- Portfolio expansion

## Author
**Amir Payara**  
Aspiring Data Analyst | SQL | Power BI | Python

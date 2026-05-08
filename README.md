# retail-sales-customer-insights
End-to-end Data Analyst project using SQL and Power BI to analyze sales, customers, and product performance.

# Project Overview

This project analyzes 1,000+ retail sales transactions across multiple regions, product categories, and sales channels.
The goal is to uncover revenue trends, profitability drivers, customer behavior, and product performance using:
1. SQL for data cleaning & KPI calculations
2. Power BI for dashboarding
3. GitHub for version control & portfolio presentation
4. This dashboard is designed as a recruiter‑ready portfolio project demonstrating real business analytics skills.

# Dataset Description
The dataset includes the following key fields:
1. Order Date
2. Country / Region
3. Item Type
4. Sales Channel (Online / Offline)
5. Units Sold
6. Unit Price / Unit Cost
7. Total Revenue
8. Total Cost
9. Total Profit
The data was cleaned, validated, and transformed using SQL and Power BI.

# Key Measures (DAX)
Custom measures created in Power BI:
1. Revenue Total = SUM('sales'[Total Revenue])
2. Profit Total = SUM('sales'[Total Profit])
3. Profit Margin % = DIVIDE([Profit Total], [Revenue Total])
4. AOV Value = AVERAGE('sales'[Total Revenue])
5. Units Sold Total = SUM('sales'[Units Sold])
These measures power all KPI cards and visuals.

# Dashboard Structure
📍 Page 1 — Executive Summary
KPI Cards:
 1. Total Revenue
 2. Total Profit
 3. Profit Margin %
     Average Order Value (AOV),
     Monthly Revenue Trend,
     Revenue by Region,
     Revenue by Item Type,
Slicers: Region, Item Type, Sales Channel

📍 Page 2 — Customer & Market Insights
1. Revenue by Country (Tree Map / Map Alternative)
2. Profit by Country (Bar Chart)
3. Revenue by Sales Channel Top 10 Countries by Profit (Table)

📍 Page 3 — Product Performance
1. Units Sold by Item Type
2. Profit Margin by Item Type
4. High‑Priority Products Table (Low Margin + High Sales)
   

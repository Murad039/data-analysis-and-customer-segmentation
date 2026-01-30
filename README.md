# SQL Sales & Customer Analytics Project

## Overview
This project demonstrates end-to-end data analysis using **SQL** to extract business insights from sales and customer data.  
The analysis focuses on understanding **sales performance**, **customer behavior**, and **trends over time** using advanced SQL techniques such as **window functions, aggregations, CTEs, and conditional logic**.

The goal of this project is to showcase practical SQL skills used in real-world analytics scenarios.

---

## Dataset Description
The analysis is performed on transactional sales data and customer dimension data, containing information such as:
- Order dates and sales amounts
- Product names and categories
- Customer demographics (age, segment)
- Order history and purchasing behavior

---

## Key Analyses Performed

### 1. Change Over Time Analysis
- Analyzed **year-over-year sales changes** by product.
- Compared current year sales with previous year sales.
- Classified trends as **increase**, **decrease**, or **stagnant**.

**Techniques used:**
- `LAG()` window function  
- Year-based aggregation  
- Conditional `CASE` statements  

---

### 2. Cumulative Analysis
- Calculated **running totals** of sales over time.
- Tracked cumulative sales growth to understand long-term performance.

**Techniques used:**
- `SUM() OVER (ORDER BY date)`
- Window functions for cumulative metrics

---

### 3. Performance Analysis
- Compared individual product sales against **average sales benchmarks**.
- Labeled products as **above average** or **below average** performers.
- Identified high-impact and underperforming products.

**Techniques used:**
- `AVG() OVER (PARTITION BY product)`
- Difference calculations
- Performance classification logic

---

### 4. Part-to-Whole Analysis
- Evaluated how much each product contributes to **total sales**.
- Helped identify products driving the majority of revenue.

**Techniques used:**
- Percentage contribution calculations
- Aggregate totals with subqueries / CTEs

---

### 5. Data Segmentation
- Segmented customers based on:
  - Age group
  - Recency
  - Total orders
  - Total sales
- Classified customers into segments such as **VIP** and **New Customers**.

**Techniques used:**
- Conditional logic with `CASE`
- Aggregation by customer
- Customer lifetime metrics

---

## Key Insights
- Certain products consistently outperform the average and drive most of the revenue.
- Some products show strong year-over-year growth followed by sharp declines, indicating volatility.
- VIP customers contribute significantly higher revenue despite fewer total customers.
- Customer age and recency have a noticeable impact on purchasing behavior.

---

## SQL Concepts Demonstrated
- Window Functions (`LAG`, `SUM OVER`, `AVG OVER`)
- Common Table Expressions (CTEs)
- Aggregations and Grouping
- Conditional Logic (`CASE`)
- Time-based Analysis
- Business-oriented metric design

---


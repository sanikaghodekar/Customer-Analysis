# 📊 Customer Analysis using SQL

## 📌 Project Overview

This project analyzes customer purchasing behavior using SQL.
The goal is to identify customer trends, top customers, product demand, and sales patterns to support data-driven business decisions.

## 🎯 Objectives

* Analyze customer growth over time
* Identify top spending customers
* Find repeat customers
* Discover most popular products
* Analyze monthly sales trends

## 🛠 Tools & Technologies

* SQL
* MySQL / PostgreSQL / SQL Server
* Data Analysis

## 🗂 Database Schema

### Customers Table

| Column        | Description          |
| ------------- | -------------------- |
| customer_id   | Unique customer ID   |
| customer_name | Customer name        |
| email         | Customer email       |
| signup_date   | Date customer joined |

### Products Table

| Column       | Description       |
| ------------ | ----------------- |
| product_id   | Unique product ID |
| product_name | Product name      |
| category     | Product category  |
| price        | Product price     |

### Orders Table

| Column       | Description            |
| ------------ | ---------------------- |
| order_id     | Unique order ID        |
| customer_id  | Customer placing order |
| product_id   | Product purchased      |
| order_date   | Order date             |
| quantity     | Quantity purchased     |
| total_amount | Total order value      |

## 📊 SQL Analysis Performed

The following business questions were answered using SQL queries:

1. Total number of customers
2. Monthly customer growth
3. Total revenue generated
4. Monthly sales trend
5. Top customers by total spending
6. Most popular products
7. Repeat customer analysis

## 📈 Key Insights

* Electronics category generated the highest revenue.
* Laptop was the top revenue-generating product.
* Some customers placed multiple orders, showing strong repeat behavior.
* Monthly sales showed growth between April and May.
* A small group of customers contributed a large share of revenue.

## 📁 Project Structure
- customer-sql-analysis/
- │
- ├── dataset/
- │   └── sample_data.sql
- │
- ├── schema/
- │   └── create_tables.sql
- │
- ├── queries/
- │   ├── basic_analysis.sql
- │   ├── intermediate_analysis.sql
- │   └── advanced_analysis.sql
- │
- ├── insights/
- │   └── business_insights.md
- │
- └── README.md

## 🚀 How to Run the Project

1. Create database in MySQL/PostgreSQL/SQL Server.
2. Run the schema script to create tables.
3. Insert the sample dataset.
4. Execute SQL queries from the queries folder to generate insights.

## 💡 Skills Demonstrated

* SQL Query Writing
* JOIN Operations
* Aggregation Functions
* Data Analysis
* Business Insight Generation



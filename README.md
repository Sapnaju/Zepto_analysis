# Zepto Product Analysis using PostgreSQL

## Overview

This project analyzes a Zepto grocery products dataset using PostgreSQL. The objective is to perform data cleaning, exploratory data analysis (EDA), and business-focused analytics using SQL queries.

The dataset contains product information such as category, product name, MRP, discounts, stock availability, quantity, and weight. Through SQL, valuable business insights are extracted to support inventory management, pricing strategies, and revenue estimation.

---

## Project Objectives

* Create and manage a PostgreSQL database for product analysis.
* Clean and validate product data.
* Identify missing and inconsistent records.
* Analyze discounts, inventory, and product availability.
* Generate business insights using SQL queries.

---

## Dataset Information

The dataset includes the following fields:

| Column                 | Description                  |
| ---------------------- | ---------------------------- |
| sku_id                 | Unique product identifier    |
| category               | Product category             |
| name                   | Product name                 |
| mrp                    | Maximum Retail Price         |
| discountpercent        | Discount percentage          |
| availablequantity      | Available stock quantity     |
| discountedsellingprice | Selling price after discount |
| weightingms            | Product weight in grams      |
| outofstock             | Stock status (True/False)    |
| quantity               | Product quantity             |

---

## Data Cleaning Performed

* Identified missing values across important columns.
* Detected products with invalid pricing (MRP = 0).
* Removed invalid records.
* Converted prices from paise to rupees for accurate analysis.

---

## Analysis Performed

### Data Exploration

* Total number of products.
* Sample data inspection.
* Unique product categories.
* Stock availability analysis.
* Duplicate product name detection.

### Business Analysis

* Top 10 products with the highest discounts.
* High-value products currently out of stock.
* Estimated revenue by category.
* Premium products with low discounts.
* Top 5 categories with the highest average discounts.
* Best-value products based on price per gram.
* Product weight segmentation (Low, Medium, Bulk).
* Total inventory weight by category.

---

## Key SQL Concepts Used

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* DISTINCT
* CASE Statements
* Aggregate Functions (COUNT, SUM, AVG)
* Data Cleaning (DELETE, UPDATE)
* Sorting and Filtering

---

## Results

The analysis provides insights such as:

* Categories generating the highest estimated revenue.
* Products offering the largest discounts.
* Out-of-stock products with high market value.
* Best value-for-money products based on weight and price.
* Inventory distribution across categories.

These insights can help improve pricing strategies, inventory planning, and product management decisions.

---

## Technologies Used

* PostgreSQL
* SQL
* GitHub
* CSV/Excel Dataset

---

## How to Run

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/zepto-product-analysis.git
```

### 2. Create Database

```sql
CREATE DATABASE zepto_analysis;
```

### 3. Import Dataset

Import the dataset into PostgreSQL using pgAdmin or PostgreSQL COPY command.

### 4. Run SQL Script

Execute the SQL script provided in the repository.

### 5. View Results

Run the analysis queries and review the generated insights.

---

## Project Outcome

This project demonstrates practical SQL skills including database creation, data cleaning, exploratory analysis, and business intelligence reporting using PostgreSQL.

It is designed as a beginner-to-intermediate level Data Analytics portfolio project suitable for showcasing SQL proficiency on GitHub and in technical interviews.
# Zepto_analysis
Zepto_analysis is a  SQL Data Analysis Project where we completely worked on sql queries

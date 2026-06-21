# Swiggy Sales & Restaurant Analytics Dashboard

## Short Description

An end-to-end Power BI analytics solution built on Swiggy order and restaurant data. The dashboard provides business-level performance monitoring, restaurant performance analysis, state-wise sales insights, and location-level exploration through interactive visualizations and drill-down capabilities.

---

## Tech Stack

- Power BI
- SQL
- Power Query
- DAX
- Data Modeling
- Data Visualization

---

## Data Source

Swiggy Restaurant & Order Dataset

The dataset contains restaurant information, orders, sales, ratings, food categories, geographical hierarchy (State → City → Location), and pricing details used for business and performance analysis.

---

## Features / Highlights

### Business Overview Analysis

- Total Orders Tracking
- Total Sales Analysis
- Average Sales per Order
- Rating Performance Monitoring
- Day-wise Rating Trend Analysis
- Week-wise Rating Trend Analysis
- Month-wise Rating Trend Analysis
- Food Type Performance Comparison
- Restaurant Rating Analysis
- State-wise Rating Analysis

### Restaurant Analytics

- Top 10 Restaurants by Orders
- Top 10 Restaurants by Sales
- Top 10 Restaurants by Average Sales Order
- Top 10 Restaurants by Average Rating
- Dynamic filtering by:
  - Month
  - State
  - City
  - Price Range
  - Food Type
  - Week Day

### State Analytics

- Top 10 States by Orders
- Top 10 States by Sales
- Top 10 States by Average Sales Order
- Top 10 States by Average Rating
- State-wise Performance Benchmarking
- Geographic Performance Comparison

### Drill-Down Navigation

- State → City → Location Hierarchy
- State → City → Location → Restaurant Hierarchy
- Interactive Exploration of Restaurant Coverage

---

## Business Impact & Insights

- Identified top-performing restaurants based on orders and revenue contribution.
- Enabled comparison of restaurant performance using sales, ratings, and average order value metrics.
- Highlighted high-performing states contributing maximum sales and orders.
- Provided visibility into customer rating behavior across restaurants and regions.
- Enabled management to analyze food category preferences through Veg vs Non-Veg performance tracking.
- Improved decision-making through interactive filtering and location-level drill-down analysis.

---

## Dashboard Screenshots

### Landing Page

![Landing Page](Images/1.%20Landing%20Page.png)

### Business Overview

![Business Overview](Images/2.%20Business%20Overview.png)

### Restaurant Analytics

![Restaurant Analytics](Images/3.%20Restaurant%20Analytics.png)

### State Analytics

![State Analytics](Images/4.%20State%20Analytics.png)

---

## Dataset

Dataset files are available in the Dataset folder:

- dim_date.csv
- dim_dish.csv
- dim_location.csv
- dim_restaurant.csv
- fact_orders.csv

---

## SQL Scripts

SQL scripts are available in the SQL folder:

- data_preparation.sql

Includes:
- Schema Creation
- Data Cleaning
- Data Transformation
- Date Dimension Creation
- Food Type Classification Logic

---

## Power BI Report

Power BI report is available in the PBIX folder:

- Swiggy_Sales_Analytics_Dashboard.pbix

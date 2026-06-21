# Swiggy Sales & Restaurant Analytics Dashboard

## Short Description / Purpose

End-to-end restaurant and sales analytics solution developed using Power BI and SQL. The dashboard analyzes Swiggy restaurant and order data to uncover sales trends, restaurant performance, customer rating patterns, food category preferences, and state-wise business insights.

## Tech Stack

The dashboard was built using the following tools and technologies:

* Power BI : Data visualization and reporting
* SQL : Data extraction and transformation
* Power Query : Data transformation and cleaning
* DAX (Data Analysis Expressions) : Measures and business calculations
* Data Modeling : Relationship management and analytical structure

## Data Source

The dashboard uses a Swiggy restaurant and order dataset containing:

* Restaurant information
* Order and sales data
* Customer ratings
* Food category details
* Geographic hierarchy (State, City, Location)
* Price range information
* Restaurant performance metrics

## Features / Highlights

### Business Problem

Food delivery platforms generate large volumes of restaurant and order data every day. However, identifying top-performing restaurants, understanding customer preferences, tracking sales performance, and evaluating regional business growth can be challenging without a centralized analytics solution.

### Goal of the Dashboard

* Monitor sales performance
* Analyze restaurant performance
* Track customer rating trends
* Evaluate state-wise business performance
* Identify top-performing restaurants
* Support data-driven business decisions

### Walk Through of Key Visuals

#### Business Overview

* Total Orders
* Total Sales
* Average Sales Order Value
* Total Ratings
* Average Rating
* Day-wise Rating Trend
* Week-wise Rating Trend
* Month-wise Rating Trend
* Food Type Analysis (Veg vs Non-Veg)
* Restaurant Rating Analysis
* State-wise Rating Analysis

#### Restaurant Analytics

* Top 10 Restaurants by Orders
* Top 10 Restaurants by Sales
* Top 10 Restaurants by Average Sales Order
* Top 10 Restaurants by Average Rating
* Restaurant Performance Benchmarking
* Dynamic Filtering by:

  * Month
  * State
  * City
  * Price Range
  * Food Type
  * Week Day

#### State Analytics

* Top 10 States by Orders
* Top 10 States by Sales
* Top 10 States by Average Sales Order
* Top 10 States by Average Rating
* State-wise Performance Benchmarking
* Geographic Performance Comparison

#### Drill-Down Analysis

* State → City → Location Hierarchy
* State → City → Location → Restaurant Hierarchy
* Interactive Restaurant Coverage Exploration

### Business Impact & Insights

* Identified top-performing restaurants based on order volume and revenue contribution.
* Enabled comparison of restaurant performance using sales, ratings, and average order value metrics.
* Highlighted high-performing states contributing maximum sales and orders.
* Provided visibility into customer rating behavior across restaurants and regions.
* Analyzed food category preferences through Veg and Non-Veg performance tracking.
* Supported strategic business decisions through interactive filtering and location-level analysis.

## Dashboard Screenshots

### Landing Page

![Landing Page](Images/1.%20Landing%20Page.png)

### Business Overview

![Business Overview](Images/2.%20Business%20Overview.png)

### Restaurant Analytics

![Restaurant Analytics](Images/3.%20Restaurant%20Analytics.png)

### State Analytics

![State Analytics](Images/4.%20State%20Analytics.png)

## Dataset

The dashboard uses restaurant and order datasets containing:

* dim_date.csv
* dim_dish.csv
* dim_location.csv
* dim_restaurant.csv
* fact_orders.csv

Dataset files are available in the Dataset folder of this repository.

## SQL Scripts

The project includes SQL scripts used for data preparation and transformation.

* data_preparation.sql

  * Schema Creation
  * Data Cleaning
  * Data Transformation
  * Date Dimension Creation
  * Food Type Classification Logic

SQL files are available in the SQL folder of this repository.

## Power BI Report

The complete Power BI dashboard file is included in this repository.

* Swiggy_Sales_Analytics_Dashboard.pbix

The PBIX file can be downloaded to explore the report, data model, measures, and visualizations.

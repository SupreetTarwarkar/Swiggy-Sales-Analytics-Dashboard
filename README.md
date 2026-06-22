# Swiggy Sales & Restaurant Analytics Dashboard

## Short Description / Purpose

End-to-end restaurant and sales analytics solution developed using Microsoft Fabric, Power BI and SQL. The dashboard analyzes Swiggy restaurant and order data to uncover sales trends, restaurant performance, customer rating patterns, food category preferences, and state-wise business insights.

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
* Daily Order Trend
* Weekly Order Trend
* Monthly Order Trend
* Food Type Analysis (Veg vs Non-Veg)
* Top Restaurants by Orders
* Top States by Orders

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

* State-wise Orders Analysis
* State-wise Sales Analysis
* Average Sales Order Analysis
* Average Rating Analysis
* State → City → Restaurant Drill-Down
* Geographic Performance Benchmarking

#### Drill-Down Analysis

* State → City → Location Hierarchy
* State → City → Location → Restaurant Hierarchy
* Interactive Restaurant Coverage Exploration

### Business Impact & Insights

* Analyzed **197.43K orders** generating **₹53.01M sales** with an average order value of **₹268.51**.
* Identified **Karnataka** as the highest-performing state with **20.1K orders** and **₹5.46M sales**.
* Found that **Veg orders accounted for 71.66% (141.48K)** of total orders compared to **28.34% (55.95K)** Non-Veg orders.
* Identified **McDonald's (13.5K orders)** and **KFC (13.0K orders)** as the top order-generating restaurant brands.
* Tracked performance across **28 states** using sales, order volume, average order value, and customer rating metrics.
* Enabled restaurant and location-level benchmarking through interactive drill-down analysis.

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

Project Walkthrough Video

A complete walkthrough of the Microsoft Fabric and Power BI implementation can be viewed using the link below:

https://drive.google.com/file/d/106pDAdHWdq1CCn8hrlPOAlMqK4rjgzQB/view?usp=sharing

The walkthrough covers:

Lakehouse
Warehouse
SQL Transformations
Semantic Model
Power BI Dashboard Development

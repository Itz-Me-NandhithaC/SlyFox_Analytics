# Welcome to **SlyFox Analytics** 🦊📊

> Team Members: Nandhitha C, Roopasri S, Sandhiya N

# 🍴 Food Delivery Operations Analysis

## 📌 Project Overview

**Food Delivery Operations Analysis** is a data analytics project that analyzes food delivery orders to identify **delivery delays, cancellations, customer satisfaction, restaurant performance, and location-level operational issues**.

The project follows a real-world **Data Analyst workflow**, starting from raw data cleaning and transformation and continuing through SQL analysis, Excel reporting, web scraping, and an interactive Power BI dashboard.

The main goal is to answer:

> **What happened in the delivery operations, why does it matter, and what actions should the business take?**

---

## 🎯 Business Problem

The food delivery company is facing challenges such as:

- Delayed food deliveries
- Order cancellations
- Lower customer ratings
- Differences in restaurant performance
- Differences in delivery performance across locations
- Higher delivery times during peak hours

This project analyzes the available delivery data to identify operational problem areas and provide **data-driven recommendations** for improving delivery performance and customer satisfaction.

### Key Business Questions

1. Which restaurants receive the most orders?
2. Which locations experience the highest delivery delays?
3. Which restaurants have the highest cancellation rates?
4. Does delivery time affect customer ratings?
5. Which restaurants perform well overall?
6. Which two restaurants or locations should management prioritize for improvement?

---

## 📊 Dataset

**Dataset:** Kaggle Restaurant Delivery Orders Dataset

https://www.kaggle.com/datasets/kbrakssa/restaurant-delivery-orders-dataset

The dataset contains:

- **10,000 orders**
- **10 cities**
- **10 restaurants**
- **6 states**
- Date range: **November 1, 2024 – April 29, 2025**

### Important Columns

| Column | Description |
|---|---|
| `order_id` | Unique order identifier |
| `order_time` | Time when the order was placed |
| `delivery_time` | Time when the order was delivered |
| `delivery_duration_min` | Delivery duration in minutes |
| `city` | Delivery city |
| `state` | State of the delivery location |
| `latitude` | City latitude |
| `longitude` | City longitude |
| `restaurant` | Restaurant associated with the order |
| `is_canceled` | Indicates whether the order was cancelled |
| `cancel_reason` | Reason for cancellation |
| `customer_rating` | Customer rating |
| `Delivery_Status` | Fast, Normal, or Delayed |

---

# 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| 🐍 Python | Data loading and processing |
| 🐼 Pandas | Data cleaning, transformation and analysis |
| 🌐 BeautifulSoup | Web scraping external city information |
| 🗄️ PostgreSQL / SQL | Business queries and data analysis |
| 📊 Microsoft Excel | Pivot Tables, formulas, formatting and charts |
| 📈 Power BI | Interactive business dashboard |
| 📓 Jupyter Notebook | Python development and analysis |

---

# 🔄 Project Workflow

```text
Raw Dataset
     ↓
Python + Pandas
     ↓
Data Cleaning & Transformation
     ↓
Exploratory Data Analysis
     ↓
BeautifulSoup Web Scraping
     ↓
Cleaned Dataset
     ↓
PostgreSQL / SQL Analysis
     ↓
Excel Business Analysis
     ↓
Power BI Dashboard
     ↓
Business Insights
     ↓
Recommendations
```

---

# 🧹 Data Cleaning & Preparation

Python and Pandas were used to prepare the dataset for analysis.

### Major cleaning steps

- Loaded the raw CSV dataset using Pandas.
- Inspected rows, columns and data types.
- Checked for missing values.
- Checked for duplicate records.
- Converted date/time columns to appropriate datetime formats.
- Validated delivery duration and delivery timestamps.
- Examined cancellation-related fields.
- Handled missing values where required.
- Created a new `Delivery_Status` column.

### Delivery Status Classification

| Delivery Duration | Status |
|---|---|
| ≤ 30 minutes | Fast |
| 31–45 minutes | Normal |
| > 45 minutes | Delayed |

The cleaned dataset was exported as:

```text
cleaned_food_delivery.csv
```

---

# 🌐 Web Scraping

BeautifulSoup was used to demonstrate collecting additional external information from a public city-related webpage.

### Process

```text
Requests
   ↓
Public Web Page
   ↓
BeautifulSoup
   ↓
HTML Table
   ↓
Extract Records
   ↓
Pandas DataFrame
   ↓
CSV
```

The scraping component was included to satisfy the project's external-data collection requirement.

---

# 🗄️ SQL Analysis

PostgreSQL / SQL was used to answer the five required business questions.

### Query 1 – Top 5 Restaurants by Order Count

Identifies the restaurants receiving the highest number of orders.

### Query 2 – Average Delivery Time by Location

Compares average delivery performance across different cities.

### Query 3 – Cancellation Rate by Restaurant

Identifies restaurants with higher cancellation rates.

### Query 4 – Customer Rating by Delivery Performance

Compares average customer ratings for:

- Fast
- Normal
- Delayed

### Query 5 – Best Performing Restaurants

Identifies restaurants with:

- At least 20 orders
- Good customer ratings
- Lower delivery times

The SQL analysis uses concepts such as:

```text
SELECT
WHERE
GROUP BY
HAVING
ORDER BY
COUNT()
AVG()
CASE WHEN
```

---

# 📊 Excel Analysis

Excel was used for quick business analysis and reporting.

### Pivot Tables

**Pivot Table 1:** Orders by Restaurant

**Pivot Table 2:** Delivery Status by Location

**Pivot Table 3:** Average Delivery Time by Restaurant

### Excel Features Used

- Pivot Tables
- Formulas
- Conditional Formatting
- Sorting and filtering
- Charts
- Business reporting

A chart comparing **Fast vs Normal vs Delayed** deliveries was also created to communicate delivery performance clearly.

---

# 📈 Power BI Dashboard

A one-page interactive dashboard titled:

## **Delivery Operations Performance Dashboard**

was created to provide management with a quick overview of delivery operations.

### Key Performance Indicators

- **Total Orders:** 10,000
- **Completed Orders:** 8,961
- **Cancellation Rate:** 10.39%
- **Average Delivery Time:** ~49.37 minutes
- **Average Customer Rating:** ~3.92/5
- **Delayed Rate among Completed Orders:** ~53.97%

### Dashboard Visualizations

The dashboard focuses on useful business information such as:

- Orders by Location
- Average Delivery Time by Restaurant
- Delivery Status Distribution
- Cancellation Rate by Restaurant
- Customer Rating vs Delivery Performance
- Delivery Performance by Time
- Location-level performance

### Interactive Filters

Users can filter the dashboard by:

- Location
- Restaurant
- Delivery Status

The dashboard is designed so that each visualization answers a specific business question rather than adding unnecessary charts.

---

# 🔍 Key Findings

## 1. High Cancellation Rate

Out of **10,000 orders**, **1,039 orders were cancelled**.

This represents a cancellation rate of:

**10.39%**

The remaining **8,961 orders were completed**.

---

## 2. Delivery Delays Are a Major Problem

Among completed orders:

- Average delivery time: **~49.37 minutes**
- Median delivery time: **47 minutes**
- Delivery range: **20–90 minutes**
- Delayed completed orders: **4,836**
- Delayed rate among completed orders: **~53.97%**

More than half of completed deliveries took more than 45 minutes.

---

## 3. Delivery Speed Is Strongly Associated with Customer Satisfaction

Average customer ratings were:

| Delivery Status | Average Rating |
|---|---:|
| Fast | **4.75/5** |
| Normal | **4.48/5** |
| Delayed | **3.36/5** |

The analysis found a strong negative association between delivery duration and customer rating, with a correlation of approximately **-0.90**.

This suggests that longer delivery times are strongly associated with lower customer satisfaction.

---

## 4. Peak Hours Have Higher Delivery Times

Delivery performance becomes significantly slower during peak periods.

| Time | Average Delivery Time |
|---|---:|
| 12 PM | ~59.37 min |
| 1 PM | ~59.56 min |
| 6 PM | ~60.14 min |
| 7 PM | ~59.30 min |

These periods correspond to lunch and dinner peaks and may indicate pressure on restaurant preparation, delivery capacity, or dispatch operations.

---

## 5. Specific Cities and Restaurants Require Attention

### City Performance

**New York** had the highest delayed share at approximately **61.0%**.

**San Jose** had the lowest delayed share at approximately **56.3%**.

**San Antonio** had the highest cancellation rate at approximately **11.7%**.

### Restaurant Performance

**Pasta Place**

- Highest average delivery time: **~49.85 minutes**
- Highest delayed rate: **~60.7%**

**Bistro Belle**

- Highest restaurant cancellation rate: **~11.7%**

**The Gourmet Kitchen**

- Lowest average delivery time: **~48.68 minutes**

---

# 💡 Business Recommendations

## 1. Improve Peak-Hour Capacity

The company should increase operational capacity during **12–1 PM and 6–7 PM**.

Recommended actions:

- Increase delivery-partner availability.
- Improve restaurant staffing during peak periods.
- Optimize order dispatching.
- Monitor restaurant preparation queues.
- Allocate delivery resources based on demand.

---

## 2. Reduce Extreme Delivery Times

Management should focus on orders with the longest delivery durations.

The completed delivery duration reaches up to **90 minutes**, while approximately 10% of completed deliveries take **77 minutes or more**.

The company should investigate bottlenecks in:

- Food preparation
- Order assignment
- Dispatching
- Delivery operations

Reducing extreme delays can significantly improve customer experience.

---

## 3. Prioritize High-Risk Locations and Restaurants

Management should conduct detailed reviews of:

- **New York** – highest delayed share
- **San Antonio** – highest cancellation rate
- **Pasta Place** – slowest delivery performance
- **Bistro Belle** – highest cancellation rate

These areas should be monitored regularly using operational KPIs and Power BI reports.

---

# 📌 Overall Business Insight

The analysis indicates that **delivery delays are one of the most important operational issues**.

The strongest business pattern is the relationship between delivery time and customer satisfaction:

```text
Faster Delivery
      ↓
Higher Customer Rating
      ↓
Better Customer Experience
```

The analysis also shows that delivery performance becomes significantly worse during lunch and dinner peak periods.

Therefore, the biggest operational opportunity is not simply improving individual restaurants by a few minutes, but **improving peak-hour capacity and reducing the longest delivery times**.

---

# ⚠️ Data Limitations

The dataset is useful for demonstrating the Data Analyst workflow, but some limitations should be considered.

- Delivery Status is directly derived from delivery duration, so it should not be treated as an independent cause of delivery time.
- Important factors such as traffic, delivery distance, food preparation time, driver availability, weather, and order value are not available.
- Therefore, the analysis identifies **patterns and associations**, not definite causal relationships.
- The dataset appears highly structured, so the very strong relationship between delivery duration and customer rating should be interpreted carefully.
- Cancelled orders should ideally be treated separately from delivery-delay categories because cancelled orders do not have actual delivery completion times.

---

# 🎯 Final Objective

This project demonstrates a complete simplified **Data Analyst workflow**:

**Python & Pandas**  
→ Clean and transform raw data

**BeautifulSoup**  
→ Collect external information

**SQL**  
→ Answer business questions

**Excel**  
→ Perform quick analysis and reporting

**Power BI**  
→ Build an interactive management dashboard

**Business Analysis**  
→ Convert findings into actionable recommendations

The final outcome clearly demonstrates:

> **What happened?**  
> Delivery delays and cancellations are significant operational issues.

> **Why does it matter?**  
> Longer delivery times are strongly associated with lower customer ratings, especially during peak hours.

> **What should the business do?**  
> Improve peak-hour capacity, reduce extreme delivery times, and prioritize high-delay and high-cancellation locations and restaurants.

---

# 📁 Project Structure

```text
Food-Delivery-Operations-Analysis/
│
├── 📂 Python/
│   └── Analysis.ipynb
│
├── 📂 Data/
│   ├── delivery_data_with_restaurants.csv
│   ├── cleaned_food_delivery.csv
│   └── external_city_data.csv
│
├── 📂 Web_Scraping/
│   └── Web_scrap.ipynb
│
├── 📂 SQL/
│   └── food_delivery_analysis.sql
│
├── 📂 Excel/
│   └── food_delivery_analysis.xlsx
│
├── 📂 PowerBI/
│   └── Delivery_Operations_Performance_Dashboard.pbix
│
└── README.md
```

---

# 👩‍💻 Project Skills Demonstrated

- Data Cleaning
- Data Transformation
- Exploratory Data Analysis
- Python
- Pandas
- BeautifulSoup
- Web Scraping
- SQL
- PostgreSQL
- Excel
- Pivot Tables
- Data Visualization
- Power BI
- Dashboard Development
- KPI Analysis
- Business Analysis
- Data-Driven Decision Making

---

## ⭐ Conclusion

The Food Delivery Operations Analysis project demonstrates how raw operational data can be transformed into meaningful business insights using **Python, Pandas, BeautifulSoup, SQL, Excel, and Power BI**.

The analysis highlights **delivery delays, peak-hour operational pressure, cancellations, and customer satisfaction** as important areas for management attention.

The recommended strategy is to **improve peak-hour capacity, reduce extreme delivery times, and investigate high-risk cities and restaurants** to improve operational efficiency and customer experience.



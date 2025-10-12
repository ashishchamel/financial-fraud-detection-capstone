# 💳 Financial Fraud Detection Capstone Project

This repository presents an **end-to-end financial fraud detection pipeline** using **SQL, Python, and Tableau**.  
The project identifies fraudulent credit card transactions, analyzes behavioral and demographic patterns, and visualizes fraud risk insights across regions.

---

## 🎯 Project Overview

**Objective:**  
To detect and analyze fraudulent transactions from a large-scale financial dataset using SQL validation, Python-based exploratory data analysis and modeling, and Tableau dashboards for visualization.

**Key Deliverables:**
- SQL data checks and fraud statistics  
- Python-based EDA and model insights  
- Feature importance analysis  
- Tableau fraud dashboards and KPIs  

---

## 🧾 Dataset Overview

- **Dataset Files:**  
  - `Financial_Fraud_Detection_Datasets.zip`  
  - `FraudCapstone.xlsx`  
- **Records:** ~389,000 transactions  
- **Columns:** 24 features including `cc_num`, `amt`, `category`, `gender`, `job`, `city_pop`, `is_fraud`, etc.  
- **Target:** `is_fraud` (0 = legitimate, 1 = fraud)

📂 *Dataset Note:*  
Due to GitHub’s file size limits, the dataset is **not included** in this repository.  
Refer to the file `data/raw/DATA_ACCESS_NOTE.txt` for full details and an open-source alternative dataset.

---

## 🧩 Workflow Summary

### 🧮 Step 1 — SQL Data Validation  
Validated total transaction count, total frauds, and fraud percentage using MySQL.  
Query used: `sqlscript.sql`

<p align="center">
  <img src="docs/images/sql-fraud-summary.png" width="600"><br>
  <em>SQL summary showing total transactions, frauds, and fraud percentage</em>
</p>

---

### 📊 Step 2 — Python Exploratory Data Analysis (EDA)

Analyzed transaction patterns, amount distributions, and correlations between features.

<p align="center">
  <img src="docs/images/histogram-transactions.png" width="850"><br>
  <img src="docs/images/python-amt-boxplot.png" width="850"><br>
  <img src="docs/images/correlation-amt-citypop.png" width="850">
</p>

#### Insights:
- Transaction amounts show strong right-skew (majority small transactions).  
- Fraud cases correlate moderately with city population and amount.  
- Outlier detection reveals rare, high-value fraud transactions.

---

### ⚙️ Step 3 — Feature Engineering & Model Insights

<p align="center">
  <img src="docs/images/feature-importance.png" width="850"><br>
  <img src="docs/images/avg-amt-job.png" width="850"><br>
  <img src="docs/images/fraud-gender-category.png" width="850">
</p>

#### Observations:
- Top influencing features: **Transaction Amount**, **Job**, **Category**, **City Population**.  
- Certain occupations (e.g., executives) have higher average spend.  
- Minor gender differences in fraud likelihood were observed.

---

### 📈 Step 4 — Tableau Visualization & Dashboards

Developed interactive Tableau dashboards for fraud KPIs and geographic trends.

<p align="center">
  <img src="docs/images/tableau-kpi-dashboard.png" width="900"><br>
  <img src="docs/images/tableau-fraud-map.png" width="900"><br>
  <img src="docs/images/tableau-fraud-trend.png" width="900"><br>
  <img src="docs/images/top-states-transactions.png" width="900">
</p>

#### Dashboard Highlights:
- Overall fraud rate (~0.58%) and trend analysis  
- Fraud hotspots visualized on a geographic map  
- Top states by transaction volume and fraud proportion  

---

## 🧠 Key Insights

- **Fraud Rate:** 0.58% of all transactions  
- **High-risk categories:** Electronics, Jewelry  
- **Demographic correlation:** Executives and professionals had higher fraud probabilities  
- **Geographic distribution:** Certain states had higher fraud concentration zones  

---

## 🧰 Tools & Technologies Used

| Tool | Purpose |
|------|----------|
| **MySQL Workbench** | Data validation and SQL aggregation |
| **Python (Pandas, NumPy, Seaborn, Matplotlib)** | Data cleaning, feature analysis, and visualizations |
| **Scikit-learn** | Model building and feature importance extraction |
| **Tableau Desktop** | Dashboard creation & storytelling |
| **Excel** | Dataset verification and aggregation |

---

## 📂 Repository Structure

```
financial-fraud-detection-capstone/
│
├── README.md
│
├── data/
│ ├── raw/
│ │ ├── DATA_ACCESS_NOTE.txt
│ │ └── README_dataset_info.txt
│ └── processed/
│ └── README_placeholder.txt
│
├── docs/
│ ├── images/
│ │ ├── sql-fraud-summary.png
│ │ ├── python-amt-boxplot.png
│ │ ├── histogram-transactions.png
│ │ ├── correlation-amt-citypop.png
│ │ ├── feature-importance.png
│ │ ├── avg-amt-job.png
│ │ ├── fraud-gender-category.png
│ │ ├── tableau-kpi-dashboard.png
│ │ ├── tableau-fraud-map.png
│ │ ├── tableau-fraud-trend.png
│ │ └── top-states-transactions.png
│ │
│ └── report/
│ ├── Financial_Fraud_Detection_Report.pdf
│ └── Simplilearn_Project_Guidelines.pdf
│
└── src/
├── fraud_sql_queries.sql
├── fraud_detection_dashboard.twbx
├── prompts_used.txt
└── README_placeholder.txt
```
---

## 🧩 Author

**Ashish Chamel**  
Simplilearn Certified Data Science Capstone Project — 2025  

---

## 🏷️ Project Summary

> A comprehensive financial fraud detection pipeline integrating SQL data validation, Python exploratory analysis, and Tableau visual storytelling — turning transactional data into actionable fraud intelligence.

---

### ✅ End of Project Documentation  
*“Transforming complex financial data into clear fraud insights through analytics.”*



---

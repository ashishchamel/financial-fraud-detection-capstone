# 🕵️‍♂️ Financial Fraud Detection Capstone Project

This capstone project presents an **end-to-end financial fraud detection workflow** using **Excel, SQL, Python, and Tableau**.  
The goal is to analyze transaction data, detect fraud patterns, and visualize results through interactive dashboards.

---

## 🎯 Objective

To identify, analyze, and visualize fraudulent credit card transactions using multi-tool analytics:
- Validate and explore data using Excel  
- Derive fraud metrics via SQL queries  
- Perform statistical and visual EDA in Python  
- Design Tableau dashboards for monitoring and insights

---

## 🧩 Project Workflow

### 🪣 Step 1 — Excel: Data Validation & Preliminary Analysis  
*(Reference: Report Step 1D–1H)*

The dataset was initially explored in **Excel** to understand transaction trends, detect missing values, and visualize early insights.  
Pivot charts and correlation plots helped validate data accuracy and highlight regional and demographic patterns.

<p align="center">
  <img src="docs/images/histogram-transactions.png" width="800"><br>
  <em>Histogram of transaction amounts (Excel pivot chart)</em>
</p>

<p align="center">
  <img src="docs/images/fraud-gender-category.png" width="950"><br>
  <em>Fraud distribution by gender and product category</em>
</p>

<p align="center">
  <img src="docs/images/top-states-transactions.png" width="600"><br>
  <em>Top 3 states by transaction volume (TX, PA, NY)</em>
</p>

<p align="center">
  <img src="docs/images/correlation-amt-citypop.png" width="800"><br>
  <em>Correlation between transaction amount and city population</em>
</p>

<p align="center">
  <img src="docs/images/avg-amt-job.png" width="800"><br>
  <em>Average transaction amount by job category</em>
</p>

---

### 🧮 Step 2 — SQL: Fraud Summary & Validation  
*(Reference: Report Step 2, Pages 12–13)*

SQL queries were executed in **MySQL Workbench** to compute total transactions, total fraud cases, and the overall fraud rate.  
This ensured the dataset integrity before performing deeper analysis.

<p align="center">
  <img src="docs/images/sql-fraud-summary.png" width="750"><br>
  <em>SQL fraud summary: total transactions, total frauds, and fraud percentage (0.58%)</em>
</p>

---

### 🧑‍💻 Step 3 — Python: Exploratory Data Analysis (EDA)  
*(Reference: Report Step 3D–3N)*

EDA was conducted using **Pandas, Matplotlib, and Seaborn** to explore numeric distributions and outlier behavior for fraud detection.

<p align="center">
  <img src="docs/images/python-amt-boxplot.png" width="850"><br>
  <em>Boxplot of transaction amount vs fraud label</em>
</p>

**Key Findings:**  
- Fraudulent transactions cluster around higher transaction amounts.  
- Significant variance exists between fraudulent and genuine records.

---

### ⚙️ Step 4 — Feature Engineering & Model Insights  
*(Reference: Report Step 3N)*

Feature importance was analyzed to determine which variables most influence the likelihood of fraud.

<p align="center">
  <img src="docs/images/feature-importance.png" width="850"><br>
  <em>Feature importance visualization — identifying top predictors for fraud</em>
</p>

**Insights:**  
- Transaction amount (`amt`) and derived features (`log_amt`, `city_pop`) are major indicators.  
- Behavioral variables like `job` and `category` provide secondary predictive value.

---

### 📊 Step 5 — Tableau: KPI Dashboards & Visualization  
*(Reference: Report Step 4C–4E)*

Interactive **Tableau dashboards** were developed to present the findings visually, combining geographic, categorical, and temporal perspectives.

<p align="center">
  <img src="docs/images/tableau-kpi-dashboard.png" width="900"><br>
  <em>Fraud KPI dashboard summarizing transactions, fraud rate, and category breakdown</em>
</p>

<p align="center">
  <img src="docs/images/tableau-fraud-trend.png" width="900"><br>
  <em>Monthly fraud trend — visualizing fraud rate over time</em>
</p>

<p align="center">
  <img src="docs/images/tableau-fraud-map.png" width="900"><br>
  <em>Fraud heatmap across US states</em>
</p>

---

## 🧠 Tools & Technologies

| Tool | Purpose |
|------|----------|
| **Excel** | Preliminary data checks, pivot summaries, histograms, correlation |
| **MySQL Workbench** | Data aggregation and fraud summary |
| **Python (Pandas, Matplotlib, Seaborn)** | EDA and feature exploration |
| **Tableau Desktop** | KPI dashboards and geographic visualization |

---

## 📂 Repository Structure

```
📁 financial-fraud-detection-capstone/
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
│ │ ├── avg-amt-job.png
│ │ ├── correlation-amt-citypop.png
│ │ ├── feature-importance.png
│ │ ├── fraud-gender-category.png
│ │ ├── histogram-transactions.png
│ │ ├── python-amt-boxplot.png
│ │ ├── sql-fraud-summary.png
│ │ ├── tableau-fraud-map.png
│ │ ├── tableau-fraud-trend.png
│ │ ├── tableau-kpi-dashboard.png
│ │ └── top-states-transactions.png
│ │
│ └── report/
│ ├── Financial_Fraud_Detection_Report.pdf
│ └── Simplilearn_Project_Guidelines.pdf
│
├── src/
│ ├── fraud_sql_queries.sql
│ ├── fraud_detection_dashboard.twbx
│ ├── prompts_used.txt
│ └── README_placeholder.txt
│
└── LICENSE
```
---

## 📄 Dataset Note

The dataset used for this project is too large to host on GitHub.  
See `data/raw/DATA_ACCESS_NOTE.txt` for information on how to obtain the original data.

---

## 👤 Author

**Ashish Chamel**  
Simplilearn Capstone Project — 2025  

---

*“Turning transaction data into actionable fraud intelligence using analytics, automation, and visualization.”*

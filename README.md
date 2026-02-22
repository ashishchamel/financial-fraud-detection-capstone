# Financial Fraud Detection Capstone Project

End-to-end fraud analytics pipeline using **Excel, SQL, Python, and Tableau** — transforming raw transaction data into actionable fraud intelligence dashboards.

This project covers data validation, exploratory analysis, feature engineering, and business-focused visualization for identifying high-risk transactions and operational mitigation strategies.

---

## Overview

**Goal:** Detect and analyze fraudulent credit card transactions while delivering executive-ready dashboards.

### Key Capabilities

- Data validation & profiling (Excel)  
- Fraud metrics & aggregation (SQL / MySQL)  
- Exploratory Data Analysis & feature engineering (Python)  
- Risk segmentation & decision dashboards (Tableau)  

---

## Workflow Summary

Excel → SQL → Python → Tableau

---

## 1. Excel — Data Validation & Preliminary Analysis

Initial quality checks and descriptive analysis:

- Transaction amount distributions  
- Fraud patterns by gender & category  
- Top states by transaction volume  
- Correlation between city population and spend  
- Average spend by job category  

<p align="center">
  <img src="docs/images/histogram-transactions.png" width="700">
</p>

<p align="center">
  <img src="docs/images/fraud-gender-category.png" width="850">
</p>

<p align="center">
  <img src="docs/images/top-states-transactions.png" width="550">
</p>

<p align="center">
  <img src="docs/images/correlation-amt-citypop.png" width="700">
</p>

<p align="center">
  <img src="docs/images/avg-amt-job.png" width="700">
</p>

---

## 2. SQL — Fraud Summary & Aggregations

MySQL was used to compute:

- Total transactions  
- Fraud count & fraud rate  
- Category-level and geographic aggregations  

<p align="center">
  <img src="docs/images/sql-fraud-summary.png" width="700">
</p>

---

## 3. Python — Exploratory Data Analysis

Python (Pandas + Matplotlib + Seaborn) revealed:

- Fraud clusters around higher transaction amounts  
- Strong right-skew in transaction distribution  
- Temporal fraud concentration  

<p align="center">
  <img src="docs/images/python-amt-boxplot.png" width="750">
</p>

---

## 4. Feature Engineering & Model Insights

Key engineered signals:

- Log transaction amount  
- High-value transaction flags  
- Temporal features (hour, weekend)  
- Merchant behavior aggregates  

<p align="center">
  <img src="docs/images/feature-importance.png" width="750">
</p>

### Top Drivers

- Transaction amount  
- Merchant behavior  
- Temporal activity  
- Category patterns  

---

## 5. Tableau — Fraud Intelligence Dashboards

Three business-oriented dashboards convert analytics into decisions.

---

### Fraud Intelligence | Landscape Overview

<p align="center">
  <img src="docs/images/fraud-landscape-overview.png" width="900">
</p>

High-level monitoring of fraud volume, trends, and geography.

---

### Fraud Intelligence | Risk & Behavior Analysis

<p align="center">
  <img src="docs/images/risk-behavior-analysis.png" width="900">
</p>

Key findings:

- High-risk transactions show extreme fraud rates  
- Fraud peaks during late-night hours (22–23)  
- High-value transactions drive most losses  

---

### Fraud Intelligence | Mitigation & Business Impact

<p align="center">
  <img src="docs/images/mitigation-business-impact.png" width="900">
</p>

Recommended actions:

- Prioritize high-risk predictions  
- Apply stricter controls to large transactions  
- Increase late-night monitoring  
- Maintain frictionless experience for low-risk users  

---

## Tools & Technologies

| Tool | Usage |
|------|------|
| Excel | Validation & descriptive analysis |
| MySQL | Fraud aggregation |
| Python | EDA & feature engineering |
| Tableau | Executive dashboards |

---

## Repository Structure

```
financial-fraud-detection-capstone/
│
├── README.md
│
├── data/
│   ├── raw/
│   │   ├── DATA_ACCESS_NOTE.txt
│   │   └── README_dataset_info.txt
│   │
│   └── processed/
│       └── README_placeholder.txt
│
├── docs/
│   ├── images/
│   │   ├── avg-amt-job.png
│   │   ├── correlation-amt-citypop.png
│   │   ├── feature-importance.png
│   │   ├── fraud-gender-category.png
│   │   ├── histogram-transactions.png
│   │   ├── python-amt-boxplot.png
│   │   ├── sql-fraud-summary.png
│   │   ├── fraud-landscape-overview.png
│   │   ├── risk-behavior-analysis.png
│   │   └── mitigation-business-impact.png
│   │
│   └── report/
│       ├── Financial_Fraud_Detection_Report.pdf
│       └── Simplilearn_Project_Guidelines.pdf
│
├── src/
│   ├── fraud_sql_queries.sql
│   ├── fraud_detection_dashboard.twbx
│   ├── prompts_used.txt
│   └── README_placeholder.txt
│
└── LICENSE
```


---

## Dataset

Dataset is too large to host on GitHub.

Access instructions:

data/raw/DATA_ACCESS_NOTE.txt

---

## Author

**Ashish Chamel**

Tableau Public  
https://public.tableau.com/app/profile/ashish.chamel  

LinkedIn  
https://www.linkedin.com/in/ashish-chamel  

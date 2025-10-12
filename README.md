# 🕵️‍♂️ Financial Fraud Detection Capstone Project

This capstone project demonstrates an **end-to-end financial fraud detection pipeline** using **Excel, SQL, Python, and Tableau**.  
The analysis focuses on identifying fraudulent credit-card transactions, understanding behavioural drivers, and presenting interactive dashboards for business monitoring.

---

## 🎯 Objective

To detect and analyze fraudulent transactions using a multi-tool workflow:
- initial verification in Excel  
- aggregation & validation in SQL  
- EDA and feature analysis in Python  
- interactive dashboards in Tableau

---

## 🧩 Project Workflow

### 🪣 Step 1 — Excel: Preliminary Data Analysis  
*(Reference: Report Step 1D–1H)*

Initial checks and pivot summaries were performed in Excel to confirm structure, spot anomalies, and generate quick aggregates.

<p align="center">
  <img src="docs/images/top-states-transactions.png" width="700"><br>
  <em>Excel summary: top states by transaction count</em>
</p>

---

### 🧮 Step 2 — SQL: Transaction Validation & Fraud Summary  
*(Reference: Report Step 2, Pages 12–13)*

SQL was used to validate totals and compute the baseline fraud metric (total transactions, total frauds, fraud percentage).

<p align="center">
  <img src="docs/images/sql-fraud-summary.png" width="700"><br>
  <em>SQL summary: total transactions, total frauds, and fraud rate</em>
</p>

---

### 🧑‍💻 Step 3 — Python: Exploratory Data Analysis (EDA)  
*(Reference: Report Step 3D–3N)*

Extensive EDA was conducted in Python (Pandas, Matplotlib, Seaborn) to analyze distributions, outliers, and relationships between variables.

<p align="center">
  <img src="docs/images/histogram-transactions.png" width="850"><br>
  <em>Transaction distributions (raw and log-transformed), fraud boxplot, and scatter vs city population</em>
</p>

<p align="center">
  <img src="docs/images/python-amt-boxplot.png" width="850"><br>
  <em>Boxplot: transaction amount by fraud label</em>
</p>

<p align="center">
  <img src="docs/images/correlation-amt-citypop.png" width="850"><br>
  <em>Scatter: transaction amount vs city population</em>
</p>

**Key EDA findings:**  
- Amounts are right-skewed with notable outliers.  
- Fraud instances tend to occur at higher transaction amounts.  
- City population shows a mild positive correlation with transaction amounts.

---

### ⚙️ Step 4 — Feature Engineering & Model Insights  
*(Reference: Report Step 3N)*

Feature importance and SHAP-style interpretation were used to identify the features that most influence fraud predictions.

<p align="center">
  <img src="docs/images/feature-importance.png" width="850"><br>
  <em>Feature interactions and importance (SHAP-style) and job-based average amounts</em>
</p>

<p align="center">
  <img src="docs/images/avg-amt-job.png" width="850"><br>
  <em>Average transaction amount by job category</em>
</p>

<p align="center">
  <img src="docs/images/fraud-gender-category.png" width="850"><br>
  <em>Fraud by gender and category breakdown</em>
</p>

**Insights:**  
- `amt`, `log_amt`, `job`, and `city_pop` are among the top predictors.  
- Certain occupations show higher average spend and more outliers.

---

### 📊 Step 5 — Tableau: Dashboards & Storytelling  
*(Reference: Report Step 4C–4E)*

Final interactive dashboards were created in Tableau to present KPIs, geographic hotspots, and temporal trends.

<p align="center">
  <img src="docs/images/tableau-kpi-dashboard.png" width="900"><br>
  <em>Tableau KPI Dashboard — total txns, frauds, and fraud rate</em>
</p>

<p align="center">
  <img src="docs/images/tableau-fraud-trend.png" width="900"><br>
  <em>Tableau Trend — monthly fraud trend</em>
</p>

<p align="center">
  <img src="docs/images/tableau-fraud-map.png" width="900"><br>
  <em>Tableau Map — geographic fraud distribution</em>
</p>

---

## 🧠 Tools & Technologies

- **Excel** — initial checks and pivot summaries  
- **MySQL / SQL** — validation and aggregation (see `src/fraud_sql_queries.sql`)  
- **Python (Pandas, Matplotlib, Seaborn)** — EDA, feature engineering, visualization  
- **Scikit-learn** — modeling and feature importance  
- **Tableau Desktop** — dashboards (`src/fraud_detection_dashboard.twbx`)

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

The original dataset used in this capstone is large and not included in this repository. See `data/raw/DATA_ACCESS_NOTE.txt` for access instructions and alternatives.

---

## 👤 Author

**Ashish Chamel**  
Simplilearn Capstone Project — 2025

---

*“Turning transaction records into actionable fraud intelligence using a multi-tool analytics workflow.”*


# 🏦 Customer Intelligence (CI) Banking Dataset

## 📖 Overview
This project demonstrates the use of SQL for customer analytics and reporting in a banking context. It focuses on segmenting customers, analyzing transaction trends, and estimating customer lifetime value (LTV).

The project is designed as a **pure SQL portfolio example** — showing how business insights can be derived directly from relational data using SQL.

---

# 📊 Dataset Source

> _This project uses publicly available data from [Ahsan Habib - Banking-Dataset](https://github.com/ahsan084/Banking-Dataset); All database transformations, SQL schema, and queries are original work based on this database._

---

# 📈 Analytical Goals

- Identify customer segmentation by region, gender, and age
- Analyze monthly product revenue and transaction patterns
- Estimate customer lifetime value (LTV)
- Prepare data-ready outputs for BI dashboards

---

## 🏡 Project Structure (⚠️ WORK IN PROGRESS ⚠️)

```text
customer-intelligence-analytics-banking/
├── data/
│   └── banking_database.csv                                # Original database from the sources      
│   
├── schema/
│   └── customer_tables.sql (table structure)               # Query 0: the one to create tables in SQL from the .csv file
│
├── queries/
│   ├── 01_customer_segmentation.sql                        # Query 1: first customer segmentation by accounts
│   ├── 02_monthly_kpis.sql                                 # Query 2: Mothnly KPIs for reporting
│   └── 03_loan_analysis.sql                                # Query 3: Loan Analysis
│
├── powerbi/
│   ├── customer_intelligence_dashboard.pbix                # Power BI Dashboard
│   └── dashboard_screenshots/                              # Screenshots
│
├── results/
│   └── exported_reports.csv
│
├── LICENSE
└── README.md

```

---

## 🔗 Related Work

- [📊 My Data Journey Blog](https://dlpietro.github.io) — Weekly updates on my upskilling  
- [🧠 My Learning Roadmap](https://github.com/DLPietro/learning-roadmap) — Publicly tracked progress  
- [🎲 iGaming Analytics Dashboard](https://github.com/DLPietro/igaming-analytics-case-study) — KPI and players Retention (_Cohort, Church..._)
- [📈 Empirical Analysis: S&P 500 vs IVV vs Fidelity](https://github.com/DLPietro/thesis-backtesting-etf-spx) — Using R, GARCH, backtesting

---

## ⚡ Credits

[![GitHub Profile](https://img.shields.io/badge/GitHub-DLPietro-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/DLPietro)
[![Email](https://img.shields.io/badge/Email-dileopie-d14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:dileopie@gmail.com)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Pietro-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/pietrodileo)

> _© 2025 Pietro Di Leo — From Operations to Data. One Commit at a Time._
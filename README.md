# 🏦 Customer Intelligence (CI) Analytics Banking

## 📃 The Story

I spent more than 3 years in a custody company: executing orders and transactions, writing reports, copy-pasting in Excel files, and **repeating.** Then I realized that I was just executing orders, without _understanding_ how to create actionable insights for the company or its clients..

...So I'm building this project to show **what I can do**, stopping using spreadsheets and starting to ask real questions.

---

## 💥 What this project is about

Years of frustration distilled into one question:

> **"What if I took countless banking customers and actually _understood_ them using SQL?"**

This project does exactly that: no fluff, no tutorial copy-paste, but a **real analysis on the banking customers**.

# 📈 Analytical Goals

- **Segmenting customers** by behavior and financial health
- **Identifying loan portfolio risks** before they explode
- **Spotting credit card problems** early (_high utilization, defaults incoming_)
- **Finding the most valuable customers** and protect them
- **Building dashboards** that stakeholders can use

---

# 📊 Dataset Source

> _This project uses publicly available data from [Ahsan Habib - Banking-Dataset](https://github.com/ahsan084/Banking-Dataset); All database transformations, SQL schema, and queries are original work based on this database._

---

## 🏡 Project Structure (👷 WORK IN PROGRESS 👷)

```text
customer-intelligence-analytics-banking/
├── data/
│   ├── banking_dataset.csv                                 # Original dataset
│   ├── dataset_enhancer.ipynb                              # Python Script to enhance the dataset up to 100K customers
│   └── banking_database.csv                                # New dataset generated
│   
├── schema/
│   └── customer_tables.sql                                 # Dataset schema importing .csv file data
│
├── queries/                                                👷 WORK IN PROGRESS 👷
│   ├── 01_customer_segmentation.sql                        # Query 1: customers segmentation by accounts
│   ├── 02_loan_analysis.sql                                # Query 2: home, personal and auto loans
│   └── 03_credit_card.sql                                  # Query 3: type and credit usage
│
├── powerbi/                                                👷 WORK IN PROGRESS 👷
│   ├── customer_intelligence_dashboard.pbix                # Power BI Dashboard
│   └── dashboard_screenshots/                              # Screenshots
│
├── results/                                                👷 WORK IN PROGRESS 👷
│   ├── 01_customer_segmentation.csv                        # Output 1: customers segmentation
│   ├── 02_loan_analysis.csv                                # Output 2: loans
│   └── 03_credit_card.csv                                  # Output 3: credit cards
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
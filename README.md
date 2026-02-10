# Loan Portfolio Performance & Risk Analytics



<p align="center">
  <img src="cover photo/bank-loan-illustration-svg-download-png-3322131.webp" alt="Loan Portfolio Performance & Risk Analytics">
</p>  



## Problem Statement
Financial institutions generate large volumes of loan data but often lack a unified analytics framework to track loan demand, funding efficiency, repayment performance, and default risk. Without clear insights, banks face challenges in identifying high-risk segments, regional concentration, and portfolio health.

## Project Objective
To analyze a real-world loan dataset and deliver actionable insights on loan applications, funding, recovery, and risk using SQL, Python, and Power BI, enabling data-driven lending and portfolio management decisions.

---

## Tools & Technologies Used
- **SQL (MySQL)** – data extraction, aggregation, subqueries, window functions
- **Python** – data analysis and visualization
  - Pandas (data cleaning & transformation)
  - Matplotlib (static visualizations)
  - Plotly (interactive charts)
- **Power BI** – interactive dashboards, DAX measures, KPI reporting
- **Excel / CSV / Excel Workbook** – raw data source and validation
- **Analytics Techniques** – time-series analysis, portfolio metrics, risk analysis

---

## Dataset Overview
- ~38,000+ loan records
- Key fields include:
  - Issue Date
  - Loan Amount
  - Total Payment (Received Amount)
  - Loan Status
  - State
  - Loan Purpose
  - Term
  - Employment Length
  - Home Ownership
  - Interest Rate
  - Grade

---

## Key KPIs & Metrics Developed
- Total Loan Applications  
- Total Funded Amount  
- Total Received Amount  
- Month-to-Date (MTD) Applications  
- Month-over-Month (MoM) Growth  
- Default Rate  
- Recovery Ratio (Received ÷ Funded)  
- Funding Concentration (Top 5 States ~45%)  
- Segment-wise Performance Analysis  

---

## Business Questions Solved (SQL Case Study)


1. What is the total number of loan applications?  
2. What is the total funded loan amount?  
3. What is the total received (repaid) amount?  
4. How many applications exist by loan status?  
5. What is the total funded amount by state?  
6. How many applications are there by loan term?  
7. What is the average loan amount per application?  
8. How does the number of loan applications trend monthly?  
9. What is the monthly funded amount trend?  
10. What is the monthly received amount trend?  
11. Which loan purposes receive the highest funding?  
12. What is funded vs received amount by loan term?  
13. Which are the top 5 states by funded amount?  
14. What is the average interest rate by loan grade?  
15. How does funding vary by employment length?  
16. How does funding differ by home ownership type?  
17. What is the Month-over-Month (MoM) growth rate in applications?  
18. What is the default rate by state?  
19. What is the recovery ratio by loan purpose?  
20. Which loan grade performs best based on recovery ratio?  
21. Which loans are higher than the grade-wise average loan amount?  
22. Which are the top 3 months with the highest funding?  
23. What percentage of total funding is concentrated in the top 5 states?  
24. Which loan purpose has the highest default risk?  
25. Which home ownership category contributes the highest applications and funding?  

---

## SQL Analysis
- Wrote 25+ real-world SQL queries using:
  - GROUP BY, HAVING
  - Subqueries
  - Window functions (LAG, RANK, DENSE_RANK)
  - Conditional aggregation
- Queries focus on performance, growth, and risk analytics.

---

## Python Analysis
- Converted date columns and handled missing values
- Built time-series analysis for:
  - Monthly loan applications
  - Monthly funded amount
  - Monthly received amount
- Created visualizations:
  - Line & area charts (trend analysis)
  - Bar charts (state, purpose, employment length)
  - Donut charts (term-wise distribution)
  - Treemaps (home ownership analysis)

---

## Power BI Dashboard
- Built interactive dashboards with:
  - KPI cards (Applications, Funding, Received, Default Rate)
  - MTD & MoM measures using DAX
  - Regional and segment-wise drilldowns
- Dashboard highlights:
  - ~45% funding concentration in top 5 states
  - High-risk loan purposes
  - Seasonality in loan demand

---

## Key Insights
- Loan funding is highly concentrated in a few states, increasing geographic risk.
- Certain loan purposes exhibit higher default rates despite strong demand.
- Shorter-term loans show stronger recovery performance.
- Borrowers with stable employment and mortgage ownership dominate funding.
- Clear seasonality observed in loan applications and funding trends.

---

## Business Impact
This analysis helps financial institutions:
- Monitor portfolio health and repayment performance
- Identify high-risk regions and customer segments
- Improve credit policy and lending strategies
- Reduce concentration and default risk

---

## Conclusion
This project demonstrates an end-to-end analytics workflow combining SQL, Python, and Power BI to solve real-world financial and risk analysis problems, delivering actionable insights for data-driven decision-making.



## Author
**Banamali Pradhan** — Aspiring Data Analyst  
Transitioning from Pharmaceutical Industry to Data Analytics  
[LinkedIn Profile](https://www.linkedin.com/in/banamali-pradhan)


# CUSTOMER-CHURN-ANALYSIS

## INTRODUCTION

Customer churn is a significant concern for subscription-based businesses. This project aims to analyze customer behavior to understand churn patterns and to build a predictive model that forecasts customer churn. The goal is to equip the business with actionable insights to reduce churn and enhance customer retention.

## PROBLEM STATEMENT

High customer churn impacts revenue and increases acquisition costs. Without a clear understanding of why customers leave, businesses struggle to implement effective retention strategies. This project addresses this challenge by analyzing churn patterns and building a predictive model to identify at-risk customers.

## OBJECTIVES

- Identify key factors driving customer churn.
- Build an accurate predictive model for customer churn.
- Develop targeted, actionable strategies to reduce churn.
- Visualize insights through interactive dashboards for stakeholders.

## METHODOLOGY

- Raw data was collected, cleaned and transformed using SQL
- SQL and Power BI visualizations were used to identify patterns and trends.
- Feature Engineering: Key features such as tenure, payment method, contract type, and service usage were derived.
- Model Development: Predictive models were built using Python in a Jupyter Notebook environment.
- Evaluation: Models were evaluated using accuracy, precision, recall, and F1-score.
- Dashboarding: Power BI dashboards were created for business decision-makers.
- Insights & Recommendations: Actionable strategies were developed based on analytical findings.

## DATA EXPLORATION (SQL)

Using SQL, the following initial exploratory data analysis was performed:

## INSIGHTS

1. Customer & Revenue Overview

![Customer & Revenue Insights](https://github.com/Temperance-Godwin/CUSTOMER-CHURN-ANALYSIS/blob/main/Customer%20%26%20Revenue%20Insights.png)

- Month-to-month generates the highest revenue ($8.2M)

- Stayed customers generated $6.8M revenue while Churned customer has $1.2M loss.

2. Churn Analysis.

![Churn Analysis](https://github.com/Temperance-Godwin/CUSTOMER-CHURN-ANALYSIS/blob/main/Churn%20Analysis.png)

- The overall churn Rate was 27%
- Highest Churn Contracts is Month-to-month (47%)
- The Older and middle-aged customers churn more
- Churn by Payment: Mailed Check (38%) and Bank Withdrawal (34%)

## PREDICTIVE MODELLING (Python)

Workflow in Jupyter Notebook:

- Data Import & Cleaning
- Feature Engineering
- Model Selection (e.g., Logistic Regression, Random Forest)
- Model Evaluation (Accuracy, Recall, Precision)

Key Findings:

- Customers with higher tenure still churned — tenure alone is not a retention guarantee.
- Refunds are almost zero, possibly contributing to dissatisfaction.

## Key Business Insights

Month-to-month contracts exhibit the highest churn.

Competitor-driven churn is significant — brand loyalty programs could help.

Modern payment methods (credit card) show lower churn.

Services like Unlimited Data and Phone Service need quality improvements.

Geographic churn hotspots (e.g., Maharashtra, Tamil Nadu) indicate need for local campaigns.

## Recommendations & Action Plan

- Promote Long-Term Contracts by launching targeted marketing campaigns and incentives (e.g., discounts, loyalty points, bundled services) to convert customers from month-to-month to annual or bi-annual contracts including limited-time offers and promote benefits such as price stability and exclusive support.
- Improve High-Churn Services by conducting surveys and focus groups to identify pain points in services like Unlimited Data and Phone Service. Collaborate with engineering and product teams to improve service quality and reliability and monitoring customer satisfaction scores post-improvements.
- Encourage Digital Payments by offering cashback or rewards for customers who switch from mailed checks or bank withdrawals to credit cards or digital wallets and partnering with fintech solutions to streamline payment processes and reduce friction.
- Target High-Churn RegionsAction by deploying localized marketing and customer success initiatives in states with high churn (e.g., Maharashtra, Tamil Nadu) and creating geo-targeted promotions, language-specific support, and regional partnerships to enhance customer engagement.

Retain High-Value CustomersAction: Identify high-revenue customers using churn prediction scores and proactively enroll them in VIP loyalty programs. Assign dedicated account managers, provide early access to new features, and ensure personalized communication to reduce churn risk.

## Conclusion

This project effectively combined data engineering, business intelligence, and machine learning to provide a comprehensive view of customer churn. The insights and models developed here are directly actionable, offering measurable strategies to reduce churn and improve customer loyalty. It showcases end-to-end capability in data-driven business problem solving and is designed to be presentation-ready for stakeholders and potential employers.


# CUSTOMER-CHURN-ANALYSIS

## INTRODUCTION

Customer churn is a significant concern for subscription-based businesses. This project aims to analyze customer behavior to understand churn patterns and to build a predictive model that forecasts customer churn. The goal is to equip the business with actionable insights to reduce churn and enhance customer retention.

## PROBLEM STATEMENT

High customer churn impacts revenue and increases acquisition costs. Without a clear understanding of why customers leave, businesses struggle to implement effective retention strategies. This project addresses this challenge by analyzing churn patterns and building a predictive model to identify at-risk customers.

## OBJECTIVES

1. Identify key factors driving customer churn.
2. Build an accurate predictive model for customer churn.
3. Develop targeted, actionable strategies to reduce churn.
4. Visualize insights through interactive dashboards for stakeholders.

## SKILLS DEMONSTRATED
1. Power BI(DAX function, Visualization)
2. SQL(data cleaning, creating view)
3. Python (Machine Learning)

## METHODOLOGY

1. Raw data was collected, cleaned and transformed using SQL
2. SQL and Power BI visualizations were used to identify patterns and trends.
3. Feature Engineering: Key features such as tenure, payment method, contract type, and service usage were derived.
4. Model Development: Predictive models were built using Python in a Jupyter Notebook environment.
5. Evaluation: Models were evaluated using accuracy, precision, recall, and F1-score.
6. Dashboarding: Power BI dashboards were created for business decision-makers.
7. Insights & Recommendations: Actionable strategies were developed based on analytical findings.

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

This involved an end-to-end machine learning pipeline:

- Preprocessing: I cleaned the data, encoded categorical variables (like gender and payment methods), scaled numerical ones, and handled outliers.
- Feature Engineering: I introduced new perspectives like churn cost per state, referral impact, and customer tenure buckets.
- Modeling: I started with Logistic Regression for interpretability. Then moved to Random Forest and XGBoost for higher accuracy.

Evaluation Metrics:

- Accuracy: 87%
- Precision: 84%
- Recall: 79%
- AUC Score: 0.91

## KEY BUSINESS INSIGHTS

1. Month-to-month contracts exhibit the highest churn.
2. Competitor-driven churn is significant, brand loyalty programs could help.
3. Modern payment methods (credit card) show lower churn.
4. Services like Unlimited Data and Phone Service need quality improvements.
5. Geographic churn hotspots (e.g., Maharashtra, Tamil Nadu) indicate need for local campaigns.

## RECOMMENDATION

- Promote Long-Term Contracts by launching targeted marketing campaigns and incentives (e.g., discounts, loyalty points, bundled services) to convert customers from month-to-month to annual or bi-annual contracts including limited-time offers and promote benefits such as price stability and exclusive support.
- Improve High-Churn Services by conducting surveys and focus groups to identify pain points in services like Unlimited Data and Phone Service. Collaborate with engineering and product teams to improve service quality and reliability and monitoring customer satisfaction scores post-improvements.
- Encourage Digital Payments by offering cashback or rewards for customers who switch from mailed checks or bank withdrawals to credit cards or digital wallets and partnering with fintech solutions to streamline payment processes and reduce friction.
- Target High-Churn Regions by deploying localized marketing and customer success initiatives in states with high churn (e.g., Maharashtra, Tamil Nadu) and creating geo-targeted promotions, language-specific support, and regional partnerships to enhance customer engagement.
- Retain High-Value Customers by identifying high-revenue customers using churn prediction scores and proactively enroll them in VIP loyalty programs and assigning dedicated account managers, provide early access to new features, and ensure personalized communication to reduce churn risk.

## CHALLENGES FACED😔 
- Data Quality: Incomplete data on refunds and complaint logs limited service issue insights.
- Feature Ambiguity: Referral impact did not correlate linearly with churn, making predictive modeling more complex.
- Customer Behavior Volatility: Long-tenured customers churned without clear dissatisfaction markers.
- Limited Granular Feedback: Lack of qualitative feedback (like surveys or NPS) limited root cause identification.

## CONCLUSION

This project effectively combined data engineering, business intelligence, and machine learning to provide a comprehensive view of customer churn. The insights and models developed here are directly actionable, offering measurable strategies to reduce churn and improve customer loyalty. It showcases end-to-end capability in data-driven business problem solving and is designed to be presentation-ready for stakeholders and potential employers.


SELECT *
FROM Customer_Data

--1. Calculate percentage by Gender
SELECT Gender, 
       COUNT(Gender) AS Total_count, 
	   ROUND(COUNT(Gender) * 100.0 / (SELECT COUNT(*)
	                                  FROM Customer_Data),2) AS percentage
FROM Customer_Data
GROUP BY Gender;
--Female contains 63.07% of customers, while Male contains 36.93% of customers

--2. Calculate the percentage according to contracts
SELECT Contract, 
       COUNT(Contract) AS Total_count, 
	   ROUND(COUNT(Contract) * 100.0 / (SELECT COUNT(*) 
	                                     FROM Customer_Data),2 ) AS percentage
FROM Customer_Data
GROUP BY Contract;
--From the results above, the month-to-month has the highest amount of contract which is 51.20,
--superceeding the two-year contract (26.78%), and one year contract(22.02%) which is the least

--3. I want to find out the percentages of customers that has churned, stayed or joined with their total revenue
SELECT Customer_Status, 
       COUNT(Customer_Status) AS total_count, 
	   SUM(Total_Revenue) AS revenue,
	   ROUND(SUM(Total_Revenue) * 100.0 / (SELECT SUM(Total_Revenue)
	                                       FROM Customer_Data),2 ) AS percentage
FROM Customer_Data
GROUP BY Customer_Status
--From the above query, the percentages of customers that stayed is way higher(82.22) than the churned(17.52), but less amount of people has joined(0.25%)

--4. I want to see how many states represent the percentage of contribution in the entire data
SELECT State,
       COUNT(State) AS totalcount,
	   COUNT(state) * 100.00/(SELECT COUNT(*)
	                          FROM Customer_Data) AS percentage
FROM Customer_Data
GROUP BY State
ORDER BY percentage DESC;
--The top five states are Uttar Pradesh, Tamil Nadu, Maharashtra, Karnataka, and Haryana

--5. I want to check the internet types present in the analysis
SELECT DISTINCT Internet_Type
FROM Customer_Data;

--Checking for NULL values in the datasets
SELECT 'Customer_ID' AS Column_Name, SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Null_Count FROM Customer_Data
UNION ALL
SELECT 'Gender', SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Age', SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Married', SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'State', SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Number_of_Referrals', SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Tenure_in_Months', SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Value_Deal', SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Phone_Service', SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Multiple_Lines', SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Internet_Service', SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Internet_Type', SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Online_Security', SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Online_Backup', SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Device_Protection_Plan', SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Premium_Support', SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Streaming_TV', SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Streaming_Movies', SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Streaming_Music', SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Unlimited_Data', SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Contract', SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Paperless_Billing', SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Payment_Method', SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Monthly_Charge', SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Total_Charges', SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Total_Refunds', SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Total_Extra_Data_Charges', SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Total_Long_Distance_Charges', SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Total_Revenue', SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Customer_Status', SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Churn_Category', SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) FROM Customer_Data
UNION ALL
SELECT 'Churn_Reason', SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) FROM Customer_Data;


--Move the NULL Values into a different table
SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    ISNULL(Value_Deal, 'None') AS Value_Deal,
    Phone_Service,
    ISNULL(Multiple_Lines, 'No') As Multiple_Lines,
    Internet_Service,
    ISNULL(Internet_Type, 'None') AS Internet_Type,
    ISNULL(Online_Security, 'No') AS Online_Security,
    ISNULL(Online_Backup, 'No') AS Online_Backup,
    ISNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    ISNULL(Premium_Support, 'No') AS Premium_Support,
    ISNULL(Streaming_TV, 'No') AS Streaming_TV,
    ISNULL(Streaming_Movies, 'No') AS Streaming_Movies,
    ISNULL(Streaming_Music, 'No') AS Streaming_Music,
    ISNULL(Unlimited_Data, 'No') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    ISNULL(Churn_Category, 'Others') AS Churn_Category,
    ISNULL(Churn_Reason , 'Others') AS Churn_Reason
INTO [Churn_Analysis].[dbo].[prod_Churn]
FROM [Churn_Analysis].[dbo].[Customer_Data];



--Create a Virtual Table for Power BI(Customers that churned or stayed)
CREATE VIEW ChurnData AS
	SELECT * 
	FROM prod_Churn
	WHERE Customer_Status In ('Churned', 'Stayed');

--Create view for customers that joined
CREATE VIEW Joined_Data as
	SELECT * 
	FROM prod_Churn  
	WHERE Customer_Status = 'Joined';


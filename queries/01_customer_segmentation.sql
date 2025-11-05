-- Customer Segmentation by account type and balance
SELECT 
    account_type,
    COUNT(*) as total_customers,
    ROUND(AVG(account_balance)::numeric, 2) as avg_balance,
    ROUND(MIN(account_balance)::numeric, 2) as min_balance,
    ROUND(MAX(account_balance)::numeric, 2) as max_balance,
    COUNT(CASE WHEN account_balance > 5000 THEN 1 END) as high_value_customers
FROM customer_data
GROUP BY account_type;

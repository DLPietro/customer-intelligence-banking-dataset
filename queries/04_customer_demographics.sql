-- Customer age and city distribution
SELECT 
    city,
    COUNT(*) as num_customers,
    ROUND(AVG(age)::numeric, 1) as avg_age,
    COUNT(CASE WHEN account_type = 'Savings' THEN 1 END) as savings_accounts,
    COUNT(CASE WHEN account_type = 'Current' THEN 1 END) as current_accounts,
    ROUND(AVG(account_balance)::numeric, 2) as avg_balance
FROM customer_data
GROUP BY city
ORDER BY num_customers DESC
LIMIT 10;


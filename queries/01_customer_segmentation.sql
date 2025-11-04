-- Customer Segmentation by account type and engagement (temporaly)
SELECT 
    account_type,
    COUNT(DISTINCT customer_id) as total_customers,
    ROUND(AVG(account_balance), 2) as avg_account_balance,
    ROUND(MAX(account_balance), 2) as max_balance,
    ROUND(MIN(account_balance), 2) as min_balance,
    COUNT(CASE WHEN last_transaction_date >= CURRENT_DATE - INTERVAL '30 days' THEN 1 END) as active_last_30_days,
    ROUND(100.0 * COUNT(CASE WHEN last_transaction_date >= CURRENT_DATE - INTERVAL '30 days' THEN 1 END) / COUNT(*), 2) as activity_rate_pct
FROM customers
GROUP BY account_type
ORDER BY total_customers DESC;
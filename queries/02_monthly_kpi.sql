-- Monthly KPIs for Reporting (TEMPORALY)
SELECT 
    DATE_TRUNC('month', transaction_date)::DATE as month,
    COUNT(DISTINCT customer_id) as unique_customers,
    COUNT(*) as total_transactions,
    ROUND(SUM(transaction_amount), 2) as total_volume,
    ROUND(AVG(transaction_amount), 2) as avg_transaction_size,
    COUNT(CASE WHEN transaction_type = 'Deposit' THEN 1 END) as deposits,
    COUNT(CASE WHEN transaction_type = 'Withdrawal' THEN 1 END) as withdrawals,
    COUNT(CASE WHEN transaction_type = 'Transfer' THEN 1 END) as transfers
FROM transactions
GROUP BY DATE_TRUNC('month', transaction_date)
ORDER BY month DESC;
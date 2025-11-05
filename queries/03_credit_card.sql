-- Credit card utilization analysis
SELECT 
    card_type,
    COUNT(*) as num_cards,
    ROUND(AVG(credit_limit)::numeric, 2) as avg_credit_limit,
    ROUND(AVG(credit_card_balance)::numeric, 2) as avg_balance,
    ROUND(AVG(credit_card_balance / NULLIF(credit_limit, 0) * 100)::numeric, 2) as avg_utilization_pct,
    COUNT(CASE WHEN (credit_card_balance / NULLIF(credit_limit, 0)) > 0.8 THEN 1 END) as high_utilization_count
FROM customer_data
WHERE credit_limit IS NOT NULL
GROUP BY card_type;

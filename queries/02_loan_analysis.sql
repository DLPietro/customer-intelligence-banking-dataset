-- Loan status distribution and amounts
SELECT 
    loan_status,
    loan_type,
    COUNT(*) as num_loans,
    ROUND(AVG(loan_amount)::numeric, 2) as avg_loan_amount,
    ROUND(SUM(loan_amount)::numeric, 2) as total_loan_portfolio,
    ROUND(AVG(interest_rate)::numeric, 2) as avg_interest_rate
FROM customer_data
WHERE loan_amount IS NOT NULL
GROUP BY loan_status, loan_type
ORDER BY total_loan_portfolio DESC;

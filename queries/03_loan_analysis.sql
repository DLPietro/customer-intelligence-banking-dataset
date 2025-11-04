-- Loan portfolio analysis
SELECT 
    loan_status,
    COUNT(*) as total_loans,
    ROUND(SUM(loan_amount), 2) as total_loan_amount,
    ROUND(AVG(loan_amount), 2) as avg_loan_size,
    ROUND(AVG(interest_rate), 2) as avg_interest_rate,
    COUNT(CASE WHEN loan_type = 'Mortgage' THEN 1 END) as mortgages,
    COUNT(CASE WHEN loan_type = 'Auto' THEN 1 END) as auto_loans,
    COUNT(CASE WHEN loan_type = 'Personal' THEN 1 END) as personal_loans
FROM loans
GROUP BY loan_status
ORDER BY total_loan_amount DESC;
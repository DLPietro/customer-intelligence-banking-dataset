-- Customers with negative balance or high debt
SELECT 
    customer_id,
    first_name,
    last_name,
    account_balance,
    loan_amount,
    credit_card_balance,
    (loan_amount + credit_card_balance - account_balance) as total_debt_exposure,
    CASE 
        WHEN account_balance < 0 THEN 'Negative Balance'
        WHEN (loan_amount + credit_card_balance) > (account_balance * 2) THEN 'High Debt'
        ELSE 'Normal'
    END as risk_category
FROM customer_data
WHERE account_balance < 0 
   OR (loan_amount + credit_card_balance) > (account_balance * 2)
ORDER BY total_debt_exposure DESC
LIMIT 50;

-- Customer value segmentation and profitability indicators
SELECT 
    customer_id,
    first_name,
    last_name,
    email,
    age,
    account_type,
    city,
    account_balance,
    (account_balance + credit_card_balance) as total_liquid_assets,
    (loan_amount + credit_card_balance) as total_liabilities,
    (account_balance - (loan_amount + credit_card_balance)) as net_position,
    rewards_points,
    CASE 
        WHEN account_balance > 8000 AND loan_amount > 20000 THEN 'Tier-1: Premium'
        WHEN account_balance > 5000 AND (loan_amount > 10000 OR credit_card_balance > 3000) THEN 'Tier-2: High Value'
        WHEN account_balance > 2000 THEN 'Tier-3: Standard'
        ELSE 'Tier-4: At Risk'
    END as customer_segment,
    CASE 
        WHEN loan_status = 'Approved' AND account_balance > 1000 THEN 'Low Risk'
        WHEN loan_status = 'Approved' AND account_balance < 500 THEN 'High Risk'
        WHEN loan_status = 'Rejected' THEN 'Rejected Applicant'
        ELSE 'Neutral'
    END as credit_risk_profile,
    CASE 
        WHEN gender = 'Male' THEN 'Male'
        WHEN gender = 'Female' THEN 'Female'
        ELSE 'Other'
    END as demographics
FROM customer_data
WHERE account_balance IS NOT NULL
ORDER BY account_balance DESC
LIMIT 1000;

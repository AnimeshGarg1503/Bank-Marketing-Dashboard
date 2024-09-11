SELECT 
    education,
    marital,
    round(CAST(SUM(CASE WHEN personal_loan = 'yes' THEN 1 ELSE 0 END) AS FLOAT) / 
    NULLIF(SUM(CASE WHEN personal_loan = 'no' THEN 1 ELSE 0 END), 0),2) AS loan_to_no_loan_ratio
FROM 
    full_table
GROUP BY 
    education,
    marital;

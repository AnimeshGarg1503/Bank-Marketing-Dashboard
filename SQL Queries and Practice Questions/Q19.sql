SELECT 
    job,
    round((CAST(SUM(CASE WHEN housing_loan = 'yes' AND prev_camp_outcome = 'success' THEN 1 ELSE 0 END) AS FLOAT) / 
    COUNT(*)) * 100,2) AS percentage_of_success_with_housing_loan
FROM 
    full_table
GROUP BY 
    job;

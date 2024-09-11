SELECT 
    AVG(CASE WHEN prev_camp_outcome = 'success' THEN balance END) AS avg_balance_success,
    AVG(CASE WHEN prev_camp_outcome = 'failure' THEN balance END) AS avg_balance_failure
FROM 
    full_table;

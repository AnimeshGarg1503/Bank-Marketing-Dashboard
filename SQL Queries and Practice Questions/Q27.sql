SELECT *,
    SUM(balance) OVER (
        ORDER BY date_of_last_contact 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS cumulative_balance
FROM 
    full_table
ORDER BY 
    date_of_last_contact;

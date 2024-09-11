WITH ordered_data AS (
    SELECT 
        balance,
        ROW_NUMBER() OVER (ORDER BY balance) AS rn,
        COUNT(*) OVER () AS total_rows
    FROM 
        full_table
),

 third_quart as (
SELECT 
    balance AS third_quartile_balance
FROM 
    ordered_data
WHERE 
    rn = CEILING(0.75 * total_rows)
)

select *
from full_table 
where balance > (select * from third_quart)

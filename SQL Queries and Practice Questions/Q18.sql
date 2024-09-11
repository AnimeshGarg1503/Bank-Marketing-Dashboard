WITH stats AS (
    SELECT 
        COUNT(*) AS n,
        SUM(balance) AS sum_x,
        SUM(curr_camp_contacts) AS sum_y,
        SUM(balance * curr_camp_contacts) AS sum_xy,
        SUM(balance * balance) AS sum_x_squared,
        SUM(curr_camp_contacts * curr_camp_contacts) AS sum_y_squared
    FROM full_table
)
SELECT 
    round((n * sum_xy - sum_x * sum_y) / 
    SQRT((n * sum_x_squared - sum_x * sum_x) * (n * sum_y_squared - sum_y * sum_y)),4) AS pearson_correlation
FROM stats;

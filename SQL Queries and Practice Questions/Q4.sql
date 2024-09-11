select marital, round(avg(balance),2) as avg_balance
from full_table
group by marital
select Top 3 job, round(avg(balance),2) as avg_balance
from full_table
group by job
order by avg_balance desc
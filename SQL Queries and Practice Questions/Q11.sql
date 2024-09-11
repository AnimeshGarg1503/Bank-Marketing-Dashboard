select top 5 state, avg(balance) avg_balance
from full_table
group by State
order by avg_balance desc
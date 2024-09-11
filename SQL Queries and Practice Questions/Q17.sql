select top 1 state
from full_table
group by state
having max(personal_loan) = 'yes' 
order by sum(case when marital = 'married' then 1 else 0 end) desc
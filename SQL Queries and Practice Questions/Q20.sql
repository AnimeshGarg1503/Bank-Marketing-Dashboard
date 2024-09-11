select marital, [default], sum(balance)
from full_table
group by marital, [default]
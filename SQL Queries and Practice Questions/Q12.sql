select education, job, count(*) no_of_customers
from full_table
group by education, job
having max([default]) = 'yes'
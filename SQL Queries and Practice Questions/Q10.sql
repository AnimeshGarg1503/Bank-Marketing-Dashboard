select sum([duration(s)]) total_customers
from full_table
where housing_loan = 'yes' and personal_loan = 'yes'
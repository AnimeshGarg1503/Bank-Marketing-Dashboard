select count(*) no_of_customers
from full_table
where pdays < 0 and housing_loan = 'yes'
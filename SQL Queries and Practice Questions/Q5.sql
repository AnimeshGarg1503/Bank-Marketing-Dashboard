select count(*) as no_of_customers
from full_table
where state like 'New York' and personal_loan = 'yes'
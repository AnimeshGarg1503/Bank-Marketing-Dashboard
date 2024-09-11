select *
from full_table
where housing_loan like 'no' and personal_loan like 'yes'
order by balance desc
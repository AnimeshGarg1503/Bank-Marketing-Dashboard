select  
	round(100.0*count(*)/(select count(*) from full_table),2) as no_of_customers
from full_table
where education = 'tertiary' and [default] = 'yes'
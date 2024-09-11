select 
	state, 
	round(100.0*cast(sum(case when prev_camp_outcome like 'success' and prev_camp_contacts > 1 then 1 else 0 end) as float)/count(*),2) percentage_of_customers
from full_table
group by state
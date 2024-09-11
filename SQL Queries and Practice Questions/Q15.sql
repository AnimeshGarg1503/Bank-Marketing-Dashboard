select *
from full_table
where 
	datediff(year, date_of_last_contact, getdate()) > 1
	and 
	prev_camp_contacts > 1
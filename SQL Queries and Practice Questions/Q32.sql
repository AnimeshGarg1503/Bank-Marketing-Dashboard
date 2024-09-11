with highest_contact as (
	select max(curr_camp_contacts) as max_campaign
	from full_table
	where [default] like 'yes')

select job
from full_table
where curr_camp_contacts = (select * from highest_contact)


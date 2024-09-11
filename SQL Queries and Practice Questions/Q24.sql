select state, job, sum(curr_camp_contacts) as total_contacts_made
from full_table
group by state, job
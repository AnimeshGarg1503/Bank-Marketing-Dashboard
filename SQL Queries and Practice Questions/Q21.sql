with avg_balance as (
	select avg(balance) average_balance
	from full_table)

select *
from full_table
where curr_camp_contacts < 2 and balance > (select * from avg_balance)
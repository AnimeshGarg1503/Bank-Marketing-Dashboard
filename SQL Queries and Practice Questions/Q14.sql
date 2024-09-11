with avg_balance as (
	select avg(balance) average_balance
	from full_table)

select *
from full_table
where balance > (select * from avg_balance) and job like 'unknown'
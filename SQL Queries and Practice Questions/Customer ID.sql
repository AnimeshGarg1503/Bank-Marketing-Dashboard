select 
	ROW_NUMBER() over(order by (select null)) as cust_id,
	* 
from full_table


select 
	case
		when age >= 18 and age <= 30 then '18-30'
		when age > 30 and age <= 45 then '31-45'
		when age > 45 and age <= 60 then '46-60'
		when age > 60 then '60+'
	end age_category, 
	*
from full_table
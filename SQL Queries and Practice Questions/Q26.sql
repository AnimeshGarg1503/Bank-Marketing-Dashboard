select top 3 education 
from full_table
group by education
order by avg([duration(s)]) desc
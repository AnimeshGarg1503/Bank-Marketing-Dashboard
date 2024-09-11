select *
from full_table ft1 
join full_table ft2 
on ft1.state = ft2.state and ft1.job = ft2.job and ft1.marital != ft2.marital
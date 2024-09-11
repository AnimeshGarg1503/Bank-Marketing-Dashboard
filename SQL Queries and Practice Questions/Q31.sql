select *, rank() over(partition by state order by balance desc )
from full_table
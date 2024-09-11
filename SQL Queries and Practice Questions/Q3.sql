SELECT count(*) no_of_members
FROM full_table
group by marital
having marital like 'married'
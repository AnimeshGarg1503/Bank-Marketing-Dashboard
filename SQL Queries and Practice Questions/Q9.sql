SELECT *
FROM full_table
WHERE 
    DATEDIFF(month, date_of_last_contact, GETDATE()) > 6
    AND previous > 1;

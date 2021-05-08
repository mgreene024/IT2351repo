-- *******************************************************************************************
-- IT2351 Assignment 4 No.2 - Matthew Greene
-- A SELECT statement that returns from the customers table, using aliases.
-- *******************************************************************************************
SELECT 
    email_address,
    LENGTH(email_address) AS 'Length',
    POSITION('@' IN email_address) AS '@',
    LEFT(email_address, POSITION('@' IN email_address) - 1) AS 'Username',
    RIGHT(email_address, length(email_address) - POSITION('@' IN email_address)) AS 'Domain'
FROM customers;	
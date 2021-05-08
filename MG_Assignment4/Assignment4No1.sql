-- *******************************************************************************************
-- IT2351 Assignment 4 No.1 - Matthew Greene
-- A Select statement that returns from the list_price column using the FORMAT, CONVERT, and CAST function.
-- *******************************************************************************************
SELECT 
    list_price,
    FORMAT(list_price, 1) AS 'Formatted',
    CONVERT( list_price , SIGNED) AS 'Converted',
    CAST(list_price AS SIGNED) AS 'Casted'
FROM products;
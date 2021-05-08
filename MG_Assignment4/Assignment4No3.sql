-- *******************************************************************************************
-- IT2351 Assignment 4 No.3 - Matthew Greene
-- A SELECT statement that returns list_price, discount_percent and the calculated rounded discount amount.
-- *******************************************************************************************
SELECT 
	list_price,
	discount_percent,
	round(((discount_percent / 100) * list_price), 2) as 'discount_amount'
FROM products
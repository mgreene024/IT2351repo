-- *******************************************************************************************
-- IT2351 Assignment 4 No.4 - Matthew Greene
-- A SELECT statement that returns the list price, discount percent, and discount amount, from March 2018.
-- *******************************************************************************************
SELECT
	order_id,
	order_date,
	DATE_ADD(order_date, INTERVAL 2 DAY) AS 'approx_ship_date',
	ship_date,
	DATEDIFF(ship_date, order_date) AS 'days_to_ship'
FROM orders
WHERE MONTH(order_date) = 3
AND YEAR(order_date) = 2018;
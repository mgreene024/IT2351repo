-- *******************************************************************************************
-- IT2351 Assignment 3 No.2 - Matthew Greene
-- A query to count the number of orders in the orders table, and the sum of the ship value.
-- *******************************************************************************************
SELECT COUNT(order_id), SUM(tax_amount) FROM orders;
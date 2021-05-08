-- *******************************************************************************************
-- IT2351 Assignment 3 No.6 - Matthew Greene
-- SELECT statement that returns three columns: email_address, order_id,and the ordertotal for each customer.
-- *******************************************************************************************
SELECT 
	c.email_address, oi.order_id, 
	sum((oi.item_price - oi.discount_amount) * oi.quantity) as OrderTotal
FROM order_items oi JOIN orders o
ON oi.order_id = o.order_id
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.email_address, oi.order_id;
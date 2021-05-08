-- *******************************************************************************************
-- IT2351 Assignment 3 No.4 - Matthew Greene
-- Query to determine what the total quantity purchased for each product within each category
-- and using the with rollup operator and if and grouping functions.
-- *******************************************************************************************
SELECT 
	COALESCE(p.product_name, 'Total Quantity') AS 'Product Name',
	COALESCE(c.category_name, 'Grand Total') AS 'Category Name',
    COUNT(*) AS 'Quantity'
FROM products p 
JOIN order_items o
	ON p.product_id = o.product_id
JOIN categories c
	ON p.category_id = c.category_id
GROUP BY c.category_name, p.product_name WITH ROLLUP;
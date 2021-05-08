-- *******************************************************************************************
-- IT2351 Assignment 4 No.5 - Matthew Greene
-- A SELECT statement that uses the analytic functions to get the highest and lowest sales 
-- by product within each category.
-- *******************************************************************************************
SELECT 
	categories.category_name,
	products.product_name,
	SUM(order_items.quantity) AS total_sales,
    FIRST_VALUE(product_name) OVER(PARTITION BY categories.category_id ORDER BY order_items.quantity) AS highest_sales,
    LAST_VALUE(product_name) OVER(PARTITION BY categories.category_id ORDER BY order_items.quantity) AS lowest_sales
    FROM order_items, products, categories
WHERE products.product_id = order_items.product_id
and products.category_id = categories.category_id
GROUP BY order_items.product_id
ORDER BY total_sales DESC;
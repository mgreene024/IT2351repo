-- *******************************************************************************************
-- IT2351 Assignment 3 No.5 - Matthew Greene
-- Select statement using a subquery in a WHERE clause that uses the IN keyword.
-- *******************************************************************************************
SELECT DISTINCT category_name
FROM categories
WHERE category_id IN
	(SELECT category_id FROM products)
ORDER BY category_name;
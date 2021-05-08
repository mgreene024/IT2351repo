-- *******************************************************************************************
-- IT2351 Assignment 3 No.3 - Matthew Greene
-- Query to select products via join and ordered by expense.
-- *******************************************************************************************
SELECT c.category_name, COUNT(p.product_id) AS count, MAX(p.list_price)
FROM categories AS c
INNER JOIN products p ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY count DESC;
-- *******************************************************************************************
-- IT2351 Assignment 5 No.3 - Matthew Greene
-- A view using the guitar database named items_ordered that 
-- shows the item name, product name, item price and quantity for each item ordered.
-- *******************************************************************************************
CREATE VIEW items_ordered AS
SELECT product_name, item_price, quantity
FROM products p
JOIN order_items o
ON p.product_id = o.product_id
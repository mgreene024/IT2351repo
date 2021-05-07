-- *******************************************************************************************
-- IT2351 Assignment 2 Part 2a - Matthew Greene
-- Query to inner join items and order_details table selecting for order quantity, 
-- title, and artist sorted by title then artist.
-- *******************************************************************************************
SELECT order_details.order_qty, items.title, items.artist
FROM order_details
INNER JOIN items ON order_details.item_ID = items.item_ID
ORDER BY title,artist;

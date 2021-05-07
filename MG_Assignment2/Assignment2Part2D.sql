-- *******************************************************************************************
-- IT2351 Assignment 2 Part 2d - Matthew Greene
-- Update the last query to replace item_id with artist .
-- *******************************************************************************************
Select Orders.order_date, Orders.Customer_ID, Order_details.order_qty, items.artist
From Order_details
INNER JOIN Orders ON Orders.Order_id = Order_details.Order_ID
INNER JOIN items ON Order_details.item_id = items.item_ID;
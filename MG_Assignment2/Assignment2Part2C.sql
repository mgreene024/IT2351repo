-- *******************************************************************************************
-- IT2351 Assignment 2 Part 2c - Matthew Greene
-- Query to Output the detail for each order, in 
-- other words show the customer_id, order_date, item_id and order_qty for each order..
-- *******************************************************************************************
Select Orders.order_date, Orders.Customer_ID, Order_details.order_qty, Order_details.item_ID
From Order_details
INNER JOIN Orders ON Orders.Order_id = Order_details.Order_ID;
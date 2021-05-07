-- *******************************************************************************************
-- IT2351 Assignment 2 Part 2e - Matthew Greene
-- Add to the last query replacing customer_id with customer name.
-- *******************************************************************************************
Select CONCAT(customer_last_name , ' , ' , customer_first_name) as customer_full_name,
Orders.order_date, Order_details.order_qty, items.artist
From Orders
INNER JOIN Order_details ON Order_details.Order_ID = Orders.Order_id
INNER JOIN items ON Order_details.item_id = items.item_ID
INNER JOIN Customers ON Orders.customer_id = customers.customer_ID;
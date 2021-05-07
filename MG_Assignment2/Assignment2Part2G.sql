-- *******************************************************************************************
-- IT2351 Assignment 2 Part 2g - Matthew Greene
-- Query that outputs all the orders for customers in Ohio. Include the customer 
-- names and titles purchased in your output.
-- *******************************************************************************************
Select CONCAT(customer_last_name , ' , ' , customer_first_name) as customer_full_name, items.title
From Customers
INNER JOIN Orders ON Customers.customer_ID = Orders.customer_id
INNER JOIN order_details ON Orders.order_id = order_details.order_ID
INNER JOIN items ON Order_details.item_id = items.item_ID
WHERE customer_state="OH";
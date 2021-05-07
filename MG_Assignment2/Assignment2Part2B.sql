-- *******************************************************************************************
-- IT2351 Assignment 2 Part 2b - Matthew Greene
-- Query to inner join the customers and orders table and pull out the city, state, order_date, and 
--  ship_date, and the concat combined customer names into a full name alias. Sort by state, 
-- city, last_name, first name.
-- *******************************************************************************************
Select CONCAT(customer_last_name , ' , ' , customer_first_name) as customer_full_name, 
Customers.customer_city, Customers.customer_state, Orders.order_date, Orders.shipped_date
From Customers
INNER JOIN Orders ON Orders.Customer_ID = Customers.Customer_ID
ORDER BY customer_state, customer_city,customer_full_name;
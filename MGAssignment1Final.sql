use om;
-- *******************************************************************************************
-- IT2351 Assignment 1 Part 3a - Matthew Greene
-- Query to select fields from table and sort by two fields
-- *******************************************************************************************
SELECT customer_first_name, customer_last_name, customer_city, customer_state
FROM customers
ORDER BY customer_state ASC, customer_city ASC;
-- *******************************************************************************************
-- IT2351 Assignment 1 Part 3b - Matthew Greene
-- Query to select fields from table and sort by two fields and use WHERE 
-- *******************************************************************************************
SELECT title, artist, unit_price 
FROM items 
WHERE unit_price > 16
ORDER BY unit_price;
-- *******************************************************************************************
-- IT2351 Assignment 1 Part 3c - Matthew Greene
-- Query to create ALIASES
-- *******************************************************************************************
SELECT customer_first_name AS "First Name", customer_last_name AS "Last Name", customer_city AS "City", 
customer_state AS "State"
FROM Customers;
-- *******************************************************************************************
-- IT2351 Assignment 1 Part 3d - Matthew Greene
-- Query to create new difference sorted by it and Customer ID
-- *******************************************************************************************
SELECT customer_id, (shipped_date-order_date) AS "Days_to_Ship"
FROM orders
ORDER BY customer_id ASC, Days_to_Ship ASC;
-- *******************************************************************************************
-- IT2351 Assignment 1 Part G - Matthew Greene
-- Query to use concat function to show customer names as "Name" sorted by last name and first.
-- *******************************************************************************************
SELECT CONCAT(customer_last_name, " ", customer_first_name) AS "Name"
FROM Customers
ORDER BY "Name" ASC;
-- *******************************************************************************************
-- IT2351 Assignment 1 Part H - Matthew Greene
-- Query to use date format function. I couldn't get ORDER BY DATE to work so I found STR_TO_Date
-- *******************************************************************************************
SELECT customer_id, (shipped_date-order_date) AS "Days_to_Ship"
FROM orders
ORDER BY customer_id ASC, STR_TO_DATE("Days_to_Ship", '%m/%d/%Y') ASC;
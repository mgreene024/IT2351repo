-- *******************************************************************************************
-- IT2351 Assignment 2 Part 2h - Matthew Greene
-- Query that inserts a row into the customers table(data of your choice).
-- Also I took the liberty of showing it.
-- *******************************************************************************************
INSERT INTO Customers (customer_id, customer_first_name, customer_last_name, customer_address, customer_city, 
customer_state, customer_zip, customer_phone, customer_fax )
VALUES ('26', 'Shane', 'Bieber', '2401 Ontario St', 'Cleveland', 'OH', '44115', '2164204200', 'NULL');
SELECT * FROM Customers
WHERE customer_id=26
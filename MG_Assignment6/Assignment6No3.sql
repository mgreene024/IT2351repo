-- *******************************************************************************************
-- IT2351 Assignment 6 No.3 - Matthew Greene
-- A script that a script that creates and calls a stored procedure named insertCategory. 
-- a script that creates and calls a stored function named discount_price that calculates 
-- the discount price of an item in the order_items tableshould return the value of the discount price for that item.
-- *******************************************************************************************
DROP FUNCTION IF EXISTS discount_price;

DELIMITER //
CREATE FUNCTION discount_price(item_id_input INT) RETURNS DECIMAL(9,2)

BEGIN

DECLARE discount_price DECIMAL(9,2);

SELECT item_price-discount_amount
INTO discount_price
FROM order_items
WHERE item_id = item_id_input;

RETURN discount_price;

END//

DELIMITER ;
--
-- Test Case
--
SELECT discount_price(3);
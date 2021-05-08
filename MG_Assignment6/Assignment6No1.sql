-- *******************************************************************************************
-- IT2351 Assignment 6 No.1 - Matthew Greene
-- A script that creates a stored procedure named productcount that returns true/false if count>=20.
-- *******************************************************************************************
DROP PROCEDURE IF EXISTS productCount;
DELIMITER //

CREATE PROCEDURE productCount()
BEGIN

DECLARE products_count INT;

SELECT COUNT(*)
INTO products_count
FROM products;

IF products_count >= 20 THEN
    SELECT 'The number of products is greater than or equal to 20' AS message;
ELSE
    SELECT 'The number of products is less than 20' AS message;
END IF;

END//

DELIMITER ;

CALL productCount();
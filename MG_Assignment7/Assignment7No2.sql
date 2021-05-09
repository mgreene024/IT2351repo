-- *******************************************************************************************
-- IT2351 Assignment 7 No.2 - Matthew Greene
-- From the question we can see that “Vendor B.”  has been purchased by another “Vendor A.”.
-- This “Vendor A.” has also changed their name. We will need to reflect these changes in 
-- the database and here is how we will do that.
-- *******************************************************************************************
USE ap;

DROP PROCEDURE IF EXISTS test;

DELIMITER //

CREATE PROCEDURE test()
BEGIN
  DECLARE sql_error INT DEFAULT FALSE;
  
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    SET sql_error = TRUE;

  START TRANSACTION;
  
  UPDATE invoices
  SET vendor_id = 123
  WHERE vendor_id = 122;

  DELETE FROM vendors
  WHERE vendor_id = 122;

  UPDATE vendors
  SET vendor_name = 'FedUP'
  WHERE vendor_id = 123;

  IF sql_error = FALSE THEN
    COMMIT;
    SELECT 'The transaction was committed.';
  ELSE
    ROLLBACK;
    SELECT 'The transaction was rolled back.';
  END IF;
END//

DELIMITER ;

CALL test();
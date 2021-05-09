-- *******************************************************************************************
-- IT2351 Assignment 7 No.3 - Matthew Greene
-- This is a similar process to No.2, we have two table invoice_line_items and invoices. 
-- We are deleting an invoice so we have to make sure any related invoice_line_items are also 
-- deleted before we delete the invoice from the db.
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
  
  DELETE FROM invoice_line_items
  WHERE invoice_id = 114;

  DELETE FROM invoices
  WHERE invoice_id = 114;

  COMMIT;
  
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
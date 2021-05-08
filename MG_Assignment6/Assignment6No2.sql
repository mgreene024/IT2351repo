-- *******************************************************************************************
-- IT2351 Assignment 6 No.2 - Matthew Greene
-- A script that a script that creates and calls a stored procedure named insertCategory. 
-- This procedure should attempt to insert a new category named “Guitars” into the Categories table.
-- If successful it should display "1 row was insterted", if not "row was not inserted".
-- *******************************************************************************************
DROP PROCEDURE IF EXISTS insertCategory;
DELIMITER //

CREATE PROCEDURE insertCategory()
BEGIN

DECLARE insert_duplicate TINYINT DEFAULT FALSE;
SET insert_duplicate = TRUE;
DECLARE CONTINUE HANDLER FOR 1062
 
INSERT INTO categories(category_name) VALUES ('Flutes');

IF insert_duplicate = TRUE THEN
   SELECT 'Row was not inserted - duplicate entry.' AS message;
ELSE
	SELECT '1 row was inserted.' AS message;
END IF;

END//

DELIMITER ;

CALL insertCategory();
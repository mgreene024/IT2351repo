-- *******************************************************************************************
-- IT2351 Assignment 6 No.4 - Matthew Greene
-- An EVENT that would run once a year to determine products that have not been ordered during the year.
-- *******************************************************************************************
DROP EVENT IF EXIST products_not_ordered

DELIMITER //
CREATE EVENT products_not_ordered
ON SCHEDULE EVERY 1 YEAR
DO

BEGIN
	SELECT DISTINCT product_name
    FROM products p
    LEFT OUTER JOIN order_items oi
    ON p.product_id = oi.product_id
    LEFT JOIN orders o
    ON oi.order_id = o.order_id AND YEAR(o.order_date) < YEAR(CURDATE()) - 1;
END//

DELIMITER ;
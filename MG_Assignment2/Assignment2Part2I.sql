-- *******************************************************************************************
-- IT2351 Assignment 2 Part 2i - Matthew Greene
-- Query that updates the unit_price by 10% for all items with a unit_price > 17.
-- *******************************************************************************************
SET SQL_SAFE_UPDATES = 0;
UPDATE Items
SET unit_price=unit_price + (unit_price * 0.1)
WHERE items.unit_price>17;
SELECT * FROM Items
WHERE items.unit_price>17;
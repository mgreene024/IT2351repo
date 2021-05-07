-- *******************************************************************************************
-- IT2351 Assignment 2 Part 2f - Matthew Greene
-- Query putting all the titles with an order quantity over one.
-- *******************************************************************************************
Select items.title
From items
INNER JOIN Order_details ON Order_details.item_ID = items.item_id
WHERE order_qty >1;
-- *******************************************************************************************
-- IT2351 Assignment 4 No.6 - Matthew Greene
-- Create a view named order_item_productsthat returns columns from the Orders, Order_Items, and Products tables.Build your view in stages
-- *******************************************************************************************
CREATE OR REPLACE VIEW order_item_products AS
    SELECT 
        o.order_id,
        o.order_date,
        o.tax_amount,
        o.ship_date,
        product_name,
        oi.item_price,
        oi.discount_amount,
        (oi.item_price - oi.discount_amount) AS final_price,
        quantity,
        (oi.item_price - oi.discount_amount) * quantity AS item_total
    FROM
        orders o
            JOIN
        order_items oi ON o.order_id = oi.order_id
            JOIN
        products p ON oi.product_id = p.product_id;
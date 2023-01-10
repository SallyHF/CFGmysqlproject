
USE CharacterBox;
SELECT * FROM order_details;
SELECT* FROM products;
SELECT * FROM orders;

-- creating a view for purchases made during a special promotion that ran from 04-07-2022 to 10-07-2022
-- customers to receive special code for free gift if a single purchase is more than or equal to 500.00

CREATE VIEW promo_event
AS
SELECT c.customer_id, 
o.order_id, 
ROUND(SUM(od.detail_quantity*p.product_price),2) AS Total_Purchase -- rounding up due to datatype being FLOAT
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_details od
ON od.order_id = o.order_id
JOIN products p
ON p.product_id = od.product_id
WHERE o.order_date >= '20220704' AND o.order_date <= '20220710'
GROUP BY c.customer_id, o.order_id;

SELECT* FROM promo_event;

-- using a query to show only the customers with single purchase that met the criteria

SELECT* FROM promo_event
WHERE Total_Purchase >=500;


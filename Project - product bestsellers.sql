set @@global.sql_mode := concat('ONLY_FULL_GROUP_BY,', @@global.sql_mode);

USE CharacterBox;
SELECT * FROM Order_Details;
SELECT * FROM Products;
SELECT * FROM orders;

/*example query with subquery to extract data for analysis

Performing query with subquery to find the top selling products for each category (by quantity not total sales)*/

-- ROW_NUMBER() assign a ranking for each category by partitioning rows based on categories
-- good for enewsletter or for website, trends
SELECT * FROM 
	(-- first we input in the subquery to divide out the best sellers
		SELECT p.product_id, 
		p.product_name, 
		c.category_name, 
		SUM(od.detail_quantity) AS Total_Qty,
		ROW_NUMBER() 
		OVER 
		(PARTITION BY c.category_name ORDER BY COUNT(od.detail_quantity) DESC) AS `No#`
		FROM products p
		JOIN order_details od
		ON p.product_id = od.product_id
		JOIN product_categories c
		ON p.category_id = c.category_id
		GROUP BY p.product_id
	)
RNK -- after that in the main query, input how many bestsellers we want to rank
WHERE `No#` <=3; -- showing just top 3 in each category

-- utilise this to showcase bestsellers for week, month, annual

SELECT * FROM
	(
		SELECT p.product_id, 
		p.product_name, 
		c.category_name, 
		SUM(od.detail_quantity) AS Total_Qty, 
		ROW_NUMBER() 
		OVER 
		(PARTITION BY c.category_name ORDER BY COUNT(od.detail_quantity) DESC) AS `No#`
		FROM products p
		JOIN order_details od
		ON p.product_id = od.product_id
		JOIN product_categories c
		ON p.category_id = c.category_id
        JOIN orders o
        ON o.order_id = od.order_id
        WHERE o.order_date >= 20220704 AND o.order_date <= 20220710 -- weekly top 1 by category for the week
		GROUP BY p.product_id
	)
RNK
WHERE `No#` <=1;
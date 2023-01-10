USE CharacterBox;
SELECT* FROM Customers;
SELECT* FROM customer_addresses;
SELECT* FROM orders;
DROP PROCEDURE lastname_details

-- creating a stored procedure to view customer details by filtering with a parameter ie last name
DELIMITER //
CREATE PROCEDURE lastname_details (lastname VARCHAR(50))
BEGIN
	SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    ca.address_line1, 
    ca.address_line2, 
    ca.address_city, 
    ca.postal_code, 
    ca.address_country, 
    c.email, 
    c.mobile_no
	FROM customers c
    JOIN customer_addresses ca
    ON c.customer_id = ca.customer_id
    WHERE c.last_name = lastname;
END //

-- execute procedure
CALL lastname_details ('Taylor');

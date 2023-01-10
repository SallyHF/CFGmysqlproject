USE CharacterBox;

/*shows mailing list subscribers who have not made a first purchase 
including those who created customer accounts but have not made a purchase*/

SELECT signup_email AS promo_eligibility FROM mailing_list
WHERE signup_email NOT IN 
(
SELECT DISTINCT
su.signup_email
FROM mailing_list su
JOIN customers c
ON su.signup_email = c.email
JOIN orders o
ON o.customer_id = c.customer_id
WHERE c.email_promo = 'Y'
);

-- a stored function to show the above
DELIMITER //
CREATE FUNCTION promo_eligibility

(signup_email VARCHAR(50))
RETURNS VARCHAR(5)
DETERMINISTIC
BEGIN
    DECLARE promo_eligibility VARCHAR(5); -- name of function promo_eligibility
    IF signup_email NOT IN 
		(
			SELECT DISTINCT
			su.signup_email
			FROM mailing_list su
			JOIN customers c
			ON su.signup_email = c.email
			JOIN orders o
			ON o.customer_id = c.customer_id
			WHERE c.email_promo = 'Y'
		)
	THEN
	SET promo_eligibility = 'YES'; -- eliminates subscribers/account holders who had made a purchase
    
    ELSEIF signup_email IN 
		(
			SELECT DISTINCT
			su.signup_email
			FROM mailing_list su
			JOIN customers c
			ON su.signup_email = c.email
			JOIN orders o
			ON o.customer_id = c.customer_id
			WHERE c.email_promo = 'Y'
		) 
    THEN
	SET promo_eligibility = 'NO';
	END IF;
	RETURN (promo_eligibility);
END//signup_email
DELIMITER ;

-- execute the stored function - 20 yes
SELECT * FROM mailing_list;
SELECT signup_email AS subscribers, promo_eligibility(signup_email) AS promo_eligibility
FROM mailing_list;


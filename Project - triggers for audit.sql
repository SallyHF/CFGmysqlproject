USE CharacterBox;
SELECT* FROM mailing_list;
SELECT * FROM mailing_list_audit;

-- creation of table for an audit trail for mailing_list
CREATE TABLE mailing_list_audit
(
	ml_audit_id INT NOT NULL AUTO_INCREMENT,
	signup_id VARCHAR(50) NOT NULL,
    column_name VARCHAR(100),
    old_value VARCHAR(100),
    new_value VARCHAR(100),
    done_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (ml_audit_id)
);

SELECT * FROM mailing_list_audit;

-- a trigger that executes whenever a new record is created in mailing_list

DELIMITER //
CREATE TRIGGER mailing_list_create
AFTER INSERT
ON mailing_list FOR EACH ROW
BEGIN
	INSERT INTO mailing_list_audit 
		(signup_id, column_name, new_value) -- no old values, newly created
        VALUES
        (NEW.signup_id, 'signup_email', NEW.signup_email);
END //


-- creating a trigger that executes whenever there is an update of data in mailing_list


DELIMITER //
CREATE TRIGGER mailing_list_update
AFTER UPDATE
ON mailing_list FOR EACH ROW
BEGIN
	IF old.signup_email <> new.signup_email THEN -- if the old and new data don't match
		INSERT INTO mailing_list_audit 
		(signup_id, column_name, old_value, new_value)
        VALUES
        (NEW.signup_id, 'signup_email', OLD.signup_email, NEW.signup_email);
	END IF;
    END //
    

-- creating a trigger that shows deleting of record in mailing_list
DELIMITER //
CREATE TRIGGER mailing_list_delete
AFTER DELETE
ON mailing_list FOR EACH ROW
BEGIN
	INSERT INTO mailing_list_audit 
		(signup_id, column_name, old_value) -- no new values
        VALUES
        (OLD.signup_id, 'signup_email', OLD.signup_email);
END //





    
    











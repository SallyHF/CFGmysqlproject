USE characterbox;

-- testing triggers by inserting, updating, deleting data into mailing_list
SELECT* FROM mailing_list_audit;

-- creating new record in mailing_list
INSERT INTO Mailing_List
(signup_id, signup_email)
VALUES
('SU33', 'project@cfg.com');

-- let's check if it's reflected in the audit trail
SELECT* FROM mailing_list_audit;

-- updating the record in mailing_list
UPDATE mailing_list
SET signup_email = 'project@sql.com'
WHERE signup_email = 'project@cfg.com';

-- let's check if it's reflected in the audit trail
SELECT* FROM mailing_list_audit;

-- deleting the record from mailing_list
DELETE FROM mailing_list
WHERE signup_email = 'project@sql.com';


-- let's check if it's reflected in the audit trail
SELECT* FROM mailing_list_audit;





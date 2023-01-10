CREATE DATABASE Characterbox;

USE Characterbox;

-- tables for product management
CREATE TABLE Products
(
product_id VARCHAR(50) NOT NULL, -- primary key
product_name VARCHAR(100) NOT NULL,
product_desc VARCHAR(1000) NULL,
category_id VARCHAR(50) NOT NULL, -- foreign key 
product_price FLOAT NOT NULL, -- individual item not going to be >£1000.00
product_weight FLOAT NULL, -- individual item not going to be >1000.00kg
product_status INT NOT NULL
); -- other columns for real life eg:product_options, inventory, discount, thumbnail, image, shortdesc,cartdesc, updated, created

SELECT * FROM Products;

CREATE TABLE Product_Categories
(
category_id VARCHAR(50) NOT NULL, -- primary key
category_name VARCHAR(50) NULL
);

SELECT * FROM Product_Categories;

-- tables for customer management

CREATE TABLE Customers
(
customer_id VARCHAR(50) NOT NULL,  -- primary key
username VARCHAR(100) NOT NULL,
`password` VARCHAR(20) NOT NULL,
first_name VARCHAR(50) NOT NULL,
Last_name VARCHAR(50) NOT NULL,
mobile_no BIGINT NOT NULL,
email VARCHAR(50) NOT NULL,
dob DATE,
sms_promo CHAR(1) NOT NULL,
email_promo CHAR(1) NOT NULL
);
-- seperate table for customer address cos too many columns for customers

SELECT * FROM Customers;

CREATE TABLE Customer_Addresses
(
address_id VARCHAR(50) NOT NULL, -- primary key
customer_id VARCHAR(50) NOT NULL, -- foreign key
address_line1 VARCHAR(100) NOT NULL,
address_line2 VARCHAR(100),
address_city VARCHAR(50) NOT NULL,
postal_code VARCHAR(7) NOT NULL,
address_country VARCHAR(50) NOT NULL
);

SELECT * FROM Customer_Addresses;

CREATE TABLE mailing_list -- anyone can sign up without purchase or creating account
(
signup_id VARCHAR(50) NOT NULL, -- primary key
signup_email VARCHAR(50) NOT NULL
);

SELECT * FROM mailing_list;

-- tables for order management

CREATE TABLE Orders
(
order_id VARCHAR(50) NOT NULL, -- primary key
customer_id VARCHAR(50) NOT NULL, -- foreign key
order_date DATE NOT NULL, -- did not use time stamp cos everything is created on the same day
shipping_status INT
);

SELECT * FROM Orders;

CREATE TABLE Order_Details
(
detail_id VARCHAR(50) NOT NULL, -- primary key
order_id VARCHAR(50) NOT NULL, -- foreign key
product_id VARCHAR(50) NOT NULL, -- foreign key
detail_quantity INT
);

SELECT * FROM Order_Details;






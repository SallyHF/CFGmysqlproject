USE Characterbox;

-- add primary keys and foreign keys to product management tables
ALTER TABLE Products
ADD PRIMARY KEY (product_id);

ALTER TABLE Products
ADD FOREIGN KEY (category_id) REFERENCES Product_Categories (category_id);

ALTER TABLE Product_Categories
ADD PRIMARY KEY (category_id);

-- add primary keys and foreign keys to customer management tables

ALTER TABLE Customers
ADD PRIMARY KEY (customer_id);

ALTER TABLE Customer_Addresses
ADD PRIMARY KEY (address_id);

ALTER TABLE Customer_Addresses
ADD FOREIGN KEY (customer_id) REFERENCES Customers (customer_id);

ALTER TABLE mailing_list
ADD PRIMARY KEY (signup_id);

-- add primary keys and foreign keys to order management tables

ALTER TABLE Orders
ADD PRIMARY KEY (order_id);

ALTER TABLE Orders
ADD FOREIGN KEY (customer_id) REFERENCES Customers (customer_id);

ALTER TABLE Order_Details
ADD PRIMARY KEY (detail_id);

ALTER TABLE Order_Details
ADD FOREIGN KEY (order_id) REFERENCES Orders (order_id);

ALTER TABLE Order_Details
ADD FOREIGN KEY (product_id) REFERENCES Products (product_id);

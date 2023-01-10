USE Characterbox;

SELECT * FROM Products;

-- data for table products
INSERT INTO Products
(product_id, product_name, product_desc, category_id, product_price, product_weight, product_status)
VALUES
('P1', 'hello kitty witch', '20cm limited edition plush', 'C1', 40.00, 0.5, 1),
('P2', 'minion bob blue', 'colour changing mug', 'C2', 8.99, 0.6, 1),
('P3', 'minion giant bob', '70cm giant bob', 'C1', 50.99, 1, 1),
('P4', 'minion giant kevin', '70cm giant kevin', 'C1', 50.99, 1, 1),
('P5', 'minion giant dave', '70cm giant dave', 'C1', 50.99, 1, 1),
('P6', 'minion kevin purple', 'colour changing mug', 'C2', 8.99, 0.6, 1),
('P7', 'minion dave red', 'colour changing mug', 'C2', 8.99, 0.6, 1),
('P8', 'hello kitty pumpkin', '20cm limited edition plush', 'C1', 40.00, 0.55, 1),
('P9', 'hello kitty mermaid', '20cm limited edition plush', 'C1', 49.99, 0.54, 1),
('P10', 'hello kiity fairy', '30cm limited edition plush', 'C1', 60.99, 0.8, 1),
('P11', 'toki doki mermaid', '10cm plush', 'C1', 10.99, 0.3, 1),
('P12', 'toki doki narwhal', '30cm limited edition plush', 'C1', 39.99, 0.6, 1),
('P13', 'toki doki rock n roll', '30cm limited edition plush', 'C1', 39.99, 0.67, 1),
('P14', 'toki doki mermaid rainbow', 'mermaid with rainbow keychain', 'C3', 9.99, 0.1, 1),
('P15', 'toki doki narwhal rainbow', 'narwhal with rainbow keychain', 'C3', 9.99, 0.1, 1),
('P16', 'minion dave icecream', 'dave with icecream keychain', 'C3', 5.99, 0.03, 1),
('P17', 'minion bob banana', 'bob with banana keychain', 'C3', 5.99, 0.03, 1),
('P18', 'minion kevin tongue', 'cheeky face kevin keychain', 'C3', 5.99, 0.03, 1),
('P19', 'toki doki unicorm cupcake', '30cm limited edition plush', 'C1', 39.99, 0.6, 1),
('P20', 'disney belle castle', '15cm belle and beast with castle collectible figurine', 'C4', 100.00, 1.1, 1),
('P21', 'disney cinderella castle', '15cm cinderella and prince with castle collectible figurine', 'C4', 100.00, 1.1, 1),
('P22', 'disney frozen castle', '15cm elsa and olaf with castle collectible figurine', 'C4', 100.00, 1.1, 1),
('P23', 'disney frozen castle2', '15cm elsa and anna with castle collectible figurine', 'C4', 120.00, 1.15, 1),
('P24', 'BT21 cooky fuzzy', '20cm limited edition plush', 'C1', 49.99, 0.4, 1),
('P25', 'BT21 chimmy fuzzy', '20cm limited edition plush', 'C1', 49.99, 0.4, 1),
('P26', 'BT21 RJ fuzzy', '20cm limited edition plush', 'C1', 49.99, 0.4, 1),
('P27', 'BT21 tata fuzzy', '20cm limited edition plush', 'C1', 49.99, 0.4, 1),
('P28', 'BT21 koya fuzzy', '20cm limited edition plush', 'C1', 49.99, 04, 1),
('P29', 'BT21 shooky fuzzy', '20cm limited edition plush', 'C1', 49.99, 0.4, 1),
('P30', 'BT21 mang fuzzy', '20cm limited edition plush', 'C1', 49.99, 0.4, 1),
('P31', 'BT21 van fuzzy', '20cm limited edition plush', 'C1', 49.99, 04, 1),
('P32', 'BT21 cooky rainbow', 'rainbow BT21 cooky mug', 'C2', 15.00, 0.5, 1),
('P33', 'BT21 chimmy rainbow', 'rainbow BT21 chimmy mug', 'C2', 15.00, 0.5, 1),
('P34', 'BT21 RJ rainbow', 'rainbow BT21 RJ mug', 'C2', 15.00, 0.5, 1),
('P35', 'BT21 tata rainbow', 'rainbow BT21 tata mug', 'C2', 15.00, 0.5, 1),
('P36', 'BT21 koya rainbow', 'rainbow BT21 koya mug', 'C2', 15.00, 0.5, 1),
('P37', 'BT21 shooky rainbow', 'rainbow BT21 shooky mug', 'C2', 15.00, 0.5, 01),
('P38', 'BT21 mang rainbow', 'rainbow BT21 mang mug', 'C2', 15.00, 0.5, 1),
('P39', 'BT21 van rainbow', 'rainbow BT21 van mug', 'C2', 15.00, 0.5, 1),
('P40', 'line friends giant brown', '70cm limited edition collectible figurine', 'C4', 399.99, 1.2, 1),
('P41', 'line friends giant cony', '70cm limited edition collectible figurine', 'C4', 399.99, 1.2, 1),
('P42', 'line friends brown coby', '30cm limited edition coby', 'C1', 49.99, 0.6, 1),
('P43', 'line friends cony mermaid', '30cm limited edition cony mermaid', 'C1', 52.99, 0.7, 1),
('P44', 'line friends cony pink', 'flower cony mug', 'C2', 12.99, 0.5, 1),
('P45', 'line friends brown yellow', 'donut brown mug', 'C2', 12.99, 0.5, 1);

SELECT * FROM Product_Categories;

INSERT INTO Product_Categories
(category_id, category_name)
VALUES
('C1', 'plush dolls'),
('C2', 'mugs'),
('C3', 'keychains'),
('C4', 'collectible figurines');

SELECT * FROM Customers;

INSERT INTO Customers
(customer_id, username, `password`, first_name, last_name, mobile_no, email, dob, sms_promo, email_promo)
VALUES
('U1', 'happy01', 'happy01', 'Charles', 'Taylor', 07315744441, 'happy01@gmail,com', 20000101, 'y', 'y'),
('U2', 'cheery02', 'cheery02', 'Linda', 'Whites', 07412345663, 'cheery02@gmail.com', 19900202, 'y', 'y'),
('U3', 'izzy05', 'izzy05', 'Isabelle', 'Lee', 07445755551, 'izzy05@hotmail.com', 19860805, 'n', 'n'),
('U4', 'abcde10', 'abcde10', 'Abigail', 'Knox', 07555611112, 'abcde10@hotmail.com', 19921010, 'n', 'n'),
('U5', 'jelly2010', 'jelly2010', 'Jenny', 'Breeman', 07605844443, 'jelly2010@gmail.com', 19891020, 'y', 'y'),
('U6', 'knight56', 'knight56', 'Jack', 'Clarkson', 07446866662, 'knight56@outlook.com', 19880506, 'n', 'y'),
('U7', 'vitamind', 'vitamins44', 'Valerie', 'Phan', 07877766667, 'vitamind@outlook.com', 19960404, 'n', 'y'),
('U8', 'lionunicorn0606', 'lionunicorn0606', 'Lionel', 'Murs', 07445566667, 'lionicorn@gmail.com', 19810606, 'n', 'y'),
('U9', 'freddocat0707', 'freddocat', 'Freddie', 'Lucason', 07506822221, 'freefreddo@gmail.com', 19860707, 'n', 'y'),
('U10', 'unicornrreal', 'ilied0808', 'Hallie', 'Portsman', 07808080808, 'realunicorns@gmail.com', 20000808, 'y', 'y'),
('U11', 'tokiwonky0909', 'tokidoki0909', 'Ally', 'Blake', 07444444444, 'tokiwonky@gmail.com', 19880909, 'y', 'y'),
('U12', 'livvie0522', 'livvie2205', 'Elizabeth', 'Winston', 075778043211, 'livvie0522@hotmail.com', 19750522, 'n', 'n'),
('U13', 'docherty1010', 'docherty1010', 'Craig', 'Docherty', 076767676767, 'docherty1010@gmail.com', 19761010, 'y', 'y'),
('U14', 'nguyen0607', 'nguyen0607', 'Linh', 'Nguyen', 07503833337, 'nguyen0607@outlook.com', 19790807, 'n', 'y'),
('U15', 'fluttershy09', 'fluttershy09', 'Freya', 'Violets', 07655599992, 'fluttershy09@gmail.com', 19800909, 'n', 'n'),
('U16', 'thorhammer0403', 'thorhammer0403', 'Thor', 'Catkins', 07605455555, 'thorhammer0403@hotmail,com', 20000401, 'y', 'y'),
('U17', 'leotan0307', 'leotan0307', 'Leonard', 'Tan', 07212122223, 'leotan0307@gmail.com', 19870307, 'y', 'y'),
('U18', 'Darcie1111', 'darcie1111', 'Darcie', 'Peyton', 07505032191, 'darcie1111@hotmail.com', 19921111, 'y', 'y'),
('U19', 'liverpoolunwa', 'liverpool0519', 'lila', 'Li', 07812345678, 'lilaliver@outlook.com', 19931212, 'n', 'y'),
('U20', 'mysql1234', 'mysql1234', 'Sally', 'Yeo', 07601234567, 'mysql1234@gmail.com', 19601203, 'n', 'y');

UPDATE Customers
SET email = 'happy01@gmail.com'
WHERE email = 'happy01@gmail,com';

UPDATE Customers
SET email = 'thorhammer0403@hotmail.com'
WHERE email = 'thorhammer0403@hotmail,com';

INSERT INTO Customers
(customer_id, username, `password`, first_name, last_name, mobile_no, email, dob, sms_promo, email_promo)
VALUES
('U21', 'cappy01', 'cappy01', 'Christine', 'Bay', 07325743441, 'cappy01@gmail,com', 20000801, 'y', 'y'),
('U22', 'larry02', 'larry02', 'Larry', 'Gold', 07412345773, 'larryg02@gmail.com', 19900802, 'y', 'y'),
('U23', 'bella05', 'bella05', 'Isabella', 'Jones', 07885755551, 'bella05@hotmail.com', 19860805, 'n', 'y'),
('U24', 'kate45', 'katy45', 'Katy', 'Knowles', 07555655552, 'kate451@hotmail.com', 19920810, 'n', 'y');

SELECT * FROM Customer_Addresses;

INSERT INTO Customer_Addresses
(address_id, customer_id, address_line1, address_line2, address_city, postal_code, address_country)
VALUES
('A1', 'U1', 'flat 2 morris house', 'dandelion lane', 'london', 'SE103DD', 'united kingdom'),
('A2', 'U2', '50 heather close', null, 'dartford', 'DA224QD', 'united kingdom'),
('A3', 'U3', '4 otford close', null, 'essex', 'CM65RT', 'united kingdom'),
('A4', 'U4', '19 belfast tower', 'crickets lane', 'guildford', 'GU37YD', 'united kingdom'),
('A5', 'U5', 'flat 34a lilac street', null, 'belfast', 'BT114WA', 'united kingdom'),
('A6', 'U6', '60 drury lane', null, 'london', 'NW133RD', 'united kingdom'),
('A7', 'U7', '144 happy street', null, 'Epsom', 'KT171BJ', 'united kingdom'),
('A8', 'U8', '6 weather house', 'turnpike close', 'london', 'N8 0DU', 'united kingdom'),
('A9', 'U9', '1 Patterson place', null, 'windsor', 'SL4 1AA', 'united kingdom'),
('A10', 'U10', 'flat 50 Chancellor Tower', 'cobalt lane', 'london', 'SW19SX', 'united kingdom'),
('A11', 'U11', '8 Caerpilly road', null, 'cardiff', 'CF106YH', 'united kingdom'),
('A12', 'U12', '166 Queens street', null, 'cardiff', 'CF154QW', 'united kingdom'),
('A13', 'U13', '10a swanlake lane', null, 'swansea', 'SA91FD', 'united kingdom'),
('A14', 'U14', '31 bicester house', 'kennedy street', 'thurrock', 'CM133FY', 'united kingdom'),
('A15', 'U15', '4 prince street', null, 'london', 'W105TB', 'united kingdom'),
('A16', 'U16', 'flat 16 Happy lodge', 'elms street', 'london', 'E127PH', 'united kingdom'),
('A17', 'U17', '57 beach street', null, 'brighton', 'BN11AE', 'united kingdom'),
('A18', 'U18', '80 church street', null, 'brighton', 'BN11AA', 'united kingdom'),
('A19', 'U19', '25 Byron Tpwer', 'preston road', 'southend-on-sea', 'SS00AE', 'united kingdom'),
('A20', 'U20', '41 robins place', null, 'london', 'E146FC', 'united kingdom');
 
 INSERT INTO Customer_Addresses
(address_id, customer_id, address_line1, address_line2, address_city, postal_code, address_country)
VALUES
('A21', 'U21', 'flat 8 london house', 'sunny lane', 'london', 'SE133DD', 'united kingdom'),
('A22', 'U22', '11 rose close', null, 'dartford', 'DA194QD', 'united kingdom'),
('A23', 'U23', '19 oxford street', null, 'essex', 'CM65RR', 'united kingdom'),
('A24', 'U24', '22 Canning tower', 'crickets lane', 'guildford', 'GU57YD', 'united kingdom');

 SELECT * FROM mailing_list;
 
INSERT INTO mailing_list
(signup_id, signup_email, `status`)
VALUES
('SU1', 'happy01@gmail,com', 1),
('SU2', 'cheery02@gmail.com', 1),
('SU3', 'jelly2010@gmail.com', 1),
('SU4', 'pawpatrol99@hotmail.com', 1),
('SU5', 'hellofriend12@outlook.com', 1),
('SU6', 'jackson510@gmail.com', 0),
('SU7', 'knight56@outlook.com', 1),
('SU8', 'selfridges11@gmail.com', 1),
('SU9', 'cfg1234@gmail.com', 1),
('SU10', 'joy4321@gmail.com', 1),
('SU11', 'narwhal55@hotmail.com', 1),
('SU12', 'geckotoy@gmail.com', 1),
('SU13', 'kittencat1@gmail.com', 1),
('SU14', 'doglover1234@gmail.com', 1),
('SU15', 'windyville@email.com', 0),
('SU16', 'penelopeloo@gmail.com', 1),
('SU17', 'vitamind@outlook.com', 1),
('SU18', 'lionicorn@gmail.com', 1),
('SU19', 'freefreddo@gmail.com', 1),
('SU20', 'realunicorns@gmail.com', 1),
('SU21', 'tokiwonky@gmail.com', 1),
('SU22', 'docherty1010@gmail.com', 1),
('SU23', 'nguyen0607@outlook.com', 1),
('SU24', 'thorhammer0403@hotmail,com', 1),
('SU25', 'leotan0307@gmail.com', 1),
('SU26', 'darcie1111@hotmail.com', 1),
('SU27', 'lilaliver@outlook.com', 1),
('SU28', 'mysql1234@gmail.com', 1);

UPDATE mailing_list
SET signup_email = 'happy01@gmail.com'
WHERE signup_email = 'happy01@gmail,com';

UPDATE mailing_list
SET signup_email = 'thorhammer0403@hotmail.com'
WHERE signup_email = 'thorhammer0403@hotmail,com';

INSERT INTO Mailing_List
(signup_id, signup_email, `status`)
VALUES
('SU29', 'cappy01@gmail,com', 1),
('U30', 'larryg02@gmail.com', 1),
('U31', 'bella05@hotmail.com', 1),
('U32', 'kate451@hotmail.com', 1);

ALTER TABLE mailing_list
DROP `status`;

UPDATE mailing_list
SET signup_id = 'SU31'
WHERE signup_id = 'U31';

UPDATE mailing_list
SET signup_id = 'SU32'
WHERE signup_id = 'U32';

UPDATE mailing_list
SET signup_email = 'cappy01@gmail.com'
WHERE signup_email = 'cappy01@gmail,com';

ALTER TABLE mailing_list
ADD `status` INT NOT NULL DEFAULT 0 AFTER signup_email; -- not used

SELECT * FROM orders;

INSERT INTO Orders
(order_id, customer_id, order_date, shipping_status)
VALUES
('PO1', 'U1', 20220701, 1),
('PO2', 'U4', 20220701, 1),
('PO3', 'U2', 20220701, 1),
('PO4', 'U1', 20220702, 1),
('PO5', 'U19', 20220702, 1),
('PO6', 'U18', 20220703, 1),
('PO7', 'U5', 20220703, 1),
('PO8', 'U6', 20220703, 1),
('PO9', 'U3', 20220703, 1),
('PO10', 'U9', 20220704, 1),
('PO11', 'U10', 20220704, 1),
('PO12', 'U11', 20220704, 1),
('PO13', 'U12', 20220704, 1),
('PO14', 'U13', 20220705, 1),
('PO15', 'U15', 20220706, 1),
('PO16', 'U2', 20220706, 1),
('P017', 'U1', 20220706, 1),
('PO18', 'U17', 20220706, 1),
('PO19', 'U15', 20220707, 1),
('PO20', 'U16', 20220707, 1),
('PO21', 'U6', 20220707, 1),
('PO22', 'U5', 20220707, 1),
('PO23', 'U12', 20220708, 1),
('PO24', 'U11', 20220708, 1),
('PO25', 'U10', 20220709, 1),
('PO26', 'U13', 20220709, 1),
('PO27', 'U19', 20220709, 1),
('PO28', 'U2', 20220710, 1),
('PO29', 'U5', 20220711, 1),
('PO30', 'U16', 20220712, 1);

UPDATE Orders
SET order_id = 'PO17'
WHERE order_id = 'P017';


SELECT * FROM Order_Details;

INSERT INTO Order_Details
(detail_id, order_id, product_id, detail_quantity)
VALUES
('D1', 'PO1', 'P1', 1),
('D2', 'PO1', 'P2', 1),
('D3', 'PO1', 'P13', 1),
('D4', 'PO1', 'P15', 1),
('D5', 'PO2', 'P15', 2),
('D6', 'PO2', 'P16', 2),
('D7', 'PO3', 'P15', 3),
('D8', 'PO3', 'P45', 1),
('D9', 'PO3', 'P44', 3),
('D10', 'PO4', 'P15', 2),
('D11', 'PO4', 'P24', 1),
('D12', 'PO4', 'P25', 1),
('D13', 'PO4', 'P26', 1),
('D14', 'PO4', 'P27', 1),
('D15', 'PO4', 'P28', 1),
('D16', 'PO4', 'P29', 1),
('D17', 'PO4', 'P30', 1),
('D18', 'PO4', 'P31', 1),
('D19', 'PO4', 'P32', 1),
('D20', 'PO4', 'P33', 1),
('D21', 'PO4', 'P34', 1),
('D22', 'PO4', 'P35', 1),
('D23', 'PO4', 'P36', 1),
('D24', 'PO4', 'P37', 1),
('D25', 'PO4', 'P38', 1),
('D26', 'PO4', 'P39', 1),
('D27', 'PO4', 'P44', 4),
('D28', 'PO5', 'P15', 1),
('D29', 'PO5', 'P16', 1),
('D30', 'PO5', 'P15', 1),
('D31', 'PO5', 'P9', 1),
('D32', 'PO5', 'P12', 2),
('D33', 'PO5', 'P13', 1),
('D34', 'PO5', 'P4', 1),
('D35', 'PO5', 'P19', 1),
('D36', 'PO5', 'P40', 1),
('D37', 'PO5', 'P41', 1),
('D38', 'PO6', 'P41', 1),
('D39', 'PO6', 'P40', 1),
('D40', 'PO6', 'P15', 1),
('D41', 'PO7', 'P15', 2),
('D42', 'PO7', 'P41', 1),
('D43', 'PO7', 'P40', 1),
('D44', 'PO7', 'P1', 1),
('D45', 'PO8', 'P15', 1),
('D46', 'PO8', 'P1', 1),
('D47', 'PO8', 'P14', 1),
('D48', 'PO8', 'P15', 2),
('D49', 'PO8', 'P40', 1),
('D50', 'PO8', 'P5', 1),
('D51', 'PO8', 'P7', 1),
('D52', 'PO8', 'P8', 1),
('D53', 'PO8', 'P20', 1),
('D54', 'PO8', 'P21', 1),
('D55', 'PO9', 'P15', 1),
('D56', 'PO9', 'P1', 1),
('D57', 'PO9', 'P2', 1),
('D58', 'PO9', 'P4', 1),
('D59', 'PO9', 'P16', 4),
('D60', 'PO9', 'P14', 1),
('D61', 'PO9', 'P2', 2),
('D62', 'PO9', 'P12', 2),
('D63', 'PO9', 'P13', 1),
('D64', 'PO10', 'P15', 2),
('D65', 'PO10', 'P16', 2),
('D66', 'PO10', 'P17', 2),
('D67', 'PO10', 'P18', 2),
('D68', 'PO10', 'P19', 2),
('D69', 'PO10', 'P20', 1),
('D70', 'PO10', 'P21', 1),
('D71', 'PO11', 'P15', 3),
('D72', 'PO11', 'P16', 3),
('D73', 'PO11', 'P17', 4),
('D74', 'PO11', 'P18', 4),
('D75', 'PO11', 'P19', 1),
('D76', 'PO12', 'P15', 1),
('D77', 'PO12', 'P16', 3),
('D78', 'PO13', 'P15', 2),
('D79', 'PO13', 'P4', 1),
('D80', 'PO13', 'P20', 2),
('D81', 'PO14', 'P15', 3),
('D82', 'PO14', 'P20', 1),
('D83', 'PO14', 'P21', 2),
('D84', 'PO14', 'P17', 3),
('D85', 'PO14', 'P18', 1),
('D86', 'PO15', 'P15', 2),
('D87', 'PO15', 'P32', 1),
('D88', 'PO15', 'P33', 3),
('D89', 'PO15', 'P34', 4),
('D90', 'PO15', 'P37', 1),
('D91', 'PO16', 'P15', 4),
('D92', 'PO17', 'P15', 1),
('D93', 'PO17', 'P40', 1),
('D94', 'PO17', 'P41', 1),
('D95', 'PO17', 'P1', 1),
('D96', 'PO17', 'P20', 1),
('D97', 'PO17', 'P22', 1),
('D98', 'PO17', 'P23', 1),
('D99', 'PO17', 'P31', 1),
('D100', 'PO17', 'P32', 4),
('D101', 'PO17', 'P33', 1),
('D102', 'PO17', 'P2', 1),
('D103', 'PO18', 'P11', 1),
('D104', 'PO18', 'P1', 2),
('D105', 'PO19', 'P15', 3),
('D106', 'PO19', 'P20', 1),
('D107', 'PO19', 'P43', 1),
('D108', 'PO19', 'P24', 1),
('D109', 'PO20', 'P15', 2),
('D110', 'PO21', 'P15', 3),
('D111', 'PO22', 'P15', 1),
('D112', 'PO22', 'P20', 2),
('D113', 'PO22', 'P22', 2),
('D114', 'PO23', 'P15', 2),
('D115', 'PO23', 'P1', 2),
('D116', 'PO23', 'P36', 5),
('D117', 'PO23', 'P39', 5),
('D118', 'PO24', 'P15', 1),
('D119', 'PO25', 'P15', 2),
('D120', 'PO26', 'P15', 1),
('D121', 'PO26', 'P20', 1),
('D122', 'PO26', 'P21', 1),
('D123', 'PO26', 'P11', 2),
('D124', 'PO26', 'P1', 1),
('D125', 'PO26', 'P5', 1),
('D126', 'PO26', 'P17', 1),
('D127', 'PO27', 'P1', 2),
('D128', 'PO27', 'P15', 2),
('D129', 'PO27', 'P20', 2),
('D130', 'PO27', 'P30', 2),
('D131', 'PO27', 'P12', 2),
('D132', 'PO27', 'P27', 4),
('D133', 'PO27', 'P5', 2),
('D134', 'PO27', 'P39', 4),
('D135', 'PO27', 'P16', 2),
('D136', 'PO27', 'P21', 1),
('D137', 'PO27', 'P1', 1),
('D138', 'PO27', 'P40', 1),
('D139', 'PO27', 'P41', 1),
('D140', 'PO27', 'P31', 2),
('D141', 'PO28', 'P1', 1),
('D142', 'PO28', 'P15', 1),
('D143', 'PO28', 'P16', 2),
('D144', 'PO28', 'P21', 1),
('D145', 'PO28', 'P22', 1),
('D146', 'PO28', 'P20', 1),
('D147', 'PO28', 'P39', 1),
('D148', 'PO28', 'P14', 1),
('D149', 'PO28', 'P23', 1),
('D150', 'PO28', 'P30', 1),
('D151', 'PO28', 'P31', 2),
('D152', 'PO28', 'P27', 1),
('D153', 'PO28', 'P28', 1),
('D154', 'PO28', 'P18', 2),
('D155', 'PO28', 'P19', 2),
('D156', 'PO28', 'P17', 1),
('D157', 'PO28', 'P11', 1),
('D158', 'PO28', 'P12', 1),
('D159', 'PO29', 'P1', 1),
('D160', 'PO29', 'P15', 1),
('D161', 'PO29', 'P2', 2),
('D162', 'PO29', 'P3', 1),
('D163', 'PO29', 'P4', 1),
('D164', 'PO29', 'P5', 2),
('D165', 'PO29', 'P6', 2),
('D166', 'PO29', 'P7', 2),
('D167', 'PO29', 'P8', 3),
('D168', 'PO29', 'P9', 2),
('D169', 'PO29', 'P1', 1),
('D170', 'PO29', 'P20', 1),
('D171', 'PO29', 'P14', 1),
('D172', 'PO29', 'P15', 2),
('D173', 'PO29', 'P33', 1),
('D174', 'PO29', 'P32', 1),
('D175', 'PO29', 'P39', 1),
('D176', 'PO29', 'P18', 1),
('D177', 'PO29', 'P19', 1),
('D178', 'PO29', 'P43', 1),
('D179', 'PO29', 'P44', 1),
('D180', 'PO29', 'P27', 1),
('D181', 'PO29', 'P36', 1),
('D182', 'PO30', 'P1', 1),
('D183', 'PO30', 'P2', 1),
('D184', 'PO30', 'P3', 1),
('D185', 'PO30', 'P15', 1),
('D186', 'PO30', 'P20', 1),
('D187', 'PO30', 'P25', 1),
('D188', 'PO30', 'P31', 1);






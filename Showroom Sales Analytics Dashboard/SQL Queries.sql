CREATE DATABASE car_showroom;
USE car_showroom;
SELECT DATABASE();
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    email VARCHAR(50),
    city VARCHAR(30),
    state VARCHAR(30),
    occupation VARCHAR(30),
    annual_income DECIMAL(12,2),
    registration_date DATE,
    preferred_model VARCHAR(30)
);

CREATE TABLE cars (
    car_id VARCHAR(10) PRIMARY KEY,
    brand VARCHAR(30),
    model VARCHAR(30),
    fuel_type VARCHAR(20),
    transmission VARCHAR(20),
    price DECIMAL(12,2),
    mileage DECIMAL(10,2),
    engine_cc INT,
    seating_capacity INT,
    launch_year INT,
    stock_quantity INT
);

CREATE TABLE sales (
    sale_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    car_id VARCHAR(10),
    sale_date DATE,
    sale_price DECIMAL(12,2),
    payment_mode VARCHAR(20),
    loan_required VARCHAR(10),
    loan_amount DECIMAL(12,2),
    sales_executive VARCHAR(50),
    delivery_date DATE,
    insurance_provider VARCHAR(30),
    warranty_years INT,

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),

    FOREIGN KEY (car_id)
    REFERENCES cars(car_id)
);

SHOW TABLES;
DESCRIBE customers;
DESCRIBE cars;
DESCRIBE sales;

INSERT INTO customers
(customer_id, customer_name, age, gender, phone, email, city, state, occupation, annual_income, registration_date, preferred_model)
VALUES

('CUS101','Ajay Joseph',22,'Male','9876543210','ajay@gmail.com','Salem','Tamil Nadu','Data Analyst',600000,'2026-06-01','XUV700'),

('CUS102','Rahul Kumar',24,'Male','9876543211','rahul@gmail.com','Chennai','Tamil Nadu','Software Engineer',750000,'2026-06-02','Scorpio N'),

('CUS103','Priya Sharma',23,'Female','9876543212','priya@gmail.com','Coimbatore','Tamil Nadu','Teacher',500000,'2026-06-03','Thar Roxx'),

('CUS104','Karthik Raj',25,'Male','9876543213','karthik@gmail.com','Madurai','Tamil Nadu','Manager',900000,'2026-06-04','XUV 3XO'),

('CUS105','Divya S',21,'Female','9876543214','divya@gmail.com','Erode','Tamil Nadu','Student',300000,'2026-06-05','BE 6'),

('CUS106','Arun Kumar',26,'Male','9876543215','arun@gmail.com','Trichy','Tamil Nadu','Businessman',1200000,'2026-06-06','XEV 9e'),

('CUS107','Sneha R',22,'Female','9876543216','sneha@gmail.com','Chennai','Tamil Nadu','Designer',550000,'2026-06-07','Thar'),

('CUS108','Vinoth K',24,'Male','9876543217','vinoth@gmail.com','Vellore','Tamil Nadu','Engineer',700000,'2026-06-08','Scorpio Classic'),

('CUS109','Nandhini P',23,'Female','9876543218','nandhini@gmail.com','Salem','Tamil Nadu','Doctor',950000,'2026-06-09','XEV 9e'),

('CUS110','Hari Prasad',25,'Male','9876543219','hari@gmail.com','Coimbatore','Tamil Nadu','Consultant',800000,'2026-06-10','Bolero Neo'),

('CUS111','Praveen M',27,'Male','9876543220','praveen@gmail.com','Chennai','Tamil Nadu','Bank Manager',1000000,'2026-06-11','XUV700'),

('CUS112','Anitha K',24,'Female','9876543221','anitha@gmail.com','Madurai','Tamil Nadu','HR Executive',650000,'2026-06-12','Thar'),

('CUS113','Sathish R',28,'Male','9876543222','sathish@gmail.com','Trichy','Tamil Nadu','Businessman',1300000,'2026-06-13','Scorpio N'),

('CUS114','Gayathri P',23,'Female','9876543223','gayathri@gmail.com','Erode','Tamil Nadu','Teacher',550000,'2026-06-14','Bolero'),

('CUS115','Kishore V',26,'Male','9876543224','kishore@gmail.com','Vellore','Tamil Nadu','Engineer',850000,'2026-06-15','Marazzo'),

('CUS116','Monisha D',22,'Female','9876543225','monisha@gmail.com','Salem','Tamil Nadu','Student',350000,'2026-06-16','XUV 3XO'),

('CUS117','Saravanan K',29,'Male','9876543226','saravanan@gmail.com','Coimbatore','Tamil Nadu','Factory Owner',1800000,'2026-06-17','XEV 9e'),

('CUS118','Bhavya S',24,'Female','9876543227','bhavya@gmail.com','Chennai','Tamil Nadu','Architect',900000,'2026-06-18','BE 6'),

('CUS119','Naveen P',27,'Male','9876543228','naveen@gmail.com','Madurai','Tamil Nadu','Civil Engineer',950000,'2026-06-19','Scorpio Classic'),

('CUS120','Rekha M',25,'Female','9876543229','rekha@gmail.com','Trichy','Tamil Nadu','Professor',750000,'2026-06-20','Bolero Neo'),

('CUS121','Gokul R',23,'Male','9876543230','gokul@gmail.com','Erode','Tamil Nadu','Software Engineer',800000,'2026-06-21','XUV700'),

('CUS122','Preethi V',22,'Female','9876543231','preethi@gmail.com','Salem','Tamil Nadu','Designer',500000,'2026-06-22','Thar Roxx'),

('CUS123','Lokesh K',28,'Male','9876543232','lokesh@gmail.com','Chennai','Tamil Nadu','Businessman',1400000,'2026-06-23','Scorpio N'),

('CUS124','Riya S',24,'Female','9876543233','riya@gmail.com','Coimbatore','Tamil Nadu','Doctor',1200000,'2026-06-24','XEV 9e'),

('CUS125','Muthu P',30,'Male','9876543234','muthu@gmail.com','Madurai','Tamil Nadu','Transport Owner',2000000,'2026-06-25','XUV700');

INSERT INTO cars
(car_id, brand, model, fuel_type, transmission, price, mileage,
engine_cc, seating_capacity, launch_year, stock_quantity)
VALUES

('MH1001','Mahindra','XUV 3XO','Petrol','Manual',899000,18.20,1197,5,2024,25),

('MH1002','Mahindra','Bolero','Diesel','Manual',999000,17.00,1493,7,2024,20),

('MH1003','Mahindra','Bolero Neo','Diesel','Manual',1199000,17.30,1493,7,2024,18),

('MH1004','Mahindra','Bolero Neo Plus','Diesel','Manual',1299000,16.50,2184,9,2024,12),

('MH1005','Mahindra','Scorpio Classic','Diesel','Manual',1699000,16.40,2184,7,2024,15),

('MH1006','Mahindra','Scorpio N','Diesel','Automatic',2199000,17.80,2198,7,2024,12),

('MH1007','Mahindra','Thar','Diesel','Automatic',1799000,15.20,2184,4,2024,10),

('MH1008','Mahindra','Thar Roxx','Diesel','Automatic',2399000,16.00,2184,5,2025,10),

('MH1009','Mahindra','XUV700','Diesel','Automatic',2499000,16.50,2198,7,2024,20),

('MH1010','Mahindra','BE 6','Electric','Automatic',2199000,550.00,0,5,2025,8),

('MH1011','Mahindra','XEV 9e','Electric','Automatic',2899000,650.00,0,5,2025,6),

('MH1012','Mahindra','Marazzo','Diesel','Manual',1499000,17.30,1497,7,2024,7);

INSERT INTO sales
(sale_id, customer_id, car_id, sale_date, sale_price,
payment_mode, loan_required, loan_amount,
sales_executive, delivery_date, insurance_provider, warranty_years)
VALUES

('SAL001','CUS101','MH1009','2026-06-26',2499000,'Loan','Yes',1800000,'Karthik','2026-06-30','ICICI Lombard',5),

('SAL002','CUS102','MH1006','2026-06-26',2199000,'Cash','No',0,'Praveen','2026-06-30','HDFC ERGO',5),

('SAL003','CUS103','MH1008','2026-06-27',2399000,'Loan','Yes',1700000,'Arun','2026-07-01','Bajaj Allianz',5),

('SAL004','CUS104','MH1001','2026-06-27',899000,'Cash','No',0,'Hari','2026-07-02','Digit',3),

('SAL005','CUS105','MH1010','2026-06-28',2199000,'Loan','Yes',1500000,'Praveen','2026-07-03','Acko',5),

('SAL006','CUS106','MH1011','2026-06-28',2899000,'Loan','Yes',2200000,'Karthik','2026-07-04','ICICI Lombard',5),

('SAL007','CUS107','MH1007','2026-06-29',1799000,'Cash','No',0,'Arun','2026-07-05','Digit',3),

('SAL008','CUS108','MH1005','2026-06-29',1699000,'Loan','Yes',1200000,'Hari','2026-07-06','HDFC ERGO',5),

('SAL009','CUS109','MH1003','2026-06-30',1199000,'Cash','No',0,'Praveen','2026-07-07','Acko',3),

('SAL010','CUS110','MH1002','2026-06-30',999000,'Cash','No',0,'Karthik','2026-07-08','Digit',3),

('SAL011','CUS111','MH1009','2026-07-01',2499000,'Loan','Yes',1900000,'Hari','2026-07-09','ICICI Lombard',5),

('SAL012','CUS112','MH1007','2026-07-01',1799000,'Cash','No',0,'Praveen','2026-07-10','HDFC ERGO',3),

('SAL013','CUS113','MH1006','2026-07-02',2199000,'Loan','Yes',1600000,'Arun','2026-07-11','Bajaj Allianz',5),

('SAL014','CUS114','MH1002','2026-07-02',999000,'Cash','No',0,'Hari','2026-07-12','Digit',3),

('SAL015','CUS115','MH1012','2026-07-03',1499000,'Loan','Yes',1000000,'Karthik','2026-07-13','ICICI Lombard',5),

('SAL016','CUS116','MH1001','2026-07-03',899000,'Cash','No',0,'Praveen','2026-07-14','Acko',3),

('SAL017','CUS117','MH1011','2026-07-04',2899000,'Loan','Yes',2300000,'Arun','2026-07-15','Bajaj Allianz',5),

('SAL018','CUS118','MH1010','2026-07-04',2199000,'Loan','Yes',1500000,'Hari','2026-07-16','ICICI Lombard',5),

('SAL019','CUS119','MH1005','2026-07-05',1699000,'Cash','No',0,'Praveen','2026-07-17','Digit',3),

('SAL020','CUS120','MH1003','2026-07-05',1199000,'Cash','No',0,'Karthik','2026-07-18','Acko',3),

('SAL021','CUS121','MH1009','2026-07-06',2499000,'Loan','Yes',1800000,'Arun','2026-07-19','ICICI Lombard',5),

('SAL022','CUS122','MH1008','2026-07-06',2399000,'Loan','Yes',1700000,'Hari','2026-07-20','HDFC ERGO',5),

('SAL023','CUS123','MH1006','2026-07-07',2199000,'Cash','No',0,'Praveen','2026-07-21','Digit',5),

('SAL024','CUS124','MH1011','2026-07-07',2899000,'Loan','Yes',2200000,'Karthik','2026-07-22','Bajaj Allianz',5),

('SAL025','CUS125','MH1009','2026-07-08',2499000,'Loan','Yes',1900000,'Arun','2026-07-23','ICICI Lombard',5);

SELECT * FROM cars;
SELECT COUNT(*) AS Total_Cars
FROM cars;

SELECT COUNT(*) AS Total_Customers
FROM customers;

SELECT COUNT(*) AS Total_Sales
FROM sales;
SELECT * FROM customers;
SELECT *
FROM customers
WHERE city='Chennai';
SELECT *
FROM cars
WHERE price > 2000000;

SELECT *
FROM cars
WHERE fuel_type='Electric';

SELECT *
FROM cars
ORDER BY price DESC
LIMIT 1;

SELECT *
FROM cars
ORDER BY price ASC
LIMIT 1;

SELECT AVG(price) AS Average_Price
FROM cars;

SELECT city,
COUNT(*) AS Total_Customers
FROM customers
GROUP BY city;
SELECT
payment_mode,
COUNT(*) AS Total_Customers
FROM sales
GROUP BY payment_mode;
SELECT
ca.model,
COUNT(*) AS Cars_Sold
FROM sales s
JOIN cars ca
ON s.car_id = ca.car_id
GROUP BY ca.model
ORDER BY Cars_Sold DESC;

SELECT
ca.model,
SUM(s.sale_price) AS Revenue
FROM sales s
JOIN cars ca
ON s.car_id = ca.car_id
GROUP BY ca.model;

SELECT
c.customer_name,
ca.model
FROM sales s
JOIN customers c
ON s.customer_id = c.customer_id
JOIN cars ca
ON s.car_id = ca.car_id
WHERE ca.model='XUV700';

DROP DATABASE IF EXISTS lab_mysql;
DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE if not exists CARS(
    vin varchar(20) PRIMARY KEY, 
	Manufacturer VARCHAR(20),
	model VARCHAR(20), 
    Year int, 
    color varchar(20)
    );
    
CREATE TABLE IF NOT EXISTS CUSTOMERS(
    customer_id INT PRIMARY KEY,
    name VARCHAR(40),
    phone VARCHAR(40),
    email VARCHAR(40),
    adress VARCHAR(40),
    city VARCHAR(40),
    state_province VARCHAR(40),
    country VARCHAR(40),
    postal INT
    );
    
CREATE TABLE IF NOT EXISTS SALESPERSON(
    staff_id INT PRIMARY KEY,
    name VARCHAR(40),
    store VARCHAR(20)
    );
    
CREATE TABLE IF NOT EXISTS INVOICE(
	invoice_number INT PRIMARY KEY,
    date DATE,
    CAR INT, -- FOREIGN KEY FROM TABLE CARS(VIN)
    customer INT, -- FOREIGN KEY FROM TABLE CUSTOMERS(CUSTOMER_ID)
    staff INT -- FOREIGN KEY FROM TABLE SALESPERSON(STAFF_ID)
    );
    
    
-- ALTER TABLES



ALTER TABLE INVOICE
	ADD FOREIGN KEY (customer)
REFERENCES CUSTOMERS(customer_id)
ON DELETE SET NULL;

ALTER TABLE INVOICE
	add FOREIGN KEY(staff)
REFERENCES SALESPERSON(staff_id);


    
    

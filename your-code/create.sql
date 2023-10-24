-- 1. Create database
DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- 2. Create tables
	-- 2.1 Cars
CREATE TABLE IF NOT EXISTS cars(
ID INT PRIMARY KEY AUTO_INCREMENT,		-- Primary key
VIN VARCHAR(20),						-- Not alternative key. One value is repeated
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(20),
year INT,
color VARCHAR(20)
);

    -- 2.2 Customers
CREATE TABLE IF NOT EXISTS customers (
ID INT PRIMARY KEY AUTO_INCREMENT,		-- Primary key
customer_id INT UNIQUE,					-- Alternative key
name VARCHAR(40),
phone_no VARCHAR (20),
email VARCHAR (40),
adress VARCHAR(40),
city VARCHAR (20),
state VARCHAR (20),
country VARCHAR (20),
zip VARCHAR(10)
);

	-- 2.3 Salesperson
CREATE TABLE IF NOT EXISTS salesperson (
ID INT PRIMARY KEY AUTO_INCREMENT,		-- Primary key
staff_id VARCHAR (7) UNIQUE,			-- Alternative key, is not an INT
name VARCHAR (40),
store VARCHAR(40)
);

	-- 2.4 Invoices
CREATE TABLE IF NOT EXISTS invoices (
ID INT PRIMARY KEY AUTO_INCREMENT,
invoice_no INT,
date DATE,
car INT,							-- FK, from cars(ID), 1 to 1
customer INT, 						-- FK, from customers(ID)
salesperson INT,					-- FK, from salesperson(ID)
FOREIGN KEY (car) REFERENCES cars (ID) ON DELETE SET NULL,
UNIQUE (car),
FOREIGN KEY (customer) REFERENCES customers(ID) ON DELETE SET NULL,
FOREIGN KEY (salesperson) REFERENCES salesperson(ID) ON DELETE SET NULL
);


-- What are the relations between these entities?
	-- One car can only be in one invoice (1 to 1)
	-- One salesperson can sell many cars (1 to many)
    -- One customer can buy many car (1 to many)
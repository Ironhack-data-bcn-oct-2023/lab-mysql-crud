DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars(
	vin VARCHAR(17) PRIMARY KEY,
    manufacturer VARCHAR(40),
    model VARCHAR(40),
    year INT,
    colour VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS customers(
	customer_id INT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    phone_number VARCHAR(40),
    email VARCHAR(40),
    address VARCHAR(40),
    city VARCHAR(40),
    state_province VARCHAR(40),
    country VARCHAR(40),
    zip_code INT
);
CREATE TABLE IF NOT EXISTS salespersons(
	staff_id INT PRIMARY KEY,
    name VARCHAR(40),
    store VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS invoices(
	invoice_num VARCHAR(40) PRIMARY KEY,
    date DATE NOT NULL,
    car VARCHAR(17),
    customer INT,
    salesperson INT
);

ALTER TABLE invoices
	ADD FOREIGN KEY (car) REFERENCES cars(vin) ON DELETE SET NULL;
    
ALTER TABLE invoices
	ADD FOREIGN KEY (customer) REFERENCES customers(customer_id) ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (salesperson) REFERENCES salespersons(staff_id) ON DELETE SET NULL;
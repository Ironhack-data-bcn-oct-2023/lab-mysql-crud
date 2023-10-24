DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars(
	id INT AUTO_INCREMENT PRIMARY KEY,
	vehicle_id VARCHAR(40) UNIQUE,
    manufacturer VARCHAR(40) NOT NULL,
    model VARCHAR(40),
    year INT,
    color VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT UNIQUE ,
    name VARCHAR(40) NOT NULL,
    phone_no VARCHAR(40),
    email VARCHAR(40),
    address VARCHAR(40),
    city VARCHAR(40),
    state VARCHAR(40),
    country VARCHAR(40),
    postal_code int
);

CREATE TABLE IF NOT EXISTS salesperson(
	id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT UNIQUE, 
    name VARCHAR(40) NOT NULL,
    store VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS invoice(
	id INT AUTO_INCREMENT PRIMARY KEY,
	invoice_no INT UNIQUE,
    date DATE, 
    car INT, 
    customer INT NOT NULL,
    salesperson INT
);

ALTER TABLE invoice
	ADD FOREIGN KEY (car)
REFERENCES cars(id); 

ALTER TABLE invoice
	ADD FOREIGN KEY (customer)
REFERENCES customers(id);

ALTER TABLE invoice 
	ADD FOREIGN KEY (salesperson)
REFERENCES salesperson(id);

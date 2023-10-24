drop database if exists lab_cars; 

CREATE DATABASE IF NOT EXISTS lab_cars;
USE lab_cars;


CREATE TABLE IF NOT EXISTS cars (
	vin VARCHAR(80) PRIMARY KEY,  
	manufacturer VARCHAR(30), 
	model VARCHAR(30), 
	year INT, 
	color VARCHAR(30));  
 
CREATE TABLE IF NOT EXISTS customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR(30),
	phone VARCHAR(30), 
	email VARCHAR(30),
	address VARCHAR(30),
	city VARCHAR(30), 
	state VARCHAR(30),
    country VARCHAR(30),
    zip VARCHAR(30));

CREATE TABLE IF NOT EXISTS invoices ( 
	invoice_id INT AUTO_INCREMENT PRIMARY KEY, 
    date DATE, 
    car VARCHAR (80),
    salesperson INT, 
    customer INT);
    
    
CREATE TABLE IF NOT EXISTS salespeople ( 
	staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    store VARCHAR(30)); 


ALTER TABLE invoices
	ADD FOREIGN KEY (customer) 
    REFERENCES customers (customer_id)
	ON DELETE CASCADE;

ALTER TABLE invoices 
	ADD FOREIGN KEY (salesperson)
    REFERENCES salespeople (staff_id)
    ON DELETE CASCADE; 
    
ALTER TABLE invoices 
	ADD FOREIGN KEY (car)
    REFERENCES cars (vin)
    ON DELETE CASCADE;



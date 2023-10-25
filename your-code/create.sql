CREATE DATABASE IF NOT EXISTS car_company;
USE car_company;

CREATE TABLE car (
	id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(40),
    manufacturer VARCHAR(40),
    model VARCHAR(40),
    color VARCHAR(40),
    year INT(4)
);

CREATE TABLE customer (
	id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    full_name VARCHAR(40),
    phone VARCHAR(40),
    email VARCHAR(40),
    address VARCHAR(40),
    city VARCHAR(40),
    state VARCHAR(40),
    country VARCHAR(40),
    zip_code INT
);

CREATE TABLE salesperson (
	id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT,
    store_id INT,
    full_name VARCHAR(40),
    store VARCHAR(40)
);

CREATE TABLE invoices (
    invoice_num INT PRIMARY KEY,
    date DATE NOT NULL,
    staff_id INT,
    car INT,
    customer INT 
);

-- Defining foreign keys
ALTER TABLE invoices ADD FOREIGN KEY (staff_id) REFERENCES salesperson(id);
ALTER TABLE invoices ADD FOREIGN KEY (car) REFERENCES car(id);
ALTER TABLE invoices ADD FOREIGN KEY (customer) REFERENCES customer(id);
    


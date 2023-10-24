CREATE DATABASE IF NOT EXISTS car_company;
USE car_company;

CREATE TABLE car (
    vin VARCHAR(40) PRIMARY KEY,
    manufacturer VARCHAR(40),
    model VARCHAR(40),
    color VARCHAR(40),
    year INT(4)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
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
    staff_id INT PRIMARY KEY,
    store_id INT,
    full_name VARCHAR(40),
    store VARCHAR(40)
);

CREATE TABLE invoices (
    invoice_num INT PRIMARY KEY,
    date DATE NOT NULL,
    staff_id INT,
    car VARCHAR(40),
    customer INT 
);

-- Defining foreign keys
ALTER TABLE invoices ADD FOREIGN KEY (staff_id) REFERENCES salesperson(staff_id);
ALTER TABLE invoices ADD FOREIGN KEY (car) REFERENCES car(vin);
ALTER TABLE invoices ADD FOREIGN KEY (customer) REFERENCES customer(customer_id);
    


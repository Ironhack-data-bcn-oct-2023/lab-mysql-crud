DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars (
    vin INT PRIMARY KEY,
    manufacturer VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL, 
    year YEAR NOT NULL,
    color VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS salesperson (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(255) NOT NULL,
    company_store VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY, 
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255), 
    city VARCHAR(255), 
    state_province VARCHAR(255), 
    country VARCHAR(255), 
    postal VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS invoices (
    invoice_number INT PRIMARY KEY,
    date DATE NOT NULL,
    vin INT,
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (vin) REFERENCES cars(vin) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (staff_id) REFERENCES salesperson(staff_id) ON DELETE CASCADE
);

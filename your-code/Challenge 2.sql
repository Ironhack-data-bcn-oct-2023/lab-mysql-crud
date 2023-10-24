DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
vehicle_id INT PRIMARY KEY,
manufacturer INT,
model VARCHAR (40),
year VARCHAR (40),
color VARCHAR (40)
);

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
name VARCHAR(40) NOT NULL,
phone_no VARCHAR(40),
email VARCHAR(40),
address VARCHAR(40),
city VARCHAR(40),
state VARCHAR(40),
country VARCHAR(40),
postal_code INT
);

CREATE TABLE salespersons (
staff_id INT PRIMARY KEY,
name VARCHAR(40) NOT NULL,
store VARCHAR(40)
);

CREATE TABLE invoices (
 invoice_no INT PRIMARY KEY,
 date DATE,
 car VARCHAR(40),
 customer VARCHAR(40) NOT NULL,
 salesperson VARCHAR(40)
 );

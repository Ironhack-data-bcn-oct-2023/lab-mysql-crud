drop database if exists CAR_LAB;
create database if not exists CAR_LAB;
use CAR_LAB;
CREATE TABLE IF NOT EXISTS CARS (
	id INT AUTO_INCREMENT PRIMARY KEY, 
    vin VARCHAR(17) NOT NULL UNIQUE, 
    manufacturer VARCHAR(60),
    model VARCHAR(60),
    year YEAR,
    color VARCHAR(60)
);
CREATE TABLE IF NOT EXISTS CUSTOMERS (
	id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    Name VARCHAR(100),
    phone_number VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    address VARCHAR(250),
    city VARCHAR(60),
    state_province VARCHAR(60),
    country VARCHAR(60),
    postal VARCHAR(60)
);
CREATE TABLE IF NOT EXISTS INVOICES (
	id INT AUTO_INCREMENT PRIMARY KEY ,
    invoice_id INT NOT NULL UNIQUE,
    Date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT
);
CREATE TABLE IF NOT EXISTS SALESPERSONS (
	id INT AUTO_INCREMENT PRIMARY KEY, 
    staff_id INT NOT NULL UNIQUE,
    Name VARCHAR(100),
    store VARCHAR(40)
);
ALTER TABLE invoices
	add foreign key (car_id)
references CARS(id)
ON DELETE CASCADE;
ALTER TABLE invoices
	add foreign key (customer_id)
references customers(id)
on delete cascade;
ALTER TABLE invoices
	add foreign key (salesperson_id)
references salespersons(id)
on delete cascade;






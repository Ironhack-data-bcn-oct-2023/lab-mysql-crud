drop database if exists dealership;

create database if not exists dealership;

use dealership;

CREATE TABLE IF NOT EXISTS cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    vin VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year YEAR,
    colors VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS salespersons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT UNIQUE NOT NULL,
    name VARCHAR(40),
    store VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customers_id INT UNIQUE NOT NULL,
    name VARCHAR(40),
    phone VARCHAR(40),
    email VARCHAR(80) NULL,
    address VARCHAR(80),
    city VARCHAR(40),
    state VARCHAR(40),
    country CHAR(4),
    postal_code VARCHAR(20)
);


CREATE TABLE IF NOT EXISTS invoices (
    id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_id INT UNIQUE NOT NULL,
    date DATE,
    car INT,
    customer INT,
    sales_person INT
);

alter table invoices 
	add foreign key (car)  
references cars(id) 
on delete cascade;

alter table invoices
	add foreign key (customer)
references customers(id)
on delete cascade;

alter table invoices
	add foreign key (sales_person)
references salespersons(id)
on delete cascade;
drop database if exists CAR_LAB;

create database if not exists CAR_LAB;

use CAR_LAB;

CREATE TABLE IF NOT EXISTS CARS (
    vin VARCHAR(250) PRIMARY KEY,
    manufacturer VARCHAR(250),
    model VARCHAR(250),
    year YEAR,
    colors VARCHAR(250)
);


CREATE TABLE IF NOT EXISTS CUSTOMERS (
    customer_id INT PRIMARY KEY,
    name VARCHAR(250),
    phone_number INT,
    email VARCHAR(250),
    adress VARCHAR(250),
    city VARCHAR(250),
    state_province VARCHAR(250),
    country VARCHAR(250),
    zipe_code VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS INVOICES (
    invoice_number INT PRIMARY KEY,
    date DATE,
    car VARCHAR(250),
    customer INT,
    salesperson INT
);

CREATE TABLE IF NOT EXISTS SALESPERSONS (
    staff_id INT PRIMARY KEY,
    name VARCHAR(250),
    store VARCHAR(250)
);

alter table invoices 
	add foreign key (car) 
references cars (vin)
on delete cascade;

alter table invoices
	add foreign key (customer) 
references customers (customer_id)
on delete cascade;

alter table invoices 
	add foreign key (salesperson) 
references salespersons (staff_id)
on delete cascade;









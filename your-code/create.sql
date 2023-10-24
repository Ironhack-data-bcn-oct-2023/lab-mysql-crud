DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
use lab_mysql;

CREATE TABLE IF NOT EXISTS cars(
	id int auto_increment primary key, 
    vin varchar(40),
    manufacturer varchar(40),
    model varchar(40),
    year int,
    color varchar(40)
);

CREATE TABLE IF NOT EXISTS customers(
	id int auto_increment primary key, 
    customer_id varchar(40),
    name varchar(40),
    phone varchar(40),
    email int,
    address varchar(40),
    city varchar(40),
    state varchar(40),
    country varchar(40),
    postal int
);

CREATE TABLE IF NOT EXISTS salespersons(
	id int auto_increment primary key, 
    staff_id int,
    name varchar(40),
    store varchar(40)
);

CREATE TABLE IF NOT EXISTS invoices(
	id int auto_increment primary key, 
    invoice_number int,
    date datetime,
    car int,
    customer int,
    salesperson int
);

ALTER TABLE invoices
	ADD FOREIGN KEY (salesperson) 
REFERENCES salespersons(id) 
ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (car) 
REFERENCES cars(id) 
ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (car) 
REFERENCES customers(id) 
ON DELETE SET NULL;

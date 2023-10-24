
DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


CREATE TABLE IF NOT EXISTS cars(
	id_car INT PRIMARY KEY auto_increment,
    vin VARCHAR(30),
    manufacturer VARCHAR(40),
    model VARCHAR(30),
    car_year INT,
    color VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS customers(
	id INT PRIMARY KEY auto_increment,
	id_customer INT UNIQUE,
    name VARCHAR(40) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(50),
    adress VARCHAR(50),
    city VARCHAR(20),
    state_province VARCHAR(40),
    country VARCHAR(40),
    zip_code VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS invoices(
	id_invoice INT PRIMARY KEY auto_increment,
    num_inv INT UNIQUE, 
    date VARCHAR(20),
    id_car INT,
    id_staff INT,
    id_customer INT
);

CREATE TABLE IF NOT EXISTS sales_persons(
	id INT PRIMARY KEY auto_increment,
	id_staff INT UNIQUE,
    name VARCHAR(40),
    store VARCHAR(30)
);

ALTER TABLE invoices
	ADD foreign key (id_car)
    REFERENCES cars(ID_CAR)
    ON DELETE SET NULL;
    
ALTER TABLE invoices
	ADD foreign key (id_customer)
    REFERENCES customers(id)
    ON DELETE SET NULL;
    
ALTER TABLE invoices
	ADD foreign key(id_staff)
    REFERENCES sales_persons(id)
    ON DELETE SET NULL;
    


DROP DATABASE IF EXISTS lab_sql;
CREATE DATABASE IF NOT EXISTS lab_sql;
USE lab_sql;


CREATE TABLE IF NOT EXISTS cars(
	 id INT PRIMARY KEY AUTO_INCREMENT,
     vin varchar(50) NOT NULL,
     manufacturer varchar(100),
     model varchar(100),
     c_year int,
     color CHAR(20)
);


CREATE TABLE IF NOT EXISTS customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    cust_id  int UNIQUE NOT NULL,
	cust_name VARCHAR(100) NOT NULL,
	phone_number VARCHAR(30),
	email VARCHAR(100),
	address VARCHAR(255),
	city VARCHAR(100),
	province VARCHAR(100),
	country VARCHAR(100),
	postal_code VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS sales_persons(
	id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id varchar(5) NOT NULL,
    staff_name VARCHAR(100) NOT NULL,
	desc_store varchar(100)
);

CREATE TABLE IF NOT EXISTS invoices(
id_invoice INT PRIMARY KEY AUTO_INCREMENT,
invoice_number int UNIQUE NOT NULL,
inv_date VARCHAR(20) NOT NULL,
id_car INT NOT NULL,
id_customer INT NOT NULL,
id_staff INT
);



ALTER TABLE invoices
	ADD FOREIGN KEY (id_car) 
REFERENCES cars(id)
ON DELETE CASCADE;

ALTER TABLE invoices
	ADD FOREIGN KEY (id_customer)
REFERENCES customers(id) 
ON DELETE CASCADE;

ALTER TABLE invoices
	ADD FOREIGN KEY (id_staff) 
REFERENCES sales_persons(id) 
ON DELETE CASCADE;


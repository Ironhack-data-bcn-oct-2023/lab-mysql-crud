DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE	table CARS_INVENTORY(
    id varchar(20) PRIMARY KEY,
    vin varchar(50),
    manufacturer varchar(20),
    model varchar(20),
    product_year varchar(20),
    color varchar(20)
);
create table customers(
	id int PRIMARY KEY,
    customer_id varchar(20) ,
    customer_name varchar(50),
    phone_number varchar(20),
    email varchar(20),
    address longtext,
    city varchar(40),
    state varchar(40),
    conuntry varchar(15),
    zip varchar(10)
);
create	table sales_person(
	ID varchar(20) PRIMARY KEY,
    staff_ID varchar(20),
    staff_name varchar(20),
    store varchar(20)
);
create table invoices(
	id varchar(20) primary key,
    invoice_number varchar(20),
    sale_date varchar(50),
    car_number varchar(50),
    customer_id int,
    sales_person varchar(20)
);
ALTER TABLE invoices
	ADD FOREIGN KEY (customer_id)
REFERENCES customers(id);
ALTER TABLE invoices
	ADD FOREIGN KEY (sales_person)
REFERENCES sales_person(ID);
ALTER TABLE invoices
	ADD FOREIGN KEY (car_number)
REFERENCES cars_inventory(id);
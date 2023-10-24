DROP DATABASE IF EXISTS car_company;
CREATE DATABASE IF NOT EXISTS car_company;

use car_company;

CREATE TABLE car(
VIN VARCHAR(80) PRIMARY KEY,
manufacturer VARCHAR(50),
brand VARCHAR(40),
model VARCHAR(40),
colour VARCHAR(40),
year INT(4),
fuel_type VARCHAR(10),
price FLOAT,
sales_status VARCHAR(20)
);


CREATE TABLE customer(
customer_ID INT PRIMARY KEY,
name VARCHAR(20),
last_name VARCHAR(20),
date_of_birth DATE,
phone_number INT(6),
email VARCHAR(40),
address VARCHAR(40),
city VARCHAR(40),
zip_code INT(5),
state_province VARCHAR(20),
country VARCHAR(30),
customer_type INT
);

CREATE TABLE store(
store_ID INT PRIMARY KEY,
store_name VARCHAR(40),
nr_of_employees INT,
address VARCHAR(40),
city VARCHAR(40),
zip_code CHAR(5),
country VARCHAR(20),
sales_YTD FLOAT
);

CREATE TABLE salesperson(
staff_ID INT PRIMARY KEY,
store_ID INT,
name VARCHAR(40),
last_name VARCHAR(40),
gender CHAR(1),
date_of_birth DATE,
phone_number INT,
email VARCHAR(40),
seniority INT,
salary FLOAT,
comission_rate FLOAT,
cars_sold_YTD INT

);

CREATE TABLE invoices(
store_ID INT ,
staff_ID INT,
invoice_number INT PRIMARY KEY,
invoice_date DATE,
customer_ID INT,
customer_type INT,
brand VARCHAR(40),
model VARCHAR(40),
quantity INT,
price FLOAT,
discount_applied FLOAT,
total_amount FLOAT,

FOREIGN KEY (staff_ID) REFERENCES salesperson(staff_ID) ON DELETE CASCADE,
FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID) ON DELETE CASCADE,
FOREIGN KEY (store_ID) REFERENCES store(store_ID) ON DELETE CASCADE
);

CREATE TABLE discounts(
Type_of_discount VARCHAR(20) PRIMARY KEY,
discount_applied FLOAT
)
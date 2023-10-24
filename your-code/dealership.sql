DROP DATABASE IF EXISTS DEALERSHIP;
CREATE DATABASE IF NOT EXISTS DEALERSHIP;
USE DEALERSHIP;
CREATE TABLE IF NOT EXISTS cars(
vin  CHAR(17) PRIMARY KEY,  -- 17 standard length of vin for cars
manufacturer VARCHAR(255) NOT NULL,
model VARCHAR(255),
year CHAR (4) NOT NULL,
color VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS customers(
customer_ID  VARCHAR(255) PRIMARY KEY,
name_customer VARCHAR(255) NOT NULL,
phone_number VARCHAR(255),
email VARCHAR (255),
address VARCHAR(255) NOT NULL, -- Adress already involves city and zip postal unnecesary
city VARCHAR(255),
state_province VARCHAR(255),
country VARCHAR(255),
zip_postal VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS salespersons(
staff_id  VARCHAR(255) PRIMARY KEY,
name_staff VARCHAR(255),
store VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS invoices(
invoice_number  VARCHAR(255),
date DATE,
car CHAR(17),
customer VARCHAR (255),
sales_person VARCHAR(255)
);
-- Altering stuff
	-- changed cols in invoices to possibly NULL
    -- changed col.car in invoices to be the same type as vin in cars (which was char(17))
ALTER TABLE invoices
	ADD FOREIGN KEY (car) -- linking car to VIN
REFERENCES cars(vin)
ON DELETE SET NULL;
ALTER TABLE invoices
	ADD FOREIGN KEY (customer) -- linking costumer to costumer_ID
REFERENCES customers(customer_ID)
ON DELETE SET NULL;
ALTER TABLE invoices
	ADD FOREIGN KEY (sales_person) -- linking salesperson to staff_ID
REFERENCES salespersons(staff_id)
ON DELETE SET NULL;
-- INSERTING NEW INFO
INSERT INTO cars(VIN, manufacturer, model, year, color)
VALUES("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");
INSERT INTO cars VALUES
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "2019","Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "2018", "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray");
SELECT * FROM cars;

INSERT INTO customers(customer_id, name_customer, phone_number, email, address, city, state_province, country, zip_postal)
VALUES("10001", "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14","Madrid","Madrid","Spain","28045");
INSERT INTO customers VALUES
("20001", "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St","Miami","Florida","United States","33130"),
("30001", "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée","Paris","Île-de-France","France","75008");
SELECT * FROM customers;

INSERT INTO salespersons(staff_id, name_staff, store )
VALUES("00001", "Petey Cruiser", "Madrid");
INSERT INTO salespersons VALUES
("00002", "Anna Sthesia", "Barcelona"),
("00003", "Paul Molive", "Berlin"),
("00004", "Gail Forcewind",	"Paris"),
("00005", "Paige Turner", "Miami"),
("00006", "Bob Frapples", "Mexico City"),
("00007", "Walter Melon", "Amsterdam"),
("00008", "Shonda Leer", "São Paulo");
SELECT * FROM salespersons;

INSERT INTO invoices (invoice_number, date, car, customer, sales_person)
VALUES
(0, "2018-08-22", "3K096I98581DHSNUP", "10001", "00003"),
(1, "2018-12-31", "HKNDGS7CU31E9Z7JW", "10001", "00005"),
(2, "2019-01-22", "RKXVNNIHLVVZOUB4M", "20001", "00007");
SELECT * FROM invoices;

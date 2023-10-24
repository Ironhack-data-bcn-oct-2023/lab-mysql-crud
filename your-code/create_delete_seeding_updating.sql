DROP DATABASE IF EXISTS DEALERSHIP;
CREATE DATABASE IF NOT EXISTS DEALERSHIP;
USE DEALERSHIP;
CREATE TABLE IF NOT EXISTS cars (
vin  CHAR(17) PRIMARY KEY,  -- 17 standard length of vin for cars
manufacturer VARCHAR(255) NOT NULL,
model VARCHAR(255),
year CHAR (4) NOT NULL,
color VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS costumers (
costumer_ID  VARCHAR(255) PRIMARY KEY,
name_costumer VARCHAR(255) NOT NULL,
phone_number VARCHAR(255),
email VARCHAR (255),
adress VARCHAR(255) NOT NULL, -- Adress already involves city and zip postal unnecesary
city VARCHAR(255),
state_province VARCHAR(255),
country VARCHAR(255), -- if we use the Alpha 2 country code
zip_postal VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS salespersons (
staff_id  VARCHAR(255) PRIMARY KEY,
name_staff VARCHAR(255),
store VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS invoices (
invoice_number  VARCHAR(255),
date DATE,
car CHAR(17),
costumer VARCHAR (255),
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
	ADD FOREIGN KEY (costumer) -- linking costumer to costumer_ID
REFERENCES costumers(costumer_ID) 
ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (sales_person) -- linking salesperson to staff_ID
REFERENCES salespersons(staff_id) 
ON DELETE SET NULL;


-- INSERTING NEW INFO

-- Cars
INSERT INTO cars(VIN, manufacturer, model, year, color)
VALUES("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");
INSERT INTO cars VALUES
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "2019","Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "2018", "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray");
SELECT * FROM cars;

-- Costumers
INSERT INTO costumers (costumer_ID, name_costumer, phone_number, email, adress, city, state_province, country, zip_postal)
VALUES("10001", "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14","Madrid","Madrid","Spain","28045");
INSERT INTO costumers VALUES
("20001", "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St","Miami","Florida","United States","33130"),
("30001", "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée","Paris","Île-de-France","France","75008");
SELECT * FROM costumers;

-- Salespersons
INSERT INTO salespersons(staff_id, name_staff, store )
VALUES("00001", "Petey Cruiser", "Madrid");
INSERT INTO salespersons VALUES
("00002", "Anna Sthesia", "Barcelona"),
("00003", "Paul Molive", "Berlin"),
("00004", "Gail Forcewind",	"Paris"),
("00005", "Paige Turner", "Mimia"),
("00006", "Bob Frapples", "Mexico City"),
("00007", "Walter Melon", "Amsterdam"),
("00008", "Shonda Leer", "São Paulo");
SELECT * FROM salespersons;

-- Invoices
INSERT INTO invoices (invoice_number, date, car, costumer, sales_person)
values("852399038", "22-08-2018", "3K096I98581DHSNUP","10001","00001");
SELECT * FROM invoices;
INSERT INTO invoices VALUES
("731166526", "2018-12-31", "ZM8G7BEUQZ97IH46V", "20001", "00002"),
("271135104", "2019-01-22", "RKXVNNIHLVVZOUB4M", "30001", "00003");
SELECT * FROM invoices;

-- Note: I was really struggling until Marta told me that because I correlated the car, costumer and sales_person with columns in the respective tables (while altering)
-- I had to respect the sequential integrity of those data so I just "forced" this. This is obviously a workaround, how should I have proceeded actually?


-- UPDATING:
SET SQL_SAFE_UPDATES = 0;   -- reference: https://stackoverflow.com/questions/11448068/mysql-error-code-1175-during-update-in-mysql-workbench
UPDATE costumers
SET email = "ppicasso@gmail.com"
WHERE name_costumer = "Pablo Picasso";
select * from costumers;

UPDATE costumers
SET email = "lincoln@us.gov"
WHERE name_costumer = "Abraham Lincoln";
select * from costumers;

UPDATE costumers
SET email = "hello@napoleon.me"
WHERE name_costumer = "Napoléon Bonaparte";
select * from costumers;

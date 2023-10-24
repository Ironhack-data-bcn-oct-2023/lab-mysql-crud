DROP DATABASE IF EXISTS mysql_crud_2;
CREATE DATABASE mysql_crud_2;
USE mysql_crud_2;

CREATE TABLE `Invoices`(
    `id` INT auto_increment primary key,
    `Invoice Number` CHAR(9) UNIQUE NOT NULL,
    `Date` CHAR(10) NOT NULL,
    `Car` INT NOT NULL,
    `Customer` INT NOT NULL,
    `Sales Person` INT NOT NULL
);
CREATE TABLE `Customers`(
    `id` INT auto_increment primary key,
    `Customer ID` CHAR(5) UNIQUE NOT NULL,
    `Name` VARCHAR(40) NOT NULL,
    `Phone Number` VARCHAR(40) NOT NULL,
    `E-Mail` VARCHAR(40) NULL,
    `Address` VARCHAR(40) NOT NULL,
    `City` VARCHAR(40) NOT NULL,
    `State/Province` VARCHAR(40) NULL,
    `Country` VARCHAR(40) NOT NULL,
    `ZIP / Postal Code` CHAR(5) NOT NULL
);
CREATE TABLE `SalesPersons`(
    `id` INT auto_increment primary key,
    `Staff ID` CHAR(5) UNIQUE NOT NULL,
    `Name` VARCHAR(40) NOT NULL,
    `Store` VARCHAR(40) NOT NULL
);
CREATE TABLE `Cars`(
    `id` INT auto_increment primary key,
    `VIN` VARCHAR(40) UNIQUE,
    `Manufacturer` VARCHAR(12) NOT NULL,
    `Year` CHAR(4) NOT NULL,
    `Model` VARCHAR(40) NOT NULL,
    `Color` VARCHAR(12) NOT NULL
);

INSERT INTO `Cars` (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES 
	("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
	("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
	("RKXVNNIHLVVZOUB4M", "Toyota", "RAV4", 2018, "Silver"),
	("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "White"),
	("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country",	2019,"Gray");

INSERT INTO `Customers` (`Customer ID`, `Name`, `Phone Number`,`E-Mail`, `Address`, `State/Province`, `City`, `Country`, `ZIP / Postal Code`) VALUES
	(10001, "Pablo Picasso", "+34 636 17 63 82", "", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
    (20001, "Abraham Lincoln", "+1 305 907 7086", "", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
    (30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "", "40 Rue du Colisée", "Île-de-France", "Paris", "France", 75008);
    
INSERT INTO `SalesPersons` (`Staff ID`, `Name`, `Store`) VALUES
	("00001", "Petey Cruiser", "Madrid"),
	("00002", "Anna Sthesia", "Barcelona"),
	("00003", "Paul Molive", "Berlin"),
	("00004", "Gail Forcewind", "Paris"),
	("00005", "Paige Turner", "Mimia"),
	("00006", "Bob Frapples", "Mexico City"),
	("00007", "Walter Melon", "Amsterdam"),
	("00008", "Shonda Leer", "São Paulo");
    
INSERT INTO `Invoices` (`Invoice Number`, `Date`, `Car`, `Customer`, `Sales Person`) VALUES
	("852399038", "2018-08-22", 1, 1, 3),
	("852399039", "2018-08-23", 3, 1, 5),
	("852399040", "2018-08-24", 2, 2, 7);
    
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_sales person_foreign` FOREIGN KEY(`Sales Person`) REFERENCES `SalesPersons`(`id`) ON DELETE CASCADE;
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_customer_foreign` FOREIGN KEY(`Customer`) REFERENCES `Customers`(`id`) ON DELETE CASCADE;
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY(`Car`) REFERENCES `Cars`(`id`) ON DELETE CASCADE;
    
UPDATE `SalesPersons`  
SET STORE = "Miami" WHERE id = 4;

UPDATE `Customers`
SET `E-Mail` = "ppicasso@gmail.com" WHERE id = 0;

UPDATE `Customers`
SET `E-Mail` = "lincoln@us.gov" WHERE id = 1;

UPDATE `Customers`
SET `E-Mail` = "hello@napoleon.me" WHERE id = 2;

DELETE FROM `Cars` WHERE id = 4;

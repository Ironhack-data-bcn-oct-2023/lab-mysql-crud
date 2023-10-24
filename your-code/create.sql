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
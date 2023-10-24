USE lab_mysql;

CREATE TABLE IF NOT EXISTS Cars (
	VIN VARCHAR(40) PRIMARY KEY,
    manufacturer VARCHAR(40),
    model VARCHAR(40),
    year INT,
    color VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS Customers (
	customer_id INT PRIMARY KEY,
    name VARCHAR(40),
    phone_n VARCHAR(40),
    email VARCHAR(40),
    address VARCHAR(40),
    city VARCHAR(40),
    state VARCHAR(40),
    country VARCHAR(40),
    zip_code INT
);

CREATE TABLE IF NOT EXISTS Salespersons (
	staff_id INT PRIMARY KEY,
    name VARCHAR(40),
    store VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS Invoices (
	invoice_n INT PRIMARY KEY,
    sale_date VARCHAR(40),
    car_vin VARCHAR(40) NOT NULL UNIQUE,
    customer_id INT NOT NULL,
	staff_id INT NOT NULL,
    FOREIGN KEY (car_vin) REFERENCES Cars(VIN),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES Salespersons(staff_id)
);






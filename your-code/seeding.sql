USE car_company;

-- Insert data to car table
INSERT INTO car (vin, manufacturer, model, color, year) VALUES
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 'Blue', 2019),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 'Red', 2019),
	('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 'White', 2019),
	('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 'Silver', 2019),
	('DAM41UDN3CHU2JVF6', 'Volvo', 'V60', 'Gray', 2019),
	('DAM41UDN3CHU2JVF6', 'Volvo', 'V60 Cross Country', 'Gray', 2019);

-- Insert data to customer table
INSERT INTO customer (customer_id, full_name, phone, email, address, city, state, country, zip_code) VALUES
    (10001, 'Pablo Picasso', '+34 636 17 63 82', 'pablo@picasso.com', 'Paseo de la Chopera, 14', 'Madrid', 'Comunidad de Madrid', 'España', 12345),
    (20001, 'Abraham Lincoln', '+1 305 907 7086', 'abraham@lincoln.com', '120 SW 8th St', 'Miami', 'Florida', 'USA', 25879),
	(30001, 'Napoléon Bonaparteh', '+33 1 79 75 40 00', 'napoleon@bonaparte.com', '40 Rue du Colisée', 'Paris', '', 'France', 54681);

-- Insert tos salesperson table
INSERT INTO salesperson (staff_id, store_id, full_name, store) VALUES
    (101, 00001, 'Petey Cruiser', 'Madrid'),
    (102, 00002, 'Anna Sthesia', 'Barcelona'),
	(103, 00002, 'Paul Molive', 'Berlin'),
	(104, 00002, 'Gail Forcewind', 'Paris'),
	(105, 00002, 'Paige Turner', 'Mimia'),
	(106, 00002, 'Bob Frapples', 'Mexico City'),
	(107, 00002, 'Walter Melon', 'Amsterdam'),
    (108, 00002, 'Shonda Leer', 'Sao Paulo');
       
-- Insert to invoices table
INSERT INTO invoices (invoice_num, date, staff_id, car, customer) VALUES
    (852399038, '2018-08-22', 3, '1', 1),
    (731166526, '2018-12-31', 7, '2', 3),
    (271135104, '2019-01-22', 5, '3', 2);
    
SELECT*FROM customer;

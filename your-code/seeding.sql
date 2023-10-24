-- cars
USE lab_mysql;

-- ALTER TABLE cars AUTO_INCREMENT=0; -- > This doesn't make the ID start in 0

INSERT INTO cars
VALUES (ID, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"), 
(ID, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
(ID, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
(ID, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
(ID, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
(ID, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

-- ID, customer_id, name, phone_no, email, adress, city, state, country, zip
INSERT INTO customers
VALUES (ID, 10001, "Pablo Picasso", "+34 636 17 63 82", NULL, "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
(ID, 20001, "Abraham Lincoln", "+1 305 907 7086", NULL, "120 SW 8th St", "Miami", "Florida", "United States", 33130),
(ID, 30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", NULL, "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);

-- ID, staff_id, name, store
INSERT INTO salesperson
VALUES (ID, 00001, "Petey Cruiser", "Madrid"),
(ID, 00002, "Anna Sthesia", "Barcelona"),
(ID, 00003, "Paul Molive", "Berlin"),
(ID, 00004, "Gail Forcewind", "Paris"),
(ID, 00005, "Paige Turner", "Mimia"),
(ID, 00006, "Bob Frapples", "Mexico City"),
(ID, 00007, "Walter Melon", "Amsterdam"),
(ID, 00008, "Shonda Leer", "São Paulo");

INSERT INTO invoices 							-- I change the values (+1) of the foreign IDs because they don't start from 0 
VALUES (ID, 852399038, "2018-08-22", 1, 2, 4),
(ID, 731166526, "2018-12-31", 4, 1, 6),
(ID, 271135104, "2019-01-22", 3, 3, 8);
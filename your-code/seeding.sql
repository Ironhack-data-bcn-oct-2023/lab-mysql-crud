
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
	("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
	("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
	("RKXVNNIHLVVZOUB4M", "Toyota", "RAV4", 2018, "Silver"),
	("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "White"),
	("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country",	2019, "Gray");
    
    
INSERT INTO customers (customer_id, name, phone, email, address, city, state, country, zip) VALUES
	(10001, "Pablo Picasso", "+34 636 17 63 82", "", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
    (20001, "Abraham Lincoln", "+1 305 907 7086", "", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
    (30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "", "40 Rue du Colisée", "Île-de-France", "Paris", "France", 75008);
    
    
INSERT INTO salespeople (staff_id, name, store) VALUES
	("00001", "Petey Cruiser", "Madrid"),
	("00002", "Anna Sthesia", "Barcelona"),
	("00003", "Paul Molive", "Berlin"),
	("00004", "Gail Forcewind", "Paris"),
	("00005", "Paige Turner", "Mimia"),
	("00006", "Bob Frapples", "Mexico City"),
	("00007", "Walter Melon", "Amsterdam"),
	("00008", "Shonda Leer", "São Paulo");
    
    
INSERT INTO invoices (invoice_id, date, car, salesperson, customer) VALUES
	("852399038", "2018-08-22", 2, 1, 10001),
	("852399039", "2018-08-23", 3, 8, 20001),
	("852399040", "2018-08-24", 2, 2, 30001);
    
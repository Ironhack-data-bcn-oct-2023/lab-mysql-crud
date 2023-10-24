USE lab_mysql;

INSERT INTO cars (vehicle_id,manufacturer,model,year,color) VALUES 
("3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
("ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red"),
("RKXVNNIHLVVZOUB4M","Ford","Fusion",2018,"White"),
("HKNDGS7CU31E9Z7JW","Toyota","RAV4",2018,"Silver"),
("DAM41UDN3CHU2WVF6","Volvo","V60",2019,"Gray");

INSERT INTO customers (customer_id,name,phone_no,email,address,city,state,country,postal_code) VALUES
(10001, "Pablo Picasso", "+34 636 17 63 82", NULL, "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
(20001, "Abraham Lincoln", "+1 305 907 7086", NULL, "120 SW 8th St", "Miami", "Florida", "United States", 233130),
(30001, "Napoleón Bonaparte", "+33 1 79 75 40 00", NULL, "40 Rye du Colisée", "Paris", "Íle-de-France", "France", 75008);

INSERT INTO salesperson (staff_id,name,store) VALUES
(00001, "Petey Cruiser", "Madrid"), 
(00002, "Anna Sthesia", "Barcelona"), 
(00003, "Paul Molive", "Berlin"), 
(00004, "Gail Forcewind", "Paris"), 
(00005, "Paige Turner", "Mimia"), 
(00006, "Bob Frapples", "Mexico City"), 
(00007, "Walter Melon", "Amsterdam"), 
(00008,"Shonda Leer", "Sao Paulo");

INSERT INTO invoice (invoice_no, date, car, customer, salesperson) VALUES
(852399038,"2018-08-22",1,2,4),
(731166526,"2018-12-31",4,1,6),     
(271135104,"2019-01-22",3,3,8);

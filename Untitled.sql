DROP DATABASE IF EXISTS mycrud;
CREATE DATABASE IF NOT EXISTS mycrud;
USE mycrud;
CREATE	table if not exists cars(
	id int auto_increment not null PRIMARY KEY,
    vin varchar (20) not null,
    manufacturer varchar(20),
    model varchar(20),
    product_year varchar(20),
    color varchar(20)
);
create table customers(
	ID int auto_increment PRIMARY KEY,
    customer_id varchar(10) not null,
    customer_name varchar(50),
    phone_number varchar(20),
    email varchar(20),
    address longtext,
    city varchar(40),
    state varchar(40),
    conuntry varchar(15),
    zip varchar(10)
);
create	table sales_person(
	ID int auto_increment PRIMARY KEY,
    staff_ID int not null,
    staff_name varchar(40),
    store varchar(20)
);
create table invoices(
	id int auto_increment primary key,
    invoice_number int not null,
    sale_date date,
    car_number int,
    customer_id int,
    sales_person int
);


ALTER TABLE invoices
	ADD FOREIGN KEY (customer_id)
REFERENCES customers(id)
ON DELETE SET NULL;


ALTER TABLE invoices
	ADD FOREIGN KEY (sales_person)
REFERENCES sales_person(ID)
ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (car_number)
REFERENCES cars(id)
ON DELETE SET NULL;




insert into cars(vin,manufacturer,model,product_year,color)
values
("3K096I98581DHSNUP","Volkswagen","Tiguan","2019","Blue"),
("ZM8G7BEUQZ97IH46V","Peugeot","Rifter","2019","Red"),
("RKXVNNIHLVVZOUB4M","Ford","Fusion","2018","White"),
("HKNDGS7CU31E9Z7JW","Toyota","RAV4","2018","Silver"),
("DAM41UDN3CHU2WVF6","Volvo","V60","2019","Gray"),
("DAM41UDN3CHU2WVF6","Volvo","V60_Cross_Country","2019","Gray");


insert into customers(customer_id,customer_name,phone_number,address,city,state,conuntry,zip)
values
("10001","Pablo Picasso","+34 636 17 63 82","Paseo de la Chopera, 14","Madrid","Madrid","Spain","28045"),
("20001","Abraham Lincoln","+1 305 907 7086","120 SW 8th St","Miami","Florida","United States","33130"),
("30001","Napoléon Bonaparte","+33 1 79 75 40 00","40 Rue du Colisée","Paris","Île-de-France","France","75008");


insert into sales_person(staff_ID,staff_name,store)
values
("00001","Petey Cruiser","Madrid"),
("00002","Anna Sthesia","Barcelona"),
("00003","Paul Molive","Berlin"),
("00004","Gail Forcewind","Paris"),
("00005","Paige Turner","Mimia"),
("00006","Bob Frapples","Mexico City"),
("00007","Walter Melon","Amsterdam"),
("00008","Shonda Leer","São Paulo");


insert into invoices(invoice_number,sale_date,car_number,customer_id,sales_person)
values
("852399038","2018-08-22",1,2,3),
("731166526","2018-12-31",4,1,5),
("271135104","2019-01-22",3,3,7);



-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint 
-- fails (`mycrud`.`invoices`, CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`car_number`) REFERENCES `cars` (`id`) ON DELETE SET NULL)

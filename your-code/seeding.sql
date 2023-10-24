insert into color (name, code) values
('Silver Nuggest', '#PCFP24'),
('Black Pearl', '#PCFP22');

insert into store (store_id, name, city, country) values
(001, 'Volkswagen S', 'Barcelona', 'Spain'),
(002, 'Volkswagen G', 'Berlin', 'Germany');

insert into staff (staff_id, name, last_name, store) values
(214483, 'Ana Isabela', 'López', 001),
(214484, 'Maricarmen', 'Galinsoga', 001),
(214584, 'Sasha', 'Volkov', 002);

insert into car (VIN, manufacturer, model, year, color) values
('3K096I98581DHSNUP', 'Volksvagen', 'Golf', '2010', 1),
('ZM8G7BEUQZ97IH46V', 'Volksvagen', 'Polo', '2016', 2);

insert into customer (customer_id, name, last_name, phone_number, email, adress, city, province, country, postal) values
(048576, 'Marcela', 'Quintero', '+34 655 783 287', 'marcelita_q@gmail.com', 'Calle del Carmen 82, 7o 7a', 'Madrid', NULL, NULL, '93884'),
(053516, 'Gemma', 'Agut', '+34 662 723 937', 'gemma_a05@gmail.com', 'Carrer del Pi 2', 'Barcelona', NULL, NULL, '08005');

insert into invoice (invoice_id, date, car, customer, staff) values
(23456, '2012-10-01', '3K096I98581DHSNUP', 053516, 214483),
(23456, '2018-07-27', '3K096I98581DHSNUP', 053516, 214484);
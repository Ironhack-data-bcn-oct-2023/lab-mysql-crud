DROP DATABASE IF EXISTS car_company;
CREATE DATABASE IF NOT EXISTS car_company;
USE car_company;

create table if not exists car (
    VIN varchar(50) primary key not null,
    manufacturer varchar(50),
    model varchar(50),
    year char(4),
    color int
);

create table if not exists customer (
	customer_id bigint primary key not null,
    name varchar(50) not null,
    last_name varchar(50) not null,
    phone_number varchar(50) not null,
    email varchar(50) not null,
    adress varchar(100) not null,
    city varchar(40) not null,
    province varchar(40),
    country varchar(40),
    postal varchar(15) not null
);

create table if not exists invoice (
	id int primary key auto_increment not null,
	invoice_id bigint not null,
    date date,
    car varchar(50),
    customer bigint,
    staff bigint
);

create table if not exists staff (
	staff_id bigint primary key not null,
    name varchar(40) not null,
    last_name varchar(40) not null,
    store bigint
);

create table if not exists color (
	id int primary key auto_increment not null,
    name varchar(40),
    code char(7) not null
);

create table if not exists store (
	store_id bigint primary key not null,
    name varchar(40) not null,
    city varchar(40) not null,
    country varchar(40) not null
);

alter table car add foreign key (color)
	references color(id)
    on delete set null;
    
alter table staff add foreign key (store)
	references store(store_id);
    
alter table invoice add foreign key (car)
	references car(VIN)
    on delete set null;

alter table invoice add foreign key (customer)
	references customer(customer_id);
    
alter table invoice add foreign key (staff)
	references staff(staff_id);

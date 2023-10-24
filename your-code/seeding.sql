insert into cars values
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019 ,"Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion",2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4",	2018,	"Silver");


insert into customers values
("10001", "Pablo Picasso",	"+34 636 17 63 82",	"-" ,"Paseo de la Chopera", "14 Madrid", "Madrid", "SPN", "28045"),
("20001", "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "florida", "USA", "33130"),
("30001", "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée" ,"Paris", "Île-de-France", "FRA", "75008");

insert into salespersons value
("00001", "Petey Cruiser", "Madrid"),
("00002",	"Anna Sthesia", "Barcelona"),
("00003",	"Paul Molive",	"Berli"),
("00004",	"Gail Forcewind", "Paris"),
("00005",	"Paige Turner", "Mimia"),
("00006",	"Bob Frapples", "Mexico City"),
("00007",	"Walter Melon", "Amsterdam"),
("00008", "Shonda Leer", "São Paulo");


insert into invoices value
("852399038", "2018-08-22",	"ZM8G7BEUQZ97IH46V", 10001,	00001),
("731166526", "2018-12-31",	"RKXVNNIHLVVZOUB4M", 20001,	00005),
("271135104", "2019-01-22",	"RKXVNNIHLVVZOUB4M", 30001,	00004);
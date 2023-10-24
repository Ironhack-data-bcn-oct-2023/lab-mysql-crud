USE lab_mysql;

UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE ID = 1;

UPDATE customers
SET email = "lincoln@us.gov"
WHERE ID = 2;

UPDATE customers
SET email = "hello@napoleon.me"
WHERE ID = 3;

UPDATE salespersons
SET store = "Miami"
WHERE ID = 5;
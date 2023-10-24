USE lab_mysql;

UPDATE Salespersons
	SET store = "Miami"
	WHERE staff_id = 00005;


UPDATE Customers
	SET email = 'ppicasso@gmail.com'
	WHERE customer_id = 10001;


UPDATE Customers
	SET email= 'lincoln@us.gov'
	WHERE customer_id = 20001;


UPDATE Customers
	SET email= 'hello@napoleon.me'
	WHERE customer_id = 30001;
    
SELECT * FROM Salespersons;
SELECT * FROM Customers;
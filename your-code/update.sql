USE car_company;

SET sql_safe_updates = 0;

UPDATE salesperson
SET store = 'Miami'
WHERE staff_id = 105;

UPDATE customer
SET email = 'ppicasso@gmail.com'
WHERE customer_id = 10001;

UPDATE customer
SET email = 'lincoln@us.gov'
WHERE customer_id = 20001;

UPDATE customer
SET email = 'hello@napoleon.me'
WHERE customer_id = 30001;

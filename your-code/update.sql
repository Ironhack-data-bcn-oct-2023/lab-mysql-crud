UPDATE salespersons 
SET 
    store = 'Miami'
WHERE
    staff_id = 00005;

UPDATE customers 
SET 
    email = CASE
        WHEN customers_id = 10001 THEN 'ppicasso@gmail.com'
        WHEN customers_id = 20001 THEN 'lincoln@us.gov'
        WHEN customers_id = 30001 THEN 'hello@napoleon.me'
    END
WHERE
    customers_id IN (10001 , 20001, 30001);
    

USE car_lab;

DELETE FROM cars
WHERE vin = "DAM41UDN3CHU2WVF6" and model = "V60"
LIMIT 1;

select * from cars
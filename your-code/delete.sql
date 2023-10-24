In addition, you also find a duplicated car entry for VIN DAM41UDN3CHU2WVF6. You want to delete car ID #4 from the database. Create delete.sql to perform the deletion.

We made sure that the entrances on the VIN column where UNIQUE when creating the database so there was not any duplicated entries. However, for the exercise purpose, I deleted another row.


DELETE FROM cars
WHERE ID = 4;
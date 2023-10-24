USE lab_mysql;

DELETE FROM cars WHERE ID = 5;	-- I didn't delete the ID=4 because ID started with 1, not 0,
								-- and the duplicated ones where 5 and 6
SELECT * FROM cars
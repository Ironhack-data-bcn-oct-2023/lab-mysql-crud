UPDATE salespersons
SET store = 'Miami'
WHERE staff_id = (
  SELECT * FROM (
    SELECT staff_id FROM salespersons WHERE name = 'Paige Turner'
  ) AS subquery
)
LIMIT 1;







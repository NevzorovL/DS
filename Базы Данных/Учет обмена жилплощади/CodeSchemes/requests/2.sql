SELECT customer_id,
       name
FROM customers
WHERE name LIKE '%S%'
UNION
SELECT customer_id,
       name
FROM customers
WHERE name LIKE '%T%'
LIMIT 10;

SELECT residence_id,
       rooms
FROM types AS ty
WHERE rooms > 0
INTERSECT
SELECT residence_id,
       rooms
FROM types AS ty
WHERE rooms < 3
LIMIT 10;

SELECT residence_id,
       rooms
FROM types
EXCEPT
SELECT residence_id,
       rooms
FROM types
WHERE rooms < 3
LIMIT 10;

SELECT size,
       L AS letter
FROM residents as re CROSS JOIN (VALUES ('A'), ('B'), ('C')) b(L)
WHERE size < 40
  AND size > 20
LIMIT 10;

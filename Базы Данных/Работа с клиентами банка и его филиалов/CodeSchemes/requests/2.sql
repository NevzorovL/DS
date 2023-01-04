SELECT bk.id,
       bk.name
FROM banks AS bk
WHERE bk.name LIKE '%S%'
UNION
SELECT bk.id,
       bk.name
FROM banks AS bk
WHERE bk.name LIKE '%T%'
ORDER BY id
LIMIT 10;

SELECT ac.customer_id,
       ac.balance
FROM accounts as ac
WHERE ac.balance < 75
  AND ac.balance > 50
INTERSECT
SELECT ac.customer_id,
       ac.balance
FROM accounts as ac
WHERE ac.balance < 100
  AND ac.balance > 0
LIMIT 10;

SELECT ac.customer_id,
       ac.balance
FROM accounts as ac
EXCEPT
SELECT ac.customer_id,
       ac.balance
FROM accounts as ac
WHERE ac.balance < 900
  AND ac.balance > 0
LIMIT 10;

SELECT ac.balance,
       L AS letter
FROM accounts as ac CROSS JOIN (VALUES ('A'), ('B'), ('C')) b(L)
WHERE ac.balance < 25
  AND ac.balance > 0
LIMIT 10;


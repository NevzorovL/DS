SELECT cu.name,
       ex.exchange,
       ex.date,
       re.size
FROM customers AS cu
LEFT OUTER JOIN exchanges AS ex ON cu.customer_id=ex.customer_id
LEFT OUTER JOIN residents AS re ON ex.residence_id=re.residence_id
WHERE ex.date BETWEEN '2021-01-01' AND '2021-06-31'
  AND ex.exchange = 'True';


SELECT cu.name,
       ex.exchange,
       ex.date,
       re.size
FROM customers AS cu
LEFT OUTER JOIN exchanges AS ex ON cu.customer_id=ex.customer_id
LEFT OUTER JOIN residents AS re ON ex.residence_id=re.residence_id
WHERE re.size > (SELECT AVG(re.size)
                 FROM residents AS re
                 JOIN exchanges AS ex ON re.residence_id=ex.residence_id
                 JOIN types AS ty ON re.residence_id=ty.residence_id
                 WHERE ex.exchange = 'True'
                   AND ty.rooms > 1);
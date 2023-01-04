SELECT re.residence_id,
       re.size,
       ty.rooms,
       di.address,
       di.area
FROM residents AS re
JOIN types AS ty ON re.residence_id=ty.residence_id
JOIN districts AS di ON re.residence_id=di.residence_id
WHERE re.size < (SELECT SUM(re.size) - AVG(re.size) * 5
                 FROM residents AS re
                 JOIN exchanges AS ex ON re.residence_id=ex.residence_id
                 JOIN types AS ty ON re.residence_id=ty.residence_id
                 WHERE ex.exchange = 'True'
                   AND ty.rooms > 1);

SELECT cu.name,
       COUNT(ex.exchange)
FROM customers AS cu
JOIN exchanges AS ex ON cu.customer_id=ex.customer_id
WHERE ex.exchange = 'True'
GROUP BY cu.name
HAVING COUNT(ex.exchange) >= (SELECT MIN(tbl.count)
                              FROM (SELECT cu.name,
                                           COUNT(ex.exchange)
                                    FROM customers AS cu
                                    JOIN exchanges AS ex ON cu.customer_id=ex.customer_id
                                    WHERE ex.exchange = 'True'
                                    GROUP BY cu.name) AS tbl);


SELECT tbl.name,
       tbl.date,
       tbl.exchange
FROM (SELECT cu.name,
       ex.date,
       ex.exchange,
       re.size,
       ty.rooms,
       di.area
FROM customers AS cu
JOIN exchanges AS ex ON cu.customer_id=ex.customer_id
JOIN residents AS re ON ex.residence_id=re.residence_id
JOIN types AS ty ON re.residence_id=ty.residence_id
JOIN districts AS di ON re.residence_id=di.residence_id) AS tbl
WHERE tbl.name LIKE 'Valentine%'
   OR tbl.name LIKE '%Potter'
   OR tbl.size > 50;

SELECT tbl.name,
       tbl.date,
       tbl.exchange,
       (SELECT COUNT(address)
        FROM districts
        WHERE tbl.name LIKE 'Valentine%'
           OR tbl.name LIKE '%Potter'
           OR tbl.size > 50) AS address_count
FROM (SELECT cu.name,
       ex.date,
       ex.exchange,
       re.size,
       ty.rooms,
       di.area
FROM customers AS cu
JOIN exchanges AS ex ON cu.customer_id=ex.customer_id
JOIN residents AS re ON ex.residence_id=re.residence_id
JOIN types AS ty ON re.residence_id=ty.residence_id
JOIN districts AS di ON re.residence_id=di.residence_id) AS tbl
WHERE tbl.name LIKE 'Valentine%'
   OR tbl.name LIKE '%Potter'
   OR tbl.size > 50;
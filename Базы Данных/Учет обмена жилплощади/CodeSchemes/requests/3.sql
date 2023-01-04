SELECT cu.name,
       ex.exchange
FROM customers AS cu
LEFT OUTER JOIN exchanges AS ex ON cu.id=ex.customer_id;

SELECT cu.name,
       ex.exchange
FROM customers AS cu
RIGHT OUTER JOIN exchanges AS ex ON cu.id=ex.customer_id;

SELECT cu.name,
       ex.exchange
FROM customers AS cu
FULL OUTER JOIN exchanges AS ex ON cu.id=ex.customer_id; 
SELECT cu.name,
       ex.exchange,
       re.size
FROM customers AS cu
JOIN exchanges AS ex ON cu.customer_id=ex.customer_id
JOIN residents AS re ON ex.residence_id=re.residence_id;

SELECT re.size,
       ty.rooms,
       di.area
FROM residents AS re
JOIN types AS ty ON re.residence_id=ty.residence_id
JOIN districts AS di ON re.residence_id=di.residence_id;

SELECT cu.name,
       ex.exchange,
       re.size,
       ty.rooms,
       di.area
FROM customers AS cu
JOIN exchanges AS ex ON cu.customer_id=ex.customer_id
JOIN residents AS re ON ex.residence_id=re.residence_id
JOIN types AS ty ON re.residence_id=ty.residence_id
JOIN districts AS di ON re.residence_id=di.residence_id;
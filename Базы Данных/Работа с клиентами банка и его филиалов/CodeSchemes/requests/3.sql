SELECT ac.id,
       cu.name
FROM accounts AS ac
LEFT OUTER JOIN customers AS cu ON ac.customer_id=cu.id
LIMIT 10;

SELECT bk.id,
       br.address
FROM branches AS br
RIGHT OUTER JOIN banks AS bk ON br.bank_id=bk.id
LIMIT 10;

SELECT ac.id,
       tr.amount
FROM accounts AS ac
FULL OUTER JOIN transactions AS tr ON ac.id=tr.account_id
LIMIT 10;

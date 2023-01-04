SELECT bk.id,
       bk.name,
       br.id,
       br.address,
       ar.area
FROM banks AS bk
JOIN branches AS br ON bk.id=br.bank_id
JOIN areas AS ar ON br.id=ar.branch_id;

SELECT br.id,
       br.address,
       ac.customer_id,
       ac.id,
       ac.balance,
       cu.name
FROM branches AS br
JOIN accounts AS ac ON br.id=ac.branch_id
JOIN customers AS cu ON ac.customer_id=cu.id;

SELECT ac.customer_id,
       ac.id,
       ac.balance,
       cu.name,
       tr.date,
       tr.amount
FROM accounts AS ac
JOIN customers AS cu ON ac.customer_id=cu.id
JOIN transactions AS tr ON ac.id=tr.account_id;
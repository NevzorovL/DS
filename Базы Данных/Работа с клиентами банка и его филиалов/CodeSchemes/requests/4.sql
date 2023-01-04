SELECT cu.name,
       ac.balance,
       tr.amount
FROM accounts AS ac
LEFT OUTER JOIN customers AS cu ON ac.customer_id=cu.id
LEFT OUTER JOIN transactions AS tr ON ac.id=tr.account_id
WHERE tr.date BETWEEN '2021-01-01' AND '2021-12-31'
  AND tr.amount > 10;

SELECT cu.name,
       ac.balance,
       tr.amount
FROM accounts AS ac
LEFT OUTER JOIN customers AS cu ON ac.customer_id=cu.id
LEFT OUTER JOIN transactions AS tr ON ac.id=tr.account_id
WHERE ac.balance > (SELECT ac.balance
                    FROM accounts AS ac
                    LEFT OUTER JOIN customers AS cu ON ac.customer_id=cu.id
                    WHERE cu.name LIKE '%J%'
                    ORDER BY cu.name ASC
                    LIMIT 1)
LIMIT 10;

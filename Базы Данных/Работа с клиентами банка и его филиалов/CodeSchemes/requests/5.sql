SELECT cu.name,
       ac.balance,
       tr.amount
FROM accounts AS ac
LEFT OUTER JOIN customers AS cu ON ac.customer_id=cu.customer_id
LEFT OUTER JOIN transactions AS tr ON ac.account_id=tr.account_id
WHERE ac.balance > (SELECT ac.balance
                    FROM accounts AS ac
                    LEFT OUTER JOIN customers AS cu ON ac.customer_id=cu.customer_id
                    WHERE cu.name LIKE '%M%'
                    ORDER BY cu.name ASC
                    LIMIT 1)
LIMIT 10;

SELECT cu.name,
       SUM(ac.balance) AS balance,
       SUM(tr.amount) AS amount
FROM accounts AS ac
LEFT OUTER JOIN customers AS cu ON ac.customer_id=cu.customer_id
LEFT OUTER JOIN transactions AS tr ON ac.account_id=tr.account_id
WHERE ac.balance > (SELECT ac.balance
                    FROM accounts AS ac
                    LEFT OUTER JOIN customers AS cu ON ac.customer_id=cu.customer_id
                    WHERE cu.name LIKE '%M%'
                    ORDER BY cu.name ASC
                    LIMIT 1)
GROUP BY cu.name
HAVING SUM(ac.balance) > (SELECT AVG(ac.balance)
                          FROM accounts AS ac)
LIMIT 10;

SELECT new_table.name,
       new_table.address
FROM (SELECT bk.name,
             br.address,
             ar.area
      FROM banks AS bk
      LEFT OUTER JOIN branches AS br ON bk.bank_id=br.bank_id
      LEFT OUTER JOIN areas AS ar ON br.branch_id=ar.branch_id) AS new_table;

SELECT new_table.name,
       new_table.address,
       (SELECT br.branch_id
        FROM branches AS br
        LIMIT 1)
FROM (SELECT bk.name,
             br.address,
             ar.area
      FROM banks AS bk
      LEFT OUTER JOIN branches AS br ON bk.bank_id=br.bank_id
      LEFT OUTER JOIN areas AS ar ON br.branch_id=ar.branch_id) AS new_table;
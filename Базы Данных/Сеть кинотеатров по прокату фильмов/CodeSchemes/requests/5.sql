SELECT fi.name,
       th.name,
       ic.income
FROM films AS fi
LEFT OUTER JOIN theaters AS th ON fi.name=th.film_id
LEFT OUTER JOIN incomes AS ic ON th.id=ic.theater_id
WHERE ic.income > (SELECT AVG(ic.income)
                   FROM incomes AS ic
                   JOIN theaters AS th ON th.id=ic.theater_id
                   WHERE th.date_from BETWEEN 'Sep 1, 2022' AND 'Sep 10, 2022')
LIMIT 10;


SELECT tbl.film_name,
       tbl.theater_name,
       tbl.income
FROM (SELECT fi.name AS film_name,
             th.name AS theater_name,
             ic.income
      FROM films AS fi
      LEFT OUTER JOIN theaters AS th ON fi.name=th.film_id
      LEFT OUTER JOIN incomes AS ic ON th.id=ic.theater_id) AS tbl
WHERE tbl.income > (SELECT AVG(ic.income)
                   FROM incomes AS ic
                   JOIN theaters AS th ON th.id=ic.theater_id
                   WHERE th.date_from BETWEEN 'Sep 1, 2022' AND 'Sep 10, 2022')
LIMIT 10;

SELECT tbl.theater_name,
       SUM(tbl.income)
FROM (SELECT fi.name AS film_name,
             th.name AS theater_name,
             ic.income
      FROM films AS fi
      LEFT OUTER JOIN theaters AS th ON fi.name=th.film_id
      LEFT OUTER JOIN incomes AS ic ON th.id=ic.theater_id) AS tbl
WHERE tbl.income > (SELECT AVG(ic.income)
                    FROM incomes AS ic
                    JOIN theaters AS th ON th.id=ic.theater_id
                    WHERE th.date_from BETWEEN 'Sep 1, 2022' AND 'Sep 10, 2022')
GROUP BY tbl.theater_name
HAVING SUM(tbl.income) > (SELECT AVG(ic.income)
                          FROM incomes AS ic
                          JOIN theaters AS th ON th.id=ic.theater_id
                          WHERE th.date_to BETWEEN 'Dec 1, 2022' AND 'Dec 10, 2022')
LIMIT 10;

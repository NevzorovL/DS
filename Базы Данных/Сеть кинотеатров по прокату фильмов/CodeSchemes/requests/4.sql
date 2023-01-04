SELECT fi.name,
       th.name,
       ic.income
FROM films AS fi
LEFT OUTER JOIN theaters AS th ON fi.name=th.film_id
LEFT OUTER JOIN incomes AS ic ON th.id=ic.theater_id
WHERE ic.income > 900000
LIMIT 10;

SELECT fi.name,
       th.name,
       ic.income
FROM films AS fi
LEFT OUTER JOIN theaters AS th ON fi.name=th.film_id
LEFT OUTER JOIN incomes AS ic ON th.id=ic.theater_id
WHERE ic.income > (SELECT AVG(ic.income)
                   FROM incomes AS ic
                   JOIN theaters AS th ON th.id=ic.theater_id
                   WHERE th.date_from BETWEEN 'Sep 1, 2022' AND 'Sep 20, 2022')
LIMIT 10;
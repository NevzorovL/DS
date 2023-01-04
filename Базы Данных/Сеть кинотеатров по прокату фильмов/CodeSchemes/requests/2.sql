SELECT name,
       year
FROM films
WHERE name LIKE '%S%'
UNION
SELECT name,
       year
FROM films
WHERE name LIKE '%M%';


SELECT fi.name,
       th.name,
       ic.income
FROM films AS fi
JOIN theaters AS th ON fi.name=th.film_id
JOIN incomes AS ic ON th.id=ic.theater_id
WHERE ic.income <= 600000
  AND ic.income >= 200000
INTERSECT
SELECT fi.name,
       th.name,
       ic.income
FROM films AS fi
JOIN theaters AS th ON fi.name=th.film_id
JOIN incomes AS ic ON th.id=ic.theater_id
WHERE ic.income > 500000;

SELECT fi.name,
       th.name,
       ic.income
FROM films AS fi
JOIN theaters AS th ON fi.name=th.film_id
JOIN incomes AS ic ON th.id=ic.theater_id
EXCEPT
SELECT fi.name,
       th.name,
       ic.income
FROM films AS fi
JOIN theaters AS th ON fi.name=th.film_id
JOIN incomes AS ic ON th.id=ic.theater_id
WHERE ic.income > 500000;

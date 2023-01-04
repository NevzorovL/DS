SELECT fi.name,
       ge.name,
       pr.name
FROM films AS fi
JOIN genres AS ge ON ge.id=fi.genre_id
JOIN producers AS pr ON pr.id=fi.producer_id
LIMIT 10;

SELECT fi.name,
       ac.name,
       th.name
FROM films AS fi
JOIN actors AS ac ON fi.name=ac.film_id
JOIN theaters AS th ON fi.name=th.film_id
LIMIT 10;

SELECT fi.name,
       th.name,
       ic.income
FROM films AS fi
JOIN theaters AS th ON fi.name=th.film_id
JOIN incomes AS ic ON th.id=ic.theater_id
LIMIT 10;
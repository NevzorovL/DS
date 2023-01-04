SELECT fi.name,
       ge.name
FROM films AS fi
LEFT OUTER JOIN genres AS ge ON ge.id=fi.genre_id;

SELECT fi.name,
       ge.name
FROM films AS fi
RIGHT OUTER JOIN genres AS ge ON ge.id=fi.genre_id;

SELECT fi.name,
       ge.name
FROM films AS fi
FULL OUTER JOIN genres AS ge ON ge.id=fi.genre_id;
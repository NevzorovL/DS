SELECT name,
       card
FROM students
WHERE name LIKE '%S%'
UNION
SELECT name,
       card
FROM students
WHERE name LIKE '%M%';


SELECT topic,
       score
FROM projects
WHERE score <= 5
  AND score >= 3
INTERSECT
SELECT topic,
       score
FROM projects
WHERE score = 4;

SELECT topic,
       score
FROM projects
EXCEPT
SELECT topic,
       score
FROM projects
WHERE score <= 5
  AND score >= 4;

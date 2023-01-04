SELECT name,
       book
FROM students
WHERE name LIKE '%S%'
UNION
SELECT name,
       book
FROM students
WHERE name LIKE '%M%';


SELECT student_id,
       mark
FROM exams
WHERE mark <= 5
  AND mark >= 3
INTERSECT
SELECT student_id,
       mark
FROM exams
WHERE mark = 4;

SELECT student_id,
       mark
FROM exams
EXCEPT
SELECT student_id,
       mark
FROM exams
WHERE mark <= 3;

SELECT st.name,
       ex.mark
FROM exams AS ex
LEFT OUTER JOIN students AS st ON st.book=ex.student_id
WHERE ex.mark > (SELECT AVG(mark)
                 FROM exams
                 WHERE mark > (SELECT AVG(mark)
                              FROM exams))
LIMIT 10;

SELECT tbl.name,
       tbl.mark
FROM (SELECT *
      FROM students AS st
      JOIN exams AS ex ON st.book=ex.student_id) AS tbl
WHERE tbl.mark > (SELECT AVG(mark)
                  FROM exams
                  WHERE mark > (SELECT AVG(mark)
                                FROM exams))
LIMIT 10;

SELECT st.name,
       AVG(ex.mark)
FROM students AS st
JOIN exams AS ex ON st.book=ex.student_id
GROUP BY st.name
HAVING AVG(ex.mark) > (SELECT AVG(mark)
                       FROM exams
                       WHERE mark > (SELECT AVG(mark)
                                     FROM exams))
LIMIT 10;




-- SELECT st.name,
--        AVG(mk.mark)
-- FROM students AS st
-- LEFT OUTER JOIN projects AS pr ON st.id=pr.student_id
-- LEFT OUTER JOIN  marks AS mk ON pr.id=mk.project_id
-- GROUP BY name
-- HAVING AVG(mk.mark) > (SELECT AVG(scores.score)
--                        FROM (SELECT score
--                              FROM projects
--                              WHERE topic LIKE '%B%') AS scores);
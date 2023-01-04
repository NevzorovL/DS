SELECT st.name,
       st.card,
       pr.score
FROM students AS st
RIGHT OUTER JOIN groups AS gr ON gr.id=st.group_id
LEFT OUTER JOIN projects AS pr ON st.id=pr.student_id
WHERE pr.score > (SELECT AVG(scores.score)
                  FROM (SELECT score
                        FROM projects
                        WHERE topic LIKE '%B%') AS scores)
LIMIT 10;

SELECT tbl.name,
       tbl.card,
       tbl.score
FROM (SELECT *
      FROM students AS st
      RIGHT OUTER JOIN groups AS gr ON gr.id=st.group_id
      LEFT OUTER JOIN projects AS pr ON st.id=pr.student_id) AS tbl
WHERE tbl.score > (SELECT AVG(scores.score)
                   FROM (SELECT score
                         FROM projects
                         WHERE topic LIKE '%B%') AS scores)
LIMIT 10;

SELECT st.name,
       AVG(mk.mark)
FROM students AS st
LEFT OUTER JOIN projects AS pr ON st.id=pr.student_id
LEFT OUTER JOIN  marks AS mk ON pr.id=mk.project_id
GROUP BY name
HAVING AVG(mk.mark) > (SELECT AVG(scores.score)
                       FROM (SELECT score
                             FROM projects
                             WHERE topic LIKE '%B%') AS scores);
SELECT st.name,
       st.card,
       gr.groop
FROM students AS st
RIGHT OUTER JOIN groups AS gr ON gr.id=st.group_id
WHERE st.card LIKE '%3%' OR st.card LIKE '%6%'
LIMIT 10;

SELECT st.name,
       st.card,
       gr.groop,
       pr.score
FROM students AS st
RIGHT OUTER JOIN groups AS gr ON gr.id=st.group_id
LEFT OUTER JOIN projects AS pr ON st.id=pr.student_id
WHERE pr.score > (SELECT AVG(scores.score)
                  FROM (SELECT score
                        FROM projects
                        WHERE topic LIKE '%A%' OR topic LIKE '%a%') AS scores)
LIMIT 10;
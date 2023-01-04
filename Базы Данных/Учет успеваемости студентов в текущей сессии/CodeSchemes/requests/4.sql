SELECT st.name,
       gr.groop
FROM groups AS gr
LEFT OUTER JOIN students AS st ON gr.groop=st.group_id
WHERE st.name LIKE '%B%' OR st.name LIKE '%S%'
LIMIT 5;

SELECT st.name,
       ex.mark
FROM exams AS ex
LEFT OUTER JOIN students AS st ON st.book=ex.student_id
WHERE ex.mark > (SELECT AVG(mark)
                 FROM exams
                 WHERE mark > (SELECT AVG(mark)
                              FROM exams))
LIMIT 10;
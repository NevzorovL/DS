SELECT st.name,
       gr.groop,
       fc.name
FROM students AS st
JOIN groups AS gr ON st.group_id=gr.groop
JOIN faculties AS fc ON gr.facultie_id=fc.id
LIMIT 10;

SELECT gr.groop,
       st.book,
       ex.mark
FROM exams AS ex
JOIN students AS st ON st.book=ex.student_id
JOIN groups AS gr ON gr.groop=st.group_id
LIMIT 10;

SELECT te.name,
       di.name,
       ex.discipline_id
FROM exams AS ex
JOIN disciplines AS di ON di.id=ex.discipline_id
JOIN teachers AS te ON te.id=di.teacher_id
LIMIT 10;
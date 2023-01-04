SELECT st.name,
       gr.groop,
       me.name
FROM mentors AS me
JOIN students AS st ON me.id=st.mentor_id
JOIN groups AS gr ON gr.id=st.group_id;

SELECT st.name,
       pr.topic,
       mk.mark AS ОценкаКоммиссии,
       pr.score AS СуммарныйБалл
FROM students AS st 
JOIN projects AS pr ON st.id=pr.student_id
JOIN marks AS mk ON pr.id=mk.project_id
LIMIT 10;

SELECT pr.topic,
       mk.mark,
       co.name
FROM projects AS pr
JOIN marks AS mk ON pr.id=mk.project_id
JOIN commission as co ON co.id=mk.commission_id
LIMIT 10;

SELECT me.name,
       me.is_commission,
       co.name
FROM mentors AS me
JOIN commission as co ON co.id=me.commission_id;
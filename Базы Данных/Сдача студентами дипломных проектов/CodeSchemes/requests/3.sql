SELECT st.name,
       gr.groop
FROM students AS st
LEFT OUTER JOIN groups AS gr ON gr.id=st.group_id
LIMIT 10;


SELECT st.name,
       gr.groop
FROM students AS st
RIGHT OUTER JOIN groups AS gr ON gr.id=st.group_id
LIMIT 10;


SELECT st.name,
       gr.groop
FROM students AS st
INNER JOIN groups AS gr ON gr.id=st.group_id
LIMIT 10;


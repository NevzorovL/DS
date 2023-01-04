SELECT gr.groop,
       st.name
FROM groups AS gr
LEFT OUTER JOIN students AS st ON gr.groop=st.group_id
LIMIT 5;

SELECT gr.groop,
       st.name
FROM groups AS gr
RIGHT OUTER JOIN students AS st ON gr.groop=st.group_id
LIMIT 5;

SELECT gr.groop,
       st.name
FROM groups AS gr
FULL OUTER JOIN students AS st ON gr.groop=st.group_id
LIMIT 5;
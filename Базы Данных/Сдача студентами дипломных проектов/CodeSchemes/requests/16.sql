SELECT array_to_json(array_agg(row_to_json (st))) FROM (
    SELECT st.name,
           st.card,
           gr.groop
    FROM students AS st
    RIGHT OUTER JOIN groups AS gr ON gr.id=st.group_id
) st;

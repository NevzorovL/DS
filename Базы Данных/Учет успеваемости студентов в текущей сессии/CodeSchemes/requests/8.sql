-- создадим изменяемое представление
CREATE OR REPLACE VIEW students_view AS
    SELECT *
    FROM groups AS gr
    LEFT OUTER JOIN students AS st ON gr.groop=st.group_id
    WHERE gr.groop = '5812-01'
       OR gr.groop = '5812-02';

SELECT *
FROM students_view;

-- изменим представление
CREATE OR REPLACE VIEW students_view AS
    SELECT *
    FROM groups AS gr
    LEFT OUTER JOIN students AS st ON gr.groop=st.group_id
    WHERE gr.groop = '8080-01'
       OR gr.groop = '8080-02';

SELECT *
FROM students_view;

-- посмотрим на созданное представление
\dv

-- удаляем представление
DROP VIEW students_view;




-- создадим неизменяемое представление
CREATE VIEW students_view AS
    SELECT *
    FROM groups AS gr
    LEFT OUTER JOIN students AS st ON gr.groop=st.group_id
    WHERE gr.groop = '5812-01'
       OR gr.groop = '5812-02';

SELECT *
FROM students_view;

-- попробуем его изменить
CREATE VIEW students_view AS
    SELECT *
    FROM groups AS gr
    LEFT OUTER JOIN students AS st ON gr.groop=st.group_id
    WHERE gr.groop = '8080-01'
       OR gr.groop = '8080-02';

SELECT *
FROM students_view;

-- посмотрим на итоговое представление
\dv

-- удаляем представление
DROP VIEW students_view;
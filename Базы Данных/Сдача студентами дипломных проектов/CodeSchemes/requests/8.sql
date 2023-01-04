-- создадим изменяемое представление
CREATE OR REPLACE VIEW groups_view AS
    SELECT *
    FROM groups
    WHERE groop = '0024-01'
       OR groop = '0024-02';

SELECT *
FROM groups_view;

-- изменим представление
CREATE OR REPLACE VIEW groups_view AS
    SELECT *
    FROM groups
    WHERE groop = '0024-03'
       OR groop = '0024-04';

SELECT *
FROM groups_view;

-- посмотрим на созданное представление
\dv

-- удаляем представление
DROP VIEW groups_view;




-- создадим неизменяемое представление
CREATE VIEW groups_view AS
    SELECT *
    FROM groups
    WHERE groop = '0024-01'
       OR groop = '0024-02'
    WITH CASCADED CHECK OPTION;

SELECT *
FROM groups_view;

-- попробуем его изменить
CREATE VIEW groups_view AS
    SELECT *
    FROM groups
    WHERE groop = '0024-03'
       OR groop = '0024-04'
    WITH CASCADED CHECK OPTION;

SELECT *
FROM groups_view;

-- посмотрим на итоговое представление
\dv

-- удаляем представление
DROP VIEW groups_view;
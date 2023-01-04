-- создадим изменяемое представление
CREATE OR REPLACE VIEW areas_view AS
    SELECT *
    FROM areas
    WHERE area = 'Adana'
       OR area = 'Delta';

SELECT *
FROM areas_view;

-- изменим представление
CREATE OR REPLACE VIEW areas_view AS
    SELECT *
    FROM areas
    WHERE area = 'Khmelnytskyi oblast'
       OR area = 'Norte de Santander';

SELECT *
FROM areas_view;

-- посмотрим на созданное представление
\dv

-- удаляем представление
DROP VIEW areas_view




-- создадим неизменяемое представление
CREATE VIEW banks_view AS
    SELECT *
    FROM banks
    WHERE name = 'SBER'
       OR name = 'VTBR'
    WITH CASCADED CHECK OPTION;

SELECT *
FROM banks_view;

-- попробуем его изменить
CREATE VIEW banks_view AS
    SELECT *
    FROM banks
    WHERE name = 'TCSG'
       OR name = 'ROSB'
    WITH CASCADED CHECK OPTION;

SELECT *
FROM banks_view;

-- посмотрим на итоговое представление
\dv

-- удаляем представление
DROP VIEW banks_view
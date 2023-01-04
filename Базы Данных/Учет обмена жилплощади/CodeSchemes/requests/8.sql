-- создадим изменяемое представление
CREATE OR REPLACE VIEW district_view AS
    SELECT *
    FROM districts
    WHERE area = 'Noord Holland'
       OR area = 'Connacht';

SELECT *
FROM district_view;

-- изменим представление
CREATE OR REPLACE VIEW district_view AS
    SELECT *
    FROM districts
    WHERE area = 'Lima'
       OR area = 'Trondelag';

SELECT *
FROM district_view;

-- посмотрим на созданное представление
\dv

-- удаляем представление
DROP VIEW district_view




-- создадим неизменяемое представление
CREATE VIEW customer_view AS
    SELECT *
    FROM customers
    WHERE name = 'Valentine Wise'
       OR name = 'Baxter Pierce'
    WITH CASCADED CHECK OPTION;

SELECT *
FROM customer_view;

-- попробуем его изменить
CREATE VIEW customer_view AS
    SELECT *
    FROM customers
    WHERE name = 'Hanae Clay'
       OR name = 'Eve Stevenson'
    WITH CASCADED CHECK OPTION;

SELECT *
FROM customer_view;

-- посмотрим на итоговое представление
\dv

-- удаляем представление
DROP VIEW customer_view
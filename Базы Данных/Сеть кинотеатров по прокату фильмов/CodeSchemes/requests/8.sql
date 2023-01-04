-- создадим изменяемое представление
CREATE OR REPLACE VIEW film_view AS
    SELECT *
    FROM films
    WHERE year = '2012'
       OR year = '2014';

SELECT *
FROM film_view;

-- изменим представление
CREATE OR REPLACE VIEW film_view AS
    SELECT *
    FROM films
    WHERE year = '2018'
       OR year = '2020';


SELECT *
FROM film_view;

-- посмотрим на созданное представление
\dv

-- удаляем представление
DROP VIEW film_view;




-- создадим неизменяемое представление
CREATE VIEW film_view AS
    SELECT *
    FROM films
    WHERE year = '2012'
       OR year = '2024';

SELECT *
FROM film_view;

-- попробуем его изменить
CREATE VIEW film_view AS
    SELECT *
    FROM films
    WHERE year = '2018'
       OR year = '2020';

SELECT *
FROM film_view;

-- посмотрим на итоговое представление
\dv

-- удаляем представление
DROP VIEW film_view;
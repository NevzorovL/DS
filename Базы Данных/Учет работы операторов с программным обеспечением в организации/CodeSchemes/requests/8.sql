-- создадим изменяемое представление
CREATE OR REPLACE VIEW org_view AS
    SELECT wo.name AS station_name,
           so.name AS software_name
    FROM workstations AS wo
    LEFT OUTER JOIN softwares AS so ON so.id=wo.software_id
    WHERE so.name = 'PyCharm'
       OR so.name = 'Anaconda';

SELECT *
FROM org_view;

-- изменим представление
CREATE OR REPLACE VIEW org_view AS
    SELECT wo.name AS station_name,
           so.name AS software_name
    FROM workstations AS wo
    LEFT OUTER JOIN softwares AS so ON so.id=wo.software_id
    WHERE so.name = 'PostgreSQL'
       OR so.name = 'Visual Studio';

SELECT *
FROM org_view;

-- посмотрим на созданное представление
\dv

-- удаляем представление
DROP VIEW org_view;




-- создадим неизменяемое представление
CREATE VIEW org_view AS
    SELECT wo.name AS station_name,
           so.name AS software_name
    FROM workstations AS wo
    LEFT OUTER JOIN softwares AS so ON so.id=wo.software_id
    WHERE so.name = 'PyCharm'
       OR so.name = 'Anaconda';

SELECT *
FROM org_view;

-- попробуем его изменить
CREATE VIEW org_view AS
    SELECT wo.name AS station_name,
           so.name AS software_name
    FROM workstations AS wo
    LEFT OUTER JOIN softwares AS so ON so.id=wo.software_id
    WHERE so.name = 'PostgreSQL'
       OR so.name = 'Visual Studio';

SELECT *
FROM org_view;

-- посмотрим на итоговое представление
\dv

-- удаляем представление
DROP VIEW org_view;
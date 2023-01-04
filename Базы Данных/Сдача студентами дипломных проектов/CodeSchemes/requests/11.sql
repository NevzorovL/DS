-- проектов ДО
SELECT COUNT(topic)
FROM projects;

-- проверка каскадного удаления
SELECT COUNT(mark)
FROM marks;

-- удалние через процедуру
CREATE PROCEDURE clean_emp() AS '
    DELETE FROM projects
        WHERE score < 3;
' LANGUAGE SQL;

CALL clean_emp();

DROP PROCEDURE clean_emp;

-- проектов ПОСЛЕ
SELECT COUNT(topic)
FROM projects;

-- проверка каскадного удаления
SELECT COUNT(mark)
FROM marks;

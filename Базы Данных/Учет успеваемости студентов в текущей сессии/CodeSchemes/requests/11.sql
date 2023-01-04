-- проектов ДО
SELECT COUNT(mark)
FROM exams;

-- удалние через процедуру
CREATE PROCEDURE clean_emp() AS '
    DELETE FROM exams
        WHERE mark < 3;
' LANGUAGE SQL;

CALL clean_emp();

DROP PROCEDURE clean_emp;

-- проектов ПОСЛЕ
SELECT COUNT(mark)
FROM exams;

-- проектов ДО
SELECT COUNT(income)
FROM organizations;

-- удалние через процедуру
CREATE PROCEDURE clean_emp() AS '
    DELETE FROM organizations
        WHERE income < 75000;
' LANGUAGE SQL;

CALL clean_emp();

DROP PROCEDURE clean_emp;

-- проектов ПОСЛЕ
SELECT COUNT(income)
FROM organizations;

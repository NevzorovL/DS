-- проектов ДО
SELECT COUNT(income)
FROM incomes;

-- удалние через процедуру
CREATE PROCEDURE clean_emp() AS '
    DELETE FROM incomes
           WHERE income < 200000;
' LANGUAGE SQL;

CALL clean_emp();

DROP PROCEDURE clean_emp;

-- проектов ПОСЛЕ
SELECT COUNT(income)
FROM incomes;

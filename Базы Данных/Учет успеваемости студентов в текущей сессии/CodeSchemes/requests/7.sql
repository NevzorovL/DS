SELECT *
FROM exams AS ex
ORDER BY ex.id ASC
LIMIT 12;

BEGIN;

-- транзакция 1
UPDATE exams SET mark = mark - 1
    WHERE student_id = '667511';
SAVEPOINT my_savepoint;
UPDATE exams SET mark = mark + 1
    WHERE student_id = '717505';
SAVEPOINT my_savepoint;

-- транзакция 2
UPDATE exams SET mark = mark - 1
    WHERE student_id = '667511';
SAVEPOINT my_savepoint;
UPDATE exams SET mark = mark + 1
    WHERE student_id = '791997';
ROLLBACK TO my_savepoint; -- откат на операцию 2.1 и отмена операции 2.2

-- корректировка транзакции 2
UPDATE exams SET mark = mark + 1
    WHERE student_id = '717505';

COMMIT;

SELECT *
FROM exams AS ex
ORDER BY ex.id ASC
LIMIT 12;
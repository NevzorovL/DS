SELECT *
FROM incomes
LIMIT 3;

BEGIN;

-- транзакция 1
UPDATE incomes SET income = income - 100000
    WHERE theater_id = '1';
SAVEPOINT my_savepoint;
UPDATE incomes SET income = income + 100000
    WHERE theater_id = '2';
SAVEPOINT my_savepoint;

-- транзакция 2
UPDATE incomes SET income = income - 100000
    WHERE theater_id = '1';
SAVEPOINT my_savepoint;
UPDATE incomes SET income = income + 100000
    WHERE theater_id = '3';
ROLLBACK TO my_savepoint; -- откат на операцию 2.1 и отмена операции 2.2

-- корректировка транзакции 2
UPDATE incomes SET income = income + 100000
    WHERE theater_id = '2';

COMMIT;

SELECT *
FROM incomes
ORDER BY theater_id ASC
LIMIT 3;
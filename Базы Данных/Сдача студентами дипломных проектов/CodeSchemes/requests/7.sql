SELECT *
FROM projects AS pr
ORDER BY pr.id ASC
LIMIT 3;

BEGIN;

-- транзакция 1
UPDATE projects SET score = score - 1
    WHERE topic = 'Evaluation vocabulary';
SAVEPOINT my_savepoint;
UPDATE projects SET score = score + 1
    WHERE topic = 'Language representation';
SAVEPOINT my_savepoint;

-- транзакция 2
UPDATE projects SET score = score - 1
    WHERE topic = 'Evaluation vocabulary';
SAVEPOINT my_savepoint;
UPDATE projects SET score = score + 1
    WHERE topic = 'Social language variation';
ROLLBACK TO my_savepoint; -- откат на операцию 2.1 и отмена операции 2.2

-- корректировка транзакции 2
UPDATE projects SET score = score + 1
    WHERE topic = 'Language representation';

COMMIT;

SELECT *
FROM projects AS pr
ORDER BY pr.id ASC
LIMIT 3;
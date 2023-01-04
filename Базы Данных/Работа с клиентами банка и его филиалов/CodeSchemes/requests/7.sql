SELECT *
FROM accounts AS ac
ORDER BY ac.id ASC
LIMIT 3;

BEGIN;

-- транзакция 1
UPDATE accounts SET balance = balance - 100.00
    WHERE id = 'A5E107A6-9E4D-A8E9-98BC-16C373FD2585';
SAVEPOINT my_savepoint;
UPDATE accounts SET balance = balance + 100.00
    WHERE id = 'A5E107A6-9E4D-A8E9-98BC-16C373FD2586';
SAVEPOINT my_savepoint;

-- транзакция 2
UPDATE accounts SET balance = balance - 100.00
    WHERE id = 'A5E107A6-9E4D-A8E9-98BC-16C373FD2585';
SAVEPOINT my_savepoint;
UPDATE accounts SET balance = balance + 100.00
    WHERE id = '713232B4-75CE-2E19-BE9D-D59DD419DE45';
ROLLBACK TO my_savepoint; -- откат на операцию 2.1 и отмена операции 2.2

-- корректировка транзакции 2
UPDATE accounts SET balance = balance + 100.00
    WHERE id = 'A5E107A6-9E4D-A8E9-98BC-16C373FD2586';

COMMIT;

SELECT *
FROM accounts AS ac
ORDER BY ac.id ASC
LIMIT 3;

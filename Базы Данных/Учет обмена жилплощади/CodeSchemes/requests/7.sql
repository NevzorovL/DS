SELECT *
FROM balance
WHERE customer_id = 'GQH16EBV3JR'
  OR customer_id = 'XGI76OKH0FQ'
  OR customer_id = 'JZD04KVT7RL';

BEGIN;

-- транзакция 1
UPDATE balance SET balance = balance - 400000.00
    WHERE customer_id = 'GQH16EBV3JR';
SAVEPOINT save_point;
UPDATE balance SET balance = balance + 400000.00
    WHERE customer_id = 'XGI76OKH0FQ';
SAVEPOINT save_point;

-- транзакция 2
UPDATE balance SET balance = balance - 400000.00
    WHERE customer_id = 'GQH16EBV3JR';
SAVEPOINT save_point;
UPDATE balance SET balance = balance + 400000.00
    WHERE customer_id = 'JZD04KVT7RL';
ROLLBACK TO save_point; -- откат на операцию 2.1 и отмена операции 2.2

-- корректировка транзакции 2
UPDATE balance SET balance = balance + 400000.00
    WHERE customer_id = 'XGI76OKH0FQ';

COMMIT;

SELECT *
FROM balance
WHERE customer_id = 'GQH16EBV3JR'
  OR customer_id = 'XGI76OKH0FQ'
  OR customer_id = 'JZD04KVT7RL';
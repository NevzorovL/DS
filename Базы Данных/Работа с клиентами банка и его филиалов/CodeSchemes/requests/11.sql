SELECT *
FROM accounts
WHERE account_id = 'A5E107A6-9E4D-A8E9-98BC-16C373FD2585'
   OR account_id = 'A5E107A6-9E4D-A8E9-98BC-16C373FD2586';

-- создаем процедуру
CREATE OR REPLACE PROCEDURE TRANSFER(
   sender varchar,
   receiver varchar, 
   amount dec
)

language plpgsql    
as $$
BEGIN
    UPDATE accounts 
    SET balance = balance - amount 
    WHERE account_id = sender;

    UPDATE accounts 
    SET balance = balance + amount 
    WHERE account_id = receiver;
    COMMIT;
END;
$$;

-- списываем и прибавляем 300 с одного счета на другой
CALL TRANSFER('A5E107A6-9E4D-A8E9-98BC-16C373FD2585','A5E107A6-9E4D-A8E9-98BC-16C373FD2586', 300);

SELECT *
FROM accounts
WHERE account_id = 'A5E107A6-9E4D-A8E9-98BC-16C373FD2585'
   OR account_id = 'A5E107A6-9E4D-A8E9-98BC-16C373FD2586'


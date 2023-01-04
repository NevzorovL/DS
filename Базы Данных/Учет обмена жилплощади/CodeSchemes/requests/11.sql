SELECT *
FROM balance
WHERE customer_id = 'EEP25VSP7KO'
   OR customer_id = 'WJM65UOL8BE';

-- создаем процедуру
CREATE OR REPLACE PROCEDURE TRANSFER(
   sender varchar,
   receiver varchar, 
   amount dec
)

language plpgsql    
as $$
BEGIN
    UPDATE balance 
    SET balance = balance - amount 
    WHERE customer_id = sender;

    UPDATE balance 
    SET balance = balance + amount 
    WHERE customer_id = receiver;
    COMMIT;
END;
$$;

-- списываем и прибавляем 300 с одного счета на другой
CALL TRANSFER('WJM65UOL8BE','EEP25VSP7KO', 1000000);

SELECT *
FROM balance
WHERE customer_id = 'EEP25VSP7KO'
   OR customer_id = 'WJM65UOL8BE'
-- создание функции
CREATE FUNCTION account_stamp() RETURNS trigger AS $account_stamp$
    BEGIN
        IF NEW.branch_id IS NULL THEN
            RAISE EXCEPTION 'branch_id cannot be null';
        END IF;

        IF NEW.customer_id IS NULL THEN
            RAISE EXCEPTION '% customer_id cannot be null', NEW.customer_id;
        END IF;

        IF NEW.id IS NULL THEN
            RAISE EXCEPTION '% account_id cannot be null', NEW.account_id;
        END IF;

        IF NEW.balance < 0 THEN
            RAISE EXCEPTION '% cannot have a negative balance', NEW.balance;
        END IF;
        RETURN NEW;
    END;
$account_stamp$ LANGUAGE plpgsql;

-- создание триггера
CREATE TRIGGER account_stamp BEFORE INSERT OR UPDATE ON accounts
    FOR EACH ROW EXECUTE FUNCTION account_stamp();

-- проверка неправильными данными
INSERT INTO accounts (branch_id,customer_id,account_id,balance)
VALUES
  (1002,'EFD2FJYV9MM','713232B4-75CE-2E1F-BE9D-D59DD419FE45',-1);

DROP FUNCTION account_stamp CASCADE;

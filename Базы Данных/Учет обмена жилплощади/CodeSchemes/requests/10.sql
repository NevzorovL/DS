-- создание функции
CREATE FUNCTION customers_stamp() RETURNS trigger AS $customers_stamp$
    BEGIN
        IF NEW.customer_id IS NULL THEN
            RAISE EXCEPTION 'customer_id cannot be null';
        END IF;

        IF NEW.name IS NULL THEN
            RAISE EXCEPTION '% name cannot be null', NEW.name;
        END IF;

        IF NEW.address IS NULL THEN
            RAISE EXCEPTION '% address cannot be null', NEW.address;
        END IF;

        IF NEW.area IS NULL THEN
            RAISE EXCEPTION '% area cannot be null', NEW.area;
        END IF;
        RETURN NEW;
    END;
$customers_stamp$ LANGUAGE plpgsql;

-- создание триггера
CREATE TRIGGER customers_stamp BEFORE INSERT OR UPDATE ON customers
    FOR EACH ROW EXECUTE FUNCTION customers_stamp();

-- проверка неправильными данными
INSERT INTO customers (customer_id,name,address,area)
VALUES
  ('F1V62WHDGLI','Garry Oldman',NULL,'Pinta');

DROP FUNCTION customers_stamp CASCADE;
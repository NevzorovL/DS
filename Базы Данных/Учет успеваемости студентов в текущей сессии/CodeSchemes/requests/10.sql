-- создание функции
CREATE FUNCTION customer_stamp() RETURNS trigger AS $customer_stamp$
    BEGIN
        IF NEW.name IS NULL THEN
            RAISE EXCEPTION 'name cannot be null';
        END IF;

        IF NEW.address IS NULL THEN
            RAISE EXCEPTION '% address cannot be null', NEW.address;
        END IF;

        IF NEW.area IS NULL THEN
            RAISE EXCEPTION '% area cannot be null', NEW.area;
        END IF;

        RETURN NEW;
    END;
$customer_stamp$ LANGUAGE plpgsql;

-- создание триггера
CREATE TRIGGER customer_stamp BEFORE INSERT OR UPDATE ON customers
    FOR EACH ROW EXECUTE FUNCTION customer_stamp();

-- проверка неправильными данными
INSERT INTO customers (name, address, area)
VALUES
  ('Alfred', NULL, 'Briton Beach');

DROP FUNCTION customer_stamp CASCADE;

-- создание функции
CREATE FUNCTION oper_stamp() RETURNS trigger AS $oper_stamp$
    BEGIN
        IF NEW.server_id IS NULL THEN
            RAISE EXCEPTION 'server_id cannot be null';
        END IF;

        IF NEW.name IS NULL THEN
            RAISE EXCEPTION '% name cannot be null', NEW.name;
        END IF;

        IF NEW.post IS NULL THEN
            RAISE EXCEPTION '% post cannot be null', NEW.post;
        END IF;

        RETURN NEW;
    END;
$oper_stamp$ LANGUAGE plpgsql;

-- создание триггера
CREATE TRIGGER oper_stamp BEFORE INSERT OR UPDATE ON operators
    FOR EACH ROW EXECUTE FUNCTION oper_stamp();

-- проверка неправильными данными
INSERT INTO operators (server_id, name, post)
VALUES
  (2, NULL, NULL);

DROP FUNCTION oper_stamp CASCADE;

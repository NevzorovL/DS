-- создание функции
CREATE FUNCTION films_stamp() RETURNS trigger AS $films_stamp$
    BEGIN
        IF NEW.name IS NULL THEN
            RAISE EXCEPTION 'name cannot be null';
        END IF;

        IF NEW.genre_id IS NULL THEN
            RAISE EXCEPTION '% genre_id cannot be null', NEW.genre_id;
        END IF;

        IF NEW.producer_id IS NULL THEN
            RAISE EXCEPTION '% producer_id cannot be null', NEW.producer_id;
        END IF;
        
        IF NEW.year IS NULL THEN
            RAISE EXCEPTION '% year cannot be null', NEW.year;
        END IF;

        RETURN NEW;
    END;
$films_stamp$ LANGUAGE plpgsql;

-- создание триггера
CREATE TRIGGER films_stamp BEFORE INSERT OR UPDATE ON films
    FOR EACH ROW EXECUTE FUNCTION films_stamp();

-- проверка неправильными данными
INSERT INTO films (name, genre_id, producer_id, year)
VALUES
  (NULL, 4, 2, '1950');

DROP FUNCTION films_stamp CASCADE;

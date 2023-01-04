-- создание функции
CREATE FUNCTION project_stamp() RETURNS trigger AS $project_stamp$
    BEGIN
        IF NEW.topic IS NULL THEN
            RAISE EXCEPTION 'topic cannot be null';
        END IF;

        IF NEW.score IS NULL THEN
            RAISE EXCEPTION '% score cannot be null', NEW.score;
        END IF;

        IF NEW.student_id IS NULL THEN
            RAISE EXCEPTION '% student_id cannot be null', NEW.student_id;
        END IF;

        RETURN NEW;
    END;
$project_stamp$ LANGUAGE plpgsql;

-- создание триггера
CREATE TRIGGER project_stamp BEFORE INSERT OR UPDATE ON projects
    FOR EACH ROW EXECUTE FUNCTION project_stamp();

-- проверка неправильными данными
INSERT INTO projects (topic, score, student_id)
VALUES
  ('TEST VKR', 5, NULL);

DROP FUNCTION project_stamp CASCADE;

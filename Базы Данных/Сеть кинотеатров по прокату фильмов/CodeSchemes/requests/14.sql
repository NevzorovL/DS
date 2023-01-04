CREATE TYPE estimation AS ENUM ('Horror', 'Drama', 'History');

CREATE TABLE estimation_table (
    id SERIAL,
    name TEXT,
    est estimation
);

INSERT INTO estimation_table (id, name, est)
VALUES
    (1, 'Vyasov Street', 'Horror'),
    (2, 'Green Mile', 'Drama'),
    (3, 'Wofl from Street', 'History');
    (4, 'Seavales on earth', 'Documental');

SELECT *
FROM estimation_table;

DROP TABLE estimation_table;
DROP TYPE estimation;

CREATE TYPE gender_type AS ENUM ('M', 'W', 'N/S');

CREATE TABLE gender_table (
    id serial,
    name text,
    gender gender_type
);

INSERT INTO gender_table (id, name, gender)
VALUES
    (1, 'jonny', 'M'),
    (2, 'bobby', 'W'),
    (3, 'sammy', 'N/S');
    (4, 'santiago', 'Trans');

SELECT *
FROM gender_table;

DROP TABLE gender_table;
DROP TYPE gender_type;

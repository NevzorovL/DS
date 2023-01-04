CREATE TYPE gender_type AS ENUM ('M', 'W', 'N/S');

CREATE TABLE gender_table (
    id serial,
    name text,
    gender gender_type
);

INSERT INTO gender_table (id, name, gender)
VALUES
    (1, 'Valentine Wise', 'M'),
    (2, 'Baxter Pierce', 'W'),
    (3, 'Ruby Lindsey', 'N/S'),
    (4, 'Jone Mkawoy', 'Who Im?');

SELECT *
FROM gender_table;

DROP TABLE gender_table;
DROP TYPE gender_type;
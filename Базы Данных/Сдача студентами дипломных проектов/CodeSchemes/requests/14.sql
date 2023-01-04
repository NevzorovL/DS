CREATE TYPE graduate AS ENUM ('Bachelor', 'Master', 'Doctor');

CREATE TABLE graduate_table (
    id serial,
    name text,
    gender graduate
);

INSERT INTO graduate_table (id, name, gender)
VALUES
    (1, 'Truvor', 'Bachelor'),
    (2, 'Jon', 'Master'),
    (3, 'Emirald', 'Doctor');
    (4, 'Amigo', 'Another one guy with the red diploma');

SELECT *
FROM graduate_table;

DROP TABLE graduate_table;
DROP TYPE graduate;

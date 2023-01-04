CREATE TYPE classification AS ENUM ('license', 'trial version', 'pirated version');

CREATE TABLE classification_table (
    id SERIAL,
    name TEXT,
    est classification
);

INSERT INTO classification_table (id, name, est)
VALUES
    (1, 'PostgreSQL', 'license'),
    (2, 'Anaconda', 'trial version'),
    (3, '3DsMax', 'pirated version');
    (4, 'PyCharm', 'community version');

SELECT *
FROM classification_table;

DROP TABLE classification_table;
DROP TYPE classification;

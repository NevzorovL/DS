CREATE TYPE estimation AS ENUM ('excellent', 'good', 'unsatisfactory');

CREATE TABLE estimation_table (
    id SERIAL,
    name TEXT,
    est estimation
);

INSERT INTO estimation_table (id, name, est)
VALUES
    (1, 'Mike', 'excellent'),
    (2, 'Edward', 'good'),
    (3, 'Wigfrid', 'unsatisfactory');
    (4, 'Wilson', 'poor');

SELECT *
FROM estimation_table;

DROP TABLE estimation_table;
DROP TYPE estimation;

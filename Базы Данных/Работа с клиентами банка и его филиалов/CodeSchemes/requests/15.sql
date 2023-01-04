CREATE EXTENSION IF NOT EXISTS tablefunc;

CREATE TABLE cross_request (
    name TEXT,
    bank_name TEXT,
    balance INTEGER
);

INSERT INTO cross_request (name,bank_name,balance)
VALUES
    ('jonny', 'SBER', 135),
    ('jonny', 'VTBR', 752),
    ('bobby', 'SBER', 159),
    ('bobby', 'VTBR', 231),
    ('sammy', 'SBER', 852),
    ('sammy', 'VTBR', 178);

SELECT *
FROM crosstab(
    'SELECT name,
            bank_name,
            balance
     FROM   cross_request
     ORDER  BY 1'
   ) AS ct ("NAME" text, "SBER" int, "VTBR" int);


DROP EXTENSION tablefunc;
DROP TABLE cross_request;

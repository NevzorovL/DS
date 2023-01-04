CREATE EXTENSION IF NOT EXISTS tablefunc;

CREATE TABLE cross_request (
    name TEXT,
    area TEXT,
    balance INTEGER
);

INSERT INTO cross_request (name,area,balance)
VALUES
    ('Valentine Wise', 'Mazowieckie', 135),
    ('Valentine Wise', 'Colorado', 752),
    ('Baxter Pierce', 'Mazowieckie', 159),
    ('Baxter Pierce', 'Colorado', 231),
    ('Ruby Lindsey', 'Mazowieckie', 852),
    ('Ruby Lindsey', 'Colorado', 178);

SELECT *
FROM crosstab(
    'SELECT name,
            area,
            balance
     FROM   cross_request
     ORDER  BY 1'
   ) AS ct ("NAME" text, "Mazowieckie" int, "Colorado" int);


DROP EXTENSION tablefunc;
DROP TABLE cross_request;

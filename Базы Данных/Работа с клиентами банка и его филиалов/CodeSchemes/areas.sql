DROP TABLE IF EXISTS "areas";

CREATE TABLE "areas" (
  id SERIAL PRIMARY KEY,
  branch_id INTEGER UNIQUE NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
  area TEXT NOT NULL
);

INSERT INTO areas (branch_id,area)
VALUES
  (1000,'Khmelnytskyi oblast'),
  (1001,'Delta'),
  (1002,'Adana'),
  (1003,'Friesland'),
  (1004,'Guanajuato');

INSERT INTO areas (branch_id,area)
VALUES
  (1005,'Adana'),
  (1006,'Delta'),
  (1007,'Norte de Santander'),
  (1008,'Queensland'),
  (1009,'Huadong');

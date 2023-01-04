DROP TABLE IF EXISTS "residents";

CREATE TABLE "residents" (
  id VARCHAR(7) PRIMARY KEY,
  size INTEGER
);

INSERT INTO residents (id,size)
VALUES
  ('D3J 4S3',15),
  ('N4Y 6B5',30),
  ('C8W 4O3',60),
  ('Q1J 5L5',25),
  ('M6C 4P1',40);

INSERT INTO residents (id,size)
VALUES
  ('O4B 4X2',20),
  ('Z9N 6C7',35),
  ('Y8C 3C9',25),
  ('R6A 4B5',60),
  ('T4Y 4S7',10);

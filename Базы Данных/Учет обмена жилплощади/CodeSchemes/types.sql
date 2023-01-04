DROP TABLE IF EXISTS "types";

CREATE TABLE "types" (
  id SERIAL PRIMARY KEY,
  residence_id VARCHAR(7) UNIQUE NOT NULL REFERENCES residents(id) ON DELETE CASCADE,
  rooms INTEGER
);

INSERT INTO types (residence_id,rooms)
VALUES
  ('D3J 4S3',2),
  ('N4Y 6B5',1),
  ('C8W 4O3',3),
  ('Q1J 5L5',3),
  ('M6C 4P1',2);

INSERT INTO types (residence_id,rooms)
VALUES
  ('O4B 4X2',3),
  ('Z9N 6C7',2),
  ('Y8C 3C9',3),
  ('R6A 4B5',1),
  ('T4Y 4S7',1);

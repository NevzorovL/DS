DROP TABLE IF EXISTS "commission";

CREATE TABLE "commission" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

INSERT INTO commission (name)
VALUES
  ('Jonah Osborn'),
  ('Piper Medina'),
  ('Hadley Colon'),
  ('Jeanette Roberson'),
  ('Darius Vazquez');

INSERT INTO commission (name)
VALUES
  ('Shay Terry');

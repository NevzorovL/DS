DROP TABLE IF EXISTS "faculties";

CREATE TABLE "faculties" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO faculties (name)
VALUES
  ('Institute of Engineering Sciences'),
  ('Institute of Mathematical Modeling and Igropractic'),
  ('Institute of Medicine and Experimental Biology');

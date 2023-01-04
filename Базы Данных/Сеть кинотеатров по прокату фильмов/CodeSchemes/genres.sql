DROP TABLE IF EXISTS "genres";

CREATE TABLE "genres" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) UNIQUE NOT NULL
);

INSERT INTO genres (name)
VALUES
  ('Drama'),
  ('Comedy'),
  ('Thriller'),
  ('Biography'),
  ('Documentary'),
  ('Horror'),
  ('Anime');

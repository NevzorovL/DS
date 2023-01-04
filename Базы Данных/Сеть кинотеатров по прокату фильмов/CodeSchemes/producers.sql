DROP TABLE IF EXISTS "producers";

CREATE TABLE "producers" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

INSERT INTO producers (name)
VALUES
  ('Shay Walters'),
  ('Inga Hendricks'),
  ('Paul Sutton'),
  ('Anjolie Moore'),
  ('Tanner Burton');
INSERT INTO producers (name)
VALUES
  ('Yeo Guerra'),
  ('Dai Hobbs'),
  ('Knox Moses'),
  ('Wynter Graham'),
  ('Nolan Davidson');
INSERT INTO producers (name)
VALUES
  ('Andrew Nieves'),
  ('Fulton Casey');

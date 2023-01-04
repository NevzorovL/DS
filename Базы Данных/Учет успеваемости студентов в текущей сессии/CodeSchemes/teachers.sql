DROP TABLE IF EXISTS "teachers";

CREATE TABLE "teachers" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

INSERT INTO teachers (name)
VALUES
  ('Jada F. Barton'),
  ('Marsden G. Jacobson'),
  ('Zena U. Mejia'),
  ('Kyle S. Reid'),
  ('Stacy L. Hutchinson');

INSERT INTO teachers (name)
VALUES
  ('Rae F. Glass'),
  ('Fuller M. Cunningham'),
  ('Donna S. Blevins'),
  ('Trevor I. Benson');

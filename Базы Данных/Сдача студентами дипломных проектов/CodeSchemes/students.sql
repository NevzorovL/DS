DROP TABLE IF EXISTS "students";

CREATE TABLE "students" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  card VARCHAR(5) UNIQUE NOT NULL,
  group_id INTEGER NOT NULL REFERENCES groups(id) ON DELETE CASCADE,
  mentor_id INTEGER NOT NULL REFERENCES mentors(id) ON DELETE CASCADE
);

INSERT INTO students (name,card,group_id,mentor_id)
VALUES
  ('Uma Goodman','98124',1,1),
  ('Signe Hopkins','55298',2,2),
  ('Zeph Castillo','89175',3,3),
  ('Kadeem Ferrell','47217',4,4),
  ('Chandler Galloway','21535',1,5);

INSERT INTO students (name,card,group_id,mentor_id)
VALUES
  ('Daria Blevins','62318',2,6),
  ('Julian Gibson','76405',3,7),
  ('Chadwick Gillespie','50662',4,8),
  ('Jenna French','51696',1,9),
  ('Daryl Wall','26181',2,10);

INSERT INTO students (name,card,group_id,mentor_id)
VALUES
  ('Rigel Pruitt','24166',3,11),
  ('Octavius Cash','86436',4,12),
  ('Tatum Mcclain','84018',1,1),
  ('Hasad Lamb','20606',2,2),
  ('Oleg Salazar','74861',3,3);

INSERT INTO students (name,card,group_id,mentor_id)
VALUES
  ('Irene Chang','33764',4,4),
  ('Odysseus Fuentes','65834',1,5),
  ('Bevis Sawyer','35111',2,6),
  ('Chastity Nunez','80486',3,7),
  ('Robin Dunlap','25915',4,8);

INSERT INTO students (name,card,group_id,mentor_id)
VALUES
  ('Edward Merritt','45356',1,9),
  ('Shelly Blair','26273',2,10),
  ('George Brady','24765',3,11),
  ('Brielle Gonzalez','34068',4,12);

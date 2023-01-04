DROP TABLE IF EXISTS "films";

CREATE TABLE "films" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) UNIQUE NOT NULL,
  genre_id INTEGER NOT NULL REFERENCES genres(id) ON DELETE CASCADE,
  producer_id INTEGER NOT NULL REFERENCES producers(id) ON DELETE CASCADE,
  year VARCHAR(4)
);

INSERT INTO films (name,genre_id,producer_id,year)
VALUES
  ('The Green Mile',4,2,'2021'),
  ('Schindlers List',4,12,'2020'),
  ('Escape from Shawshank',3,8,'2004'),
  ('Forrest Gump',3,9,'2005'),
  ('The Lord of the Rings',1,6,'2016');
INSERT INTO films (name,genre_id,producer_id,year)
VALUES
  ('Cocos Secret',1,5,'2001'),
  ('Back to the Future',1,7,'2021'),
  ('Interstellar',4,10,'2020'),
  ('Pulp fiction',4,4,'2015'),
  ('Fighting Club',1,12,'2002');
INSERT INTO films (name,genre_id,producer_id,year)
VALUES
  ('The Dark Knight',2,3,'2013'),
  ('Carried Away by Ghosts',1,11,'2012'),
  ('Sherlock Holmes',2,5,'2009'),
  ('Gladiator',2,1,'2003'),
  ('Shrek',2,6,'2015');
INSERT INTO films (name,genre_id,producer_id,year)
VALUES
  ('Reach out to heaven',1,2,'2014'),
  ('Pirates of the Caribbean',2,5,'2022'),
  ('Shutter Island',3,7,'2023'),
  ('Beginning',1,11,'2013'),
  ('Gentlemen',1,3,'2010');

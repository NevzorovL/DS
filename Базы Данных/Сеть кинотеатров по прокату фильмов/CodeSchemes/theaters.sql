DROP TABLE IF EXISTS "theaters";

CREATE TABLE "theaters" (
  id SERIAL PRIMARY KEY,
  film_id VARCHAR NOT NULL REFERENCES films(name) ON DELETE CASCADE,
  date_from VARCHAR(20) NOT NULL,
  date_to VARCHAR(20) NOT NULL,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL
);

INSERT INTO theaters (film_id,date_from,date_to,name,address)
VALUES
  ('The Green Mile','Sep 25, 2022','Dec 18, 2022','Mirage','476-3720 Curae St.'),
  ('Schindlers List','Sep 19, 2022','Dec 11, 2022','Mirage','476-3720 Curae St.'),
  ('Escape from Shawshank','Sep 23, 2022','Dec 1, 2022','Mirage','476-3720 Curae St.'),
  ('Forrest Gump','Sep 10, 2022','Dec 2, 2022','Mirage','476-3720 Curae St.'),
  ('The Lord of the Rings','Sep 22, 2022','Dec 16, 2022','Mirage','476-3720 Curae St.');

INSERT INTO theaters (film_id,date_from,date_to,name,address)
VALUES
  ('Cocos Secret','Sep 29, 2022','Dec 18, 2022','Mirage','476-3720 Curae St.'),
  ('Back to the Future','Sep 20, 2022','Dec 11, 2022','Mirage','476-3720 Curae St.'),
  ('Interstellar','Sep 1, 2022','Dec 2, 2022','Mirage','476-3720 Curae St.'),
  ('Pulp fiction','Sep 15, 2022','Dec 27, 2022','Mirage','476-3720 Curae St.'),
  ('Fighting Club','Sep 13, 2022','Dec 27, 2022','Mirage','476-3720 Curae St.');

INSERT INTO theaters (film_id,date_from,date_to,name,address)
VALUES
  ('Cocos Secret','Sep 20, 2022','Dec 29, 2022','Silver Cinema','207-4753 Sed St.'),
  ('Back to the Future','Sep 17, 2022','Dec 1, 2022','Silver Cinema','207-4753 Sed St.'),
  ('Interstellar','Sep 19, 2022','Dec 18, 2022','Silver Cinema','207-4753 Sed St.'),
  ('Pulp fiction','Sep 9, 2022','Dec 27, 2022','Silver Cinema','207-4753 Sed St.'),
  ('Fighting Club','Sep 21, 2022','Dec 21, 2022','Silver Cinema','207-4753 Sed St.');

INSERT INTO theaters (film_id,date_from,date_to,name,address)
VALUES
  ('The Dark Knight','Sep 26, 2022','Dec 15, 2022','Silver Cinema','207-4753 Sed St.'),
  ('Carried Away by Ghosts','Sep 5, 2022','Dec 9, 2022','Silver Cinema','207-4753 Sed St.'),
  ('Sherlock Holmes','Sep 10, 2022','Dec 1, 2022','Silver Cinema','207-4753 Sed St.'),
  ('Gladiator','Sep 10, 2022','Dec 20, 2022','Silver Cinema','207-4753 Sed St.'),
  ('Shrek','Sep 7, 2022','Dec 24, 2022','Silver Cinema','207-4753 Sed St.');

INSERT INTO theaters (film_id,date_from,date_to,name,address)
VALUES
  ('The Dark Knight','Sep 26, 2022','Dec 15, 2022','Mori Cinema','8938 Natoque St.8938 Natoque St.'),
  ('Carried Away by Ghosts','Sep 5, 2022','Dec 9, 2022','Mori Cinema','8938 Natoque St.8938 Natoque St.'),
  ('Sherlock Holmes','Sep 10, 2022','Dec 1, 2022','Mori Cinema','8938 Natoque St.8938 Natoque St.'),
  ('Gladiator','Sep 10, 2022','Dec 20, 2022','Mori Cinema','8938 Natoque St.8938 Natoque St.'),
  ('Shrek','Sep 7, 2022','Dec 24, 2022','Mori Cinema','8938 Natoque St.8938 Natoque St.');

INSERT INTO theaters (film_id,date_from,date_to,name,address)
VALUES
  ('Reach out to heaven','Sep 26, 2022','Dec 15, 2022','Mori Cinema','8938 Natoque St.8938 Natoque St.'),
  ('Pirates of the Caribbean','Sep 5, 2022','Dec 9, 2022','Mori Cinema','8938 Natoque St.8938 Natoque St.'),
  ('Shutter Island','Sep 10, 2022','Dec 1, 2022','Mori Cinema','8938 Natoque St.8938 Natoque St.'),
  ('Beginning','Sep 10, 2022','Dec 20, 2022','Mori Cinema','8938 Natoque St.'),
  ('Gentlemen','Sep 7, 2022','Dec 24, 2022','Mori Cinema','8938 Natoque St.');

INSERT INTO theaters (film_id,date_from,date_to,name,address)
VALUES
  ('Reach out to heaven','Sep 26, 2022','Dec 15, 2022','Kinostar de Lux','533-7900 Dui, Rd.'),
  ('Pirates of the Caribbean','Sep 5, 2022','Dec 9, 2022','Kinostar de Lux','533-7900 Dui, Rd.'),
  ('Shutter Island','Sep 10, 2022','Dec 1, 2022','Kinostar de Lux','533-7900 Dui, Rd.'),
  ('Beginning','Sep 10, 2022','Dec 20, 2022','Kinostar de Lux','533-7900 Dui, Rd.'),
  ('Gentlemen','Sep 7, 2022','Dec 24, 2022','Kinostar de Lux','533-7900 Dui, Rd.');

INSERT INTO theaters (film_id,date_from,date_to,name,address)
VALUES
  ('The Green Mile','Sep 26, 2022','Dec 15, 2022','Kinostar de Lux','533-7900 Dui, Rd.'),
  ('Schindlers List','Sep 5, 2022','Dec 9, 2022','Kinostar de Lux','533-7900 Dui, Rd.'),
  ('Escape from Shawshank','Sep 10, 2022','Dec 1, 2022','Kinostar de Lux','533-7900 Dui, Rd.'),
  ('Forrest Gump','Sep 10, 2022','Dec 20, 2022','Kinostar de Lux','533-7900 Dui, Rd.'),
  ('The Lord of the Rings','Sep 7, 2022','Dec 24, 2022','Kinostar de Lux','533-7900 Dui, Rd.');
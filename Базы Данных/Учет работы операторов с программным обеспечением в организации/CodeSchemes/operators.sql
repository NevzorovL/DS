DROP TABLE IF EXISTS "operators";

CREATE TABLE "operators" (
  id SERIAL PRIMARY KEY,
  server_id INTEGER NOT NULL REFERENCES servers(id) ON DELETE CASCADE,
  name VARCHAR(50) NOT NULL,
  post VARCHAR(50) NOT NULL
);

INSERT INTO operators (server_id,name,post)
VALUES
  (1,'Jackson Ochoa','Data Engeneer'),
  (1,'Hanae Crawford','ML-Engeneer'),
  (2,'Jameson Sandoval','Data Analyst'),
  (2,'Holmes Decker','Biznes Analyst'),
  (3,'Illana Branch','Data Scientist');
INSERT INTO operators (server_id,name,post)
VALUES
  (3,'Lynn Wilkinson','Data Engeneer'),
  (4,'Latifah Williams','ML-Engeneer'),
  (4,'Hayden Dillard','Data Analyst'),
  (5,'Quinn Frost','Biznes Analyst'),
  (5,'Brett Grant','Data Scientist');
INSERT INTO operators (server_id,name,post)
VALUES
  (6,'Sybill Morin','Data Engeneer'),
  (6,'Astra Olsen','ML-Engeneer'),
  (7,'Tad Ochoa','Data Analyst'),
  (7,'Kaseem Herring','Biznes Analyst'),
  (8,'Judith Villarreal','Data Scientist');
INSERT INTO operators (server_id,name,post)
VALUES
  (8,'Hammett Holloway','Data Engeneer'),
  (9,'Danielle Lambert','ML-Engeneer'),
  (9,'Myles Lancaster','Data Analyst'),
  (10,'Anika Stokes','Biznes Analyst'),
  (10,'MacKenzie Vazquez','Data Scientist');
INSERT INTO operators (server_id,name,post)
VALUES
  (11,'Reese Wolfe','Data Engeneer'),
  (11,'Camden Sheppard','ML-Engeneer'),
  (12,'Quinn Mccray','Data Analyst'),
  (12,'Lane Ferrell','Biznes Analyst'),
  (13,'Kiara Burgess','Data Scientist');
INSERT INTO operators (server_id,name,post)
VALUES
  (13,'Stacey Morgan','Data Engeneer'),
  (14,'Zia May','ML-Engeneer'),
  (14,'Igor Sanders','Data Analyst'),
  (15,'Cole Pena','Biznes Analyst'),
  (15,'Fleur Hinton','Data Scientist');
INSERT INTO operators (server_id,name,post)
VALUES
  (16,'Curran Lynch','Data Engeneer'),
  (16,'Curran Sherman','ML-Engeneer');
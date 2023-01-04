DROP TABLE IF EXISTS "actors";

CREATE TABLE "actors" (
  id SERIAL PRIMARY KEY,
  film_id VARCHAR(50) NOT NULL REFERENCES films(name) ON DELETE CASCADE,
  name VARCHAR(50) NOT NULL
);

INSERT INTO actors (film_id,name)
VALUES
  ('The Green Mile','Xenos Wallace'),
  ('The Green Mile','Felix Maynard'),
  ('The Green Mile','Reese Banks'),
  ('The Green Mile','Ashely Meyer'),
  ('The Green Mile','Nita Workman');
INSERT INTO actors (film_id,name)
VALUES
  ('Schindlers List','Flynn Mathews'),
  ('Schindlers List','Scarlet Conner'),
  ('Schindlers List','Trevor Higgins'),
  ('Schindlers List','Xena Russell'),
  ('Schindlers List','Malcolm Drake');
INSERT INTO actors (film_id,name)
VALUES
  ('Escape from Shawshank','Flynn Norman'),
  ('Escape from Shawshank','Cameron Barnes'),
  ('Escape from Shawshank','Haley Cooley'),
  ('Escape from Shawshank','Nicole Hartman'),
  ('Escape from Shawshank','Graham Cleveland');
INSERT INTO actors (film_id,name)
VALUES
  ('Forrest Gump','Vanna Mullins'),
  ('Forrest Gump','Rigel Poole'),
  ('Forrest Gump','Anthony Cabrera'),
  ('Forrest Gump','Dustin Gibbs'),
  ('Forrest Gump','April Joyce');
INSERT INTO actors (film_id,name)
VALUES
  ('The Lord of the Rings','Jessamine Francis'),
  ('The Lord of the Rings','Ursula Bennett'),
  ('The Lord of the Rings','Oprah Franco'),
  ('The Lord of the Rings','Orla Miranda'),
  ('The Lord of the Rings','Lydia Griffith');
INSERT INTO actors (film_id,name)
VALUES
  ('Cocos Secret','Brennan Simmons'),
  ('Cocos Secret','Zephr Brennan'),
  ('Cocos Secret','Constance Barr'),
  ('Cocos Secret','Victor Hendricks'),
  ('Cocos Secret','Raya Sloan');
INSERT INTO actors (film_id,name)
VALUES
  ('Back to the Future','Indira Mccarthy'),
  ('Back to the Future','Portia Bauer'),
  ('Back to the Future','Christian Burton'),
  ('Back to the Future','Marvin Mason'),
  ('Back to the Future','Wylie Frederick');
INSERT INTO actors (film_id,name)
VALUES
  ('Interstellar','Alden Mullen'),
  ('Interstellar','Lydia Mooney'),
  ('Interstellar','Kamal Mathis'),
  ('Interstellar','Kermit Bradford'),
  ('Interstellar','Priscilla Castillo');
INSERT INTO actors (film_id,name)
VALUES
  ('Pulp fiction','Hop Cantu'),
  ('Pulp fiction','Yardley Evans'),
  ('Pulp fiction','Noelle Taylor'),
  ('Pulp fiction','Melissa Schwartz'),
  ('Pulp fiction','Cruz Pratt');
INSERT INTO actors (film_id,name)
VALUES
  ('Fighting Club','Drew Camacho'),
  ('Fighting Club','Marshall Dyer'),
  ('Fighting Club','Amal Collins'),
  ('Fighting Club','Yardley Valentine'),
  ('Fighting Club','Debra Schwartz');
INSERT INTO actors (film_id,name)
VALUES
  ('The Dark Knight','Joy Glass'),
  ('The Dark Knight','Nehru Odom'),
  ('The Dark Knight','Reese Massey'),
  ('The Dark Knight','Uriel Dominguez'),
  ('The Dark Knight','Jenette Stanton');
INSERT INTO actors (film_id,name)
VALUES
  ('Carried Away by Ghosts','Alexis Bridges'),
  ('Carried Away by Ghosts','Joseph Lane'),
  ('Carried Away by Ghosts','Madison Wilkinson'),
  ('Carried Away by Ghosts','Levi Hubbard'),
  ('Carried Away by Ghosts','Iris Estrada');
INSERT INTO actors (film_id,name)
VALUES
  ('Sherlock Holmes','Bo Baxter'),
  ('Sherlock Holmes','Tatiana Castillo'),
  ('Sherlock Holmes','Christian Crosby'),
  ('Sherlock Holmes','Samantha Navarro'),
  ('Sherlock Holmes','Ebony Rodgers');
INSERT INTO actors (film_id,name)
VALUES
  ('Gladiator','Jillian Hodge'),
  ('Gladiator','Echo Pearson'),
  ('Gladiator','Kasimir Delacruz'),
  ('Gladiator','Denise Meadows'),
  ('Gladiator','Beverly Roy');
INSERT INTO actors (film_id,name)
VALUES
  ('Shrek','Nigel Huffman'),
  ('Shrek','Trevor Dillard'),
  ('Shrek','Ivy Carson'),
  ('Shrek','Skyler Sweeney'),
  ('Shrek','Lydia Wood');
INSERT INTO actors (film_id,name)
VALUES
  ('Reach out to heaven','Steven Reeves'),
  ('Reach out to heaven','Tucker Lee'),
  ('Reach out to heaven','Carlos Dillard'),
  ('Reach out to heaven','Regan Brooks'),
  ('Reach out to heaven','Lois Long');

INSERT INTO actors (film_id,name)
VALUES
  ('Pirates of the Caribbean','Steven Reeves'),
  ('Pirates of the Caribbean','Tucker Lee'),
  ('Pirates of the Caribbean','Carlos Dillard'),
  ('Pirates of the Caribbean','Regan Brooks'),
  ('Pirates of the Caribbean','Lois Long');


INSERT INTO actors (film_id,name)
VALUES
  ('Shutter Island','Steven Reeves'),
  ('Shutter Island','Tucker Lee'),
  ('Shutter Island','Carlos Dillard'),
  ('Shutter Island','Regan Brooks'),
  ('Shutter Island','Lois Long');


INSERT INTO actors (film_id,name)
VALUES
  ('Beginning','Steven Reeves'),
  ('Beginning','Tucker Lee'),
  ('Beginning','Carlos Dillard'),
  ('Beginning','Regan Brooks'),
  ('Beginning','Lois Long');


INSERT INTO actors (film_id,name)
VALUES
  ('Gentlemen','Steven Reeves'),
  ('Gentlemen','Tucker Lee'),
  ('Gentlemen','Carlos Dillard'),
  ('Gentlemen','Regan Brooks'),
  ('Gentlemen','Lois Long');


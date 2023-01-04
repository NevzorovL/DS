DROP TABLE IF EXISTS "projects";

CREATE TABLE "projects" (
  id SERIAL PRIMARY KEY,
  topic VARCHAR(120) NOT NULL,
  score INTEGER NOT NULL,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE
);

INSERT INTO projects (topic,score,student_id)
VALUES
  ('Language representation',4,1),
  ('Evaluation vocabulary',5,2),
  ('Social language variation',4,3),
  ('Means of expressing modality',3,4),
  ('Metaphor as an object',2,5);

INSERT INTO projects (topic,score,student_id)
VALUES
  ('Comparative analysis',4,6),
  ('Metaphor in poetry',4,7),
  ('Development trends',4,8),
  ('Features of the translation of terms',3,9),
  ('Technology of using social networks',3,10);

INSERT INTO projects (topic,score,student_id)
VALUES
  ('Formation of a culture of speech communication',2,11),
  ('Pun as a stylistic device',3,12),
  ('Text translation and translation comments',3,13),
  ('Public relations in small business',4,14),
  ('Legal regulation of the securities market',5,15);

INSERT INTO projects (topic,score,student_id)
VALUES
  ('Translation commentary: Text analysis',4,16),
  ('Teaching writing and writing',3,17),
  ('Problems and development perspectives',5,18),
  ('Innovation Avenues for Engineering Organisations',4,19),
  ('Types of exemption from criminal liability',3,20);

INSERT INTO projects (topic,score,student_id)
VALUES
  ('Donation agreement',2,21),
  ('Budget as a financial management tool',3,22),
  ('Copywriting in communications',4,23),
  ('Employment Service',5,24);

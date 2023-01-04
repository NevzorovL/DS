DROP TABLE IF EXISTS "exams";

CREATE TABLE "exams" (
  id SERIAL PRIMARY KEY,
  discipline_id INTEGER NOT NULL REFERENCES disciplines(id) ON DELETE CASCADE,
  student_id VARCHAR(6) REFERENCES students(book) ON DELETE CASCADE,
  mark INTEGER DEFAULT NULL
);

-- ИИН
INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (1,'667511',4),
  (2,'667511',4),
  (3,'667511',5),
  (4,'667511',4);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (1,'717505',4),
  (2,'717505',4),
  (3,'717505',3),
  (4,'717505',3);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (1,'791997',2),
  (2,'791997',4),
  (3,'791997',4),
  (4,'791997',4);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (1,'418318',3),
  (2,'418318',3),
  (3,'418318',5),
  (4,'418318',3);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (1,'351472',3),
  (2,'351472',5),
  (3,'351472',2),
  (4,'351472',4);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (1,'431566',NULL),
  (2,'431566',4),
  (3,'431566',4),
  (4,'431566',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (1,'151605',3),
  (2,'151605',2),
  (3,'151605',5),
  (4,'151605',4);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (1,'196240',2),
  (2,'196240',4),
  (3,'196240',5),
  (4,'196240',4);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (1,'727713',4),
  (2,'727713',4),
  (3,'727713',4),
  (4,'727713',2);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (1,'725717',3),
  (2,'725717',3),
  (3,'725717',3),
  (4,'725717',2);


-- ИММИ
INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (5,'229661',4),
  (6,'229661',4),
  (7,'229661',5),
  (8,'229661',3);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (5,'836526',4),
  (6,'836526',3),
  (7,'836526',3),
  (8,'836526',NULL);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (5,'854383',2),
  (6,'854383',3),
  (7,'854383',5),
  (8,'854383',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (5,'482128',3),
  (6,'482128',4),
  (7,'482128',3),
  (8,'482128',3);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (5,'347286',5),
  (6,'347286',4),
  (7,'347286',3),
  (8,'347286',4);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (5,'470450',3),
  (6,'470450',3),
  (7,'470450',3),
  (8,'470450',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (5,'958251',NULL),
  (6,'958251',2),
  (7,'958251',5),
  (8,'958251',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (5,'379658',5),
  (6,'379658',3),
  (7,'379658',3),
  (8,'379658',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (5,'864187',3),
  (6,'864187',3),
  (7,'864187',3),
  (8,'864187',3);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (5,'777424',5),
  (6,'777424',4),
  (7,'777424',4),
  (8,'777424',5);

-- ИМИЭБ
INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (9,'286542',5),
  (10,'286542',5),
  (11,'286542',5),
  (12,'286542',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (9,'488765',5),
  (10,'488765',5),
  (11,'488765',5),
  (12,'488765',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (9,'164343',NULL),
  (10,'164343',3),
  (11,'164343',3),
  (12,'164343',2);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (9,'966313',2),
  (10,'966313',2),
  (11,'966313',3),
  (12,'966313',2);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (9,'558352',4),
  (10,'558352',3),
  (11,'558352',4),
  (12,'558352',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (9,'242861',5),
  (10,'242861',4),
  (11,'242861',3),
  (12,'242861',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (9,'126152',2),
  (10,'126152',5),
  (11,'126152',3),
  (12,'126152',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (9,'812144',NULL),
  (10,'812144',5),
  (11,'812144',4),
  (12,'812144',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (9,'444613',5),
  (10,'444613',5),
  (11,'444613',5),
  (12,'444613',5);

INSERT INTO exams (discipline_id,student_id,mark)
VALUES
  (9,'883905',5),
  (10,'883905',5),
  (11,'883905',4),
  (12,'883905',5);


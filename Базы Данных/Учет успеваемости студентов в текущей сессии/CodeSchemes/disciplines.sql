DROP TABLE IF EXISTS "disciplines";

CREATE TABLE "disciplines" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  teacher_id INTEGER NOT NULL REFERENCES teachers(id) ON DELETE CASCADE
);

INSERT INTO disciplines (name,teacher_id)
VALUES
  ('Programming in 1C',1),
  ('Database design',2),
  ('Web Programming',3),
  ('Circuit design',1),
  ('Modeling',4);
INSERT INTO disciplines (name,teacher_id)
VALUES
  ('Mathematical analysis',5),
  ('Probability theory',6),
  ('Statistics',6),
  ('Human and animal physiology',7),
  ('Ecology and rational',8);
INSERT INTO disciplines (name,teacher_id)
VALUES
  ('Plant physiology',9),
  ('Introduction to Biotechnology',8);

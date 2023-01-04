DROP TABLE IF EXISTS "mentors";

CREATE TABLE "mentors" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  is_commission VARCHAR(3) NOT NULL,
  commission_id INTEGER DEFAULT NULL REFERENCES commission(id) ON DELETE CASCADE
);

INSERT INTO mentors (name,is_commission,commission_id)
VALUES
  ('Jonah Osborn','Yes',1),
  ('Miranda Bailey','No', NULL),
  ('Piper Medina','Yes',2),
  ('Emmanuel Guerrero','No', NULL),
  ('Hadley Colon','Yes',3);

INSERT INTO mentors (name,is_commission,commission_id)
VALUES
  ('Dante Owens','No', NULL),
  ('Jeanette Roberson','Yes',4),
  ('Dahlia Peck','No', NULL),
  ('Darius Vazquez','Yes',5),
  ('Salvador Melendez','No', NULL);

INSERT INTO mentors (name,is_commission,commission_id)
VALUES
  ('Shay Terry','Yes',6),
  ('Jerry Armstrong','No', NULL);

DROP TABLE IF EXISTS "students";

CREATE TABLE "students" (
  book VARCHAR(6) PRIMARY KEY,
  group_id VARCHAR(7) NOT NULL REFERENCES groups(groop) ON DELETE CASCADE,
  name VARCHAR(50) NOT NULL
);

INSERT INTO students (book,group_id,name)
VALUES
  ('667511','0024-01','Anastasia Warren'),
  ('717505','0024-01','Dante Lynn'),
  ('791997','0024-01','Yen Mcmillan'),
  ('418318','0024-01','Cameran Mathis'),
  ('351472','0024-01','Ivor Levy');

INSERT INTO students (book,group_id,name)
VALUES
  ('431566','0024-02','Ariel Moody'),
  ('151605','0024-02','Mari Underwood'),
  ('196240','0024-02','Kristen Aguilar'),
  ('727713','0024-02','Melanie Weber'),
  ('725717','0024-02','Harper Snyder');
INSERT INTO students (book,group_id,name)
VALUES
  ('229661','5812-01','Dorothy Atkins'),
  ('836526','5812-01','Donovan Le'),
  ('854383','5812-01','Marny Leon'),
  ('482128','5812-01','Otto Edwards'),
  ('347286','5812-01','Nigel Fields');
INSERT INTO students (book,group_id,name)
VALUES
  ('470450','5812-02','Leroy Mathis'),
  ('958251','5812-02','Alice Sparks'),
  ('379658','5812-02','Anthony Mcmahon'),
  ('864187','5812-02','Jana Glass'),
  ('777424','5812-02','Travis Wilson');
INSERT INTO students (book,group_id,name)
VALUES
  ('286542','8080-01','Amos Garcia'),
  ('488765','8080-01','Karyn Rivera'),
  ('164343','8080-01','Brady Morgan'),
  ('966313','8080-01','Ferdinand Cabrera'),
  ('558352','8080-01','Dieter Leonard');
INSERT INTO students (book,group_id,name)
VALUES
  ('242861','8080-02','Russell Gonzales'),
  ('126152','8080-02','Rana Carver'),
  ('812144','8080-02','Isadora Osborne'),
  ('444613','8080-02','Amethyst Gardner'),
  ('883905','8080-02','Henry Colon');

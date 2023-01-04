DROP TABLE IF EXISTS "districts";

CREATE TABLE "districts" (
  id SERIAL PRIMARY KEY,
  residence_id VARCHAR(7) UNIQUE NOT NULL REFERENCES residents(id) ON DELETE CASCADE,
  address VARCHAR(100) NOT NULL,
  area VARCHAR(100) NOT NULL
);

INSERT INTO districts (residence_id,address,area)
VALUES
  ('D3J 4S3','Ap #797-2017 Bibendum. Rd.','Noord Holland'),
  ('N4Y 6B5','Ap #690-5187 Tempor Rd.','Connacht'),
  ('C8W 4O3','P.O. Box 199, 8252 Ullamcorper. Ave','Calabria'),
  ('Q1J 5L5','P.O. Box 832, 7181 Sit Av.','South Island'),
  ('M6C 4P1','Ap #350-3512 Morbi Rd.','Limburg');
INSERT INTO districts (residence_id,address,area)
VALUES
  ('O4B 4X2','404-3376 Est Av.','Lima'),
  ('Z9N 6C7','418-8528 Duis Road','Vostra Götalands lon'),
  ('Y8C 3C9','Ap #350-6798 Lacus, Ave','Trondelag'),
  ('R6A 4B5','4305 Et Av.','Soc Trong'),
  ('T4Y 4S7','Ap #822-4585 Elementum, Road','Ulster');

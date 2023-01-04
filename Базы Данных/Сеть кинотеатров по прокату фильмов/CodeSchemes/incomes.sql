DROP TABLE IF EXISTS "incomes";

CREATE TABLE "incomes" (
  id SERIAL PRIMARY KEY,
  theater_id INTEGER NOT NULL REFERENCES theaters(id) ON DELETE CASCADE,
  income INTEGER NOT NULL
);

INSERT INTO incomes (theater_id,income)
VALUES
  (1,161347),
  (2,871968),
  (3,400827),
  (4,563866),
  (5,703793);
INSERT INTO incomes (theater_id,income)
VALUES
  (6,757210),
  (7,329256),
  (8,875540),
  (9,764287),
  (10,990707);
INSERT INTO incomes (theater_id,income)
VALUES
  (11,392344),
  (12,777980),
  (13,492977),
  (14,146266),
  (15,257764);
INSERT INTO incomes (theater_id,income)
VALUES
  (16,648166),
  (17,763688),
  (18,322773),
  (19,557028),
  (20,745158);
INSERT INTO incomes (theater_id,income)
VALUES
  (21,377685),
  (22,150966),
  (23,994477),
  (24,398077),
  (25,460829);
INSERT INTO incomes (theater_id,income)
VALUES
  (26,598338),
  (27,442376),
  (28,737964),
  (29,207531),
  (30,941440);
INSERT INTO incomes (theater_id,income)
VALUES
  (31,503880),
  (32,401480),
  (33,360593),
  (34,489490),
  (35,650741);
INSERT INTO incomes (theater_id,income)
VALUES
  (36,356286),
  (37,435843),
  (38,857987),
  (39,639732),
  (40,963946);

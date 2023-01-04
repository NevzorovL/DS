DROP TABLE IF EXISTS "workstations";

CREATE TABLE "workstations" (
  id SERIAL PRIMARY KEY,
  oper_id INTEGER NOT NULL REFERENCES operators(id) ON DELETE CASCADE,
  software_id INTEGER NOT NULL REFERENCES softwares(id) ON DELETE CASCADE,
  name VARCHAR(50) NOT NULL
);

INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (1,9,'Station 1'),
  (1,5,'Station 1'),
  (1,10,'Station 1'),
  (1,8,'Station 1'),
  (1,2,'Station 1');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (1,1,'Station 17'),
  (1,5,'Station 17'),
  (1,2,'Station 17'),
  (1,3,'Station 17'),
  (1,6,'Station 17');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (2,1,'Station 2'),
  (2,5,'Station 2'),
  (2,2,'Station 2'),
  (2,3,'Station 2'),
  (2,6,'Station 2');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (2,6,'Station 18'),
  (2,10,'Station 18'),
  (2,12,'Station 18'),
  (2,10,'Station 18'),
  (2,13,'Station 18');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (3,6,'Station 3'),
  (3,10,'Station 3'),
  (3,12,'Station 3'),
  (3,10,'Station 3'),
  (3,13,'Station 3');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (3,2,'Station 19'),
  (3,7,'Station 19'),
  (3,11,'Station 19'),
  (3,3,'Station 19'),
  (3,10,'Station 19');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (4,2,'Station 4'),
  (4,7,'Station 4'),
  (4,11,'Station 4'),
  (4,3,'Station 4'),
  (4,10,'Station 4');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (4,8,'Station 20'),
  (4,3,'Station 20'),
  (4,2,'Station 20'),
  (4,1,'Station 20'),
  (4,7,'Station 20');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (5,8,'Station 5'),
  (5,3,'Station 5'),
  (5,2,'Station 5'),
  (5,1,'Station 5'),
  (5,7,'Station 5');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (5,3,'Station 21'),
  (5,8,'Station 21'),
  (5,10,'Station 21'),
  (5,2,'Station 21'),
  (5,1,'Station 21');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (6,3,'Station 6'),
  (6,8,'Station 6'),
  (6,10,'Station 6'),
  (6,2,'Station 6'),
  (6,1,'Station 6');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (6,11,'Station 22'),
  (6,12,'Station 22'),
  (6,7,'Station 22'),
  (6,5,'Station 22'),
  (6,1,'Station 22');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (7,11,'Station 7'),
  (7,12,'Station 7'),
  (7,7,'Station 7'),
  (7,5,'Station 7'),
  (7,1,'Station 7');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (7,2,'Station 23'),
  (7,5,'Station 23'),
  (7,3,'Station 23'),
  (7,13,'Station 23'),
  (7,4,'Station 23');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (8,2,'Station 8'),
  (8,5,'Station 8'),
  (8,3,'Station 8'),
  (8,13,'Station 8'),
  (8,4,'Station 8');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (8,8,'Station 24'),
  (8,13,'Station 24'),
  (8,2,'Station 24'),
  (8,10,'Station 24'),
  (8,6,'Station 24');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (9,8,'Station 9'),
  (9,13,'Station 9'),
  (9,2,'Station 9'),
  (9,10,'Station 9'),
  (9,6,'Station 9');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (9,3,'Station 25'),
  (9,7,'Station 25'),
  (9,12,'Station 25'),
  (9,11,'Station 25'),
  (9,4,'Station 25');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (10,3,'Station 10'),
  (10,7,'Station 10'),
  (10,12,'Station 10'),
  (10,11,'Station 10'),
  (10,4,'Station 10');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (10,3,'Station 26'),
  (10,7,'Station 26'),
  (10,12,'Station 26'),
  (10,11,'Station 26'),
  (10,4,'Station 26');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (11,3,'Station 11'),
  (11,7,'Station 11'),
  (11,12,'Station 11'),
  (11,11,'Station 11'),
  (11,4,'Station 11');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (11,3,'Station 27'),
  (11,7,'Station 27'),
  (11,12,'Station 27'),
  (11,11,'Station 27'),
  (11,4,'Station 27');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (12,3,'Station 12'),
  (12,7,'Station 12'),
  (12,12,'Station 12'),
  (12,11,'Station 12'),
  (12,4,'Station 12');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (12,3,'Station 28'),
  (12,7,'Station 28'),
  (12,12,'Station 28'),
  (12,11,'Station 28'),
  (12,4,'Station 28');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (13,3,'Station 13'),
  (13,7,'Station 13'),
  (13,12,'Station 13'),
  (13,11,'Station 13'),
  (13,4,'Station 13');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (13,3,'Station 29'),
  (13,7,'Station 29'),
  (13,12,'Station 29'),
  (13,11,'Station 29'),
  (13,4,'Station 29');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (14,3,'Station 14'),
  (14,7,'Station 14'),
  (14,12,'Station 14'),
  (14,11,'Station 14'),
  (14,4,'Station 14');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (14,3,'Station 30'),
  (14,7,'Station 30'),
  (14,12,'Station 30'),
  (14,11,'Station 30'),
  (14,4,'Station 30');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (15,3,'Station 15'),
  (15,7,'Station 15'),
  (15,12,'Station 15'),
  (15,11,'Station 15'),
  (15,4,'Station 15');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (15,3,'Station 31'),
  (15,7,'Station 31'),
  (15,12,'Station 31'),
  (15,11,'Station 31'),
  (15,4,'Station 31');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (16,3,'Station 16'),
  (16,7,'Station 16'),
  (16,12,'Station 16'),
  (16,11,'Station 16'),
  (16,4,'Station 16');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (16,9,'Station 32'),
  (16,5,'Station 32'),
  (16,10,'Station 32'),
  (16,8,'Station 32'),
  (16,2,'Station 32');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (17,9,'Station 1'),
  (17,5,'Station 1'),
  (17,10,'Station 1'),
  (17,8,'Station 1'),
  (17,2,'Station 1');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (18,1,'Station 17'),
  (18,5,'Station 17'),
  (18,2,'Station 17'),
  (18,3,'Station 17'),
  (18,6,'Station 17');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (19,1,'Station 2'),
  (19,5,'Station 2'),
  (19,2,'Station 2'),
  (19,3,'Station 2'),
  (19,6,'Station 2');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (20,6,'Station 18'),
  (20,10,'Station 18'),
  (20,12,'Station 18'),
  (20,10,'Station 18'),
  (20,13,'Station 18');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (21,6,'Station 3'),
  (21,10,'Station 3'),
  (21,12,'Station 3'),
  (21,10,'Station 3'),
  (21,13,'Station 3');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (22,2,'Station 19'),
  (22,7,'Station 19'),
  (22,11,'Station 19'),
  (22,3,'Station 19'),
  (22,10,'Station 19');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (23,2,'Station 4'),
  (23,7,'Station 4'),
  (23,11,'Station 4'),
  (23,3,'Station 4'),
  (23,10,'Station 4');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (24,4,'Station 20'),
  (24,3,'Station 20'),
  (24,2,'Station 20'),
  (24,1,'Station 20'),
  (24,7,'Station 20');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (25,4,'Station 5'),
  (25,3,'Station 5'),
  (25,2,'Station 5'),
  (25,1,'Station 5'),
  (25,7,'Station 5');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (26,3,'Station 21'),
  (26,8,'Station 21'),
  (26,10,'Station 21'),
  (26,2,'Station 21'),
  (26,1,'Station 21');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (27,3,'Station 6'),
  (27,8,'Station 6'),
  (27,10,'Station 6'),
  (27,2,'Station 6'),
  (27,1,'Station 6');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (28,11,'Station 22'),
  (28,12,'Station 22'),
  (28,7,'Station 22'),
  (28,4,'Station 22'),
  (28,1,'Station 22');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (29,11,'Station 7'),
  (29,12,'Station 7'),
  (29,7,'Station 7'),
  (29,4,'Station 7'),
  (29,1,'Station 7');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (30,2,'Station 23'),
  (30,5,'Station 23'),
  (30,3,'Station 23'),
  (30,13,'Station 23'),
  (30,4,'Station 23');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (31,2,'Station 8'),
  (31,5,'Station 8'),
  (31,3,'Station 8'),
  (31,13,'Station 8'),
  (31,4,'Station 8');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (32,8,'Station 24'),
  (32,13,'Station 24'),
  (32,4,'Station 24'),
  (32,10,'Station 24'),
  (32,6,'Station 24');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (17,8,'Station 9'),
  (17,13,'Station 9'),
  (17,4,'Station 9'),
  (17,10,'Station 9'),
  (17,6,'Station 9');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (18,3,'Station 25'),
  (18,7,'Station 25'),
  (18,12,'Station 25'),
  (18,11,'Station 25'),
  (18,4,'Station 25');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (19,3,'Station 10'),
  (19,7,'Station 10'),
  (19,12,'Station 10'),
  (19,11,'Station 10'),
  (19,4,'Station 10');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (20,3,'Station 26'),
  (20,7,'Station 26'),
  (20,12,'Station 26'),
  (20,11,'Station 26'),
  (20,4,'Station 26');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (21,3,'Station 11'),
  (21,7,'Station 11'),
  (21,12,'Station 11'),
  (21,11,'Station 11'),
  (21,4,'Station 11');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (22,3,'Station 27'),
  (22,7,'Station 27'),
  (22,12,'Station 27'),
  (22,11,'Station 27'),
  (22,4,'Station 27');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (23,3,'Station 12'),
  (23,7,'Station 12'),
  (23,12,'Station 12'),
  (23,11,'Station 12'),
  (23,4,'Station 12');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (24,3,'Station 28'),
  (24,7,'Station 28'),
  (24,12,'Station 28'),
  (24,11,'Station 28'),
  (24,4,'Station 28');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (25,3,'Station 13'),
  (25,7,'Station 13'),
  (25,12,'Station 13'),
  (25,11,'Station 13'),
  (25,4,'Station 13');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (26,3,'Station 29'),
  (26,7,'Station 29'),
  (26,12,'Station 29'),
  (26,11,'Station 29'),
  (26,4,'Station 29');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (27,3,'Station 14'),
  (27,7,'Station 14'),
  (27,12,'Station 14'),
  (27,11,'Station 14'),
  (27,4,'Station 14');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (28,3,'Station 30'),
  (28,7,'Station 30'),
  (28,12,'Station 30'),
  (28,11,'Station 30'),
  (28,4,'Station 30');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (29,3,'Station 15'),
  (29,7,'Station 15'),
  (29,12,'Station 15'),
  (29,11,'Station 15'),
  (29,4,'Station 15');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (30,3,'Station 31'),
  (30,7,'Station 31'),
  (30,12,'Station 31'),
  (30,11,'Station 31'),
  (30,4,'Station 31');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (31,3,'Station 16'),
  (31,7,'Station 16'),
  (31,12,'Station 16'),
  (31,11,'Station 16'),
  (31,4,'Station 16');
INSERT INTO workstations (oper_id,software_id,name)
VALUES
  (32,9,'Station 32'),
  (32,5,'Station 32'),
  (32,10,'Station 32'),
  (32,8,'Station 32'),
  (32,2,'Station 32');
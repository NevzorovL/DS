DROP TABLE IF EXISTS "marks";

CREATE TABLE "marks" (
  id SERIAL PRIMARY KEY,
  mark INTEGER NOT NULL,
  commission_id INTEGER NOT NULL REFERENCES commission(id) ON DELETE CASCADE,
  project_id INTEGER NOT NULL REFERENCES projects(id) ON DELETE CASCADE
);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (4,1,1),
  (5,2,1),
  (3,3,1),
  (5,4,2),
  (5,5,2);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (4,6,2),
  (4,1,3),
  (3,2,3),
  (4,3,3),
  (3,4,4);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (2,5,4),
  (4,6,4),
  (3,1,5),
  (2,2,5),
  (2,3,5);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (4,4,6),
  (3,5,6),
  (4,6,6),
  (4,1,7),
  (5,2,7);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (4,3,7),
  (4,4,8),
  (4,5,8),
  (5,6,8);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (2,1,9),
  (4,2,9),
  (3,3,9),
  (3,4,10);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (2,5,10),
  (4,6,10),
  (2,1,11),
  (2,2,11);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (2,3,11),
  (3,4,12),
  (3,5,12),
  (3,6,12);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (3,1,13),
  (4,2,13),
  (3,3,13),
  (5,4,14);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (4,5,14),
  (4,6,14),
  (5,1,15),
  (5,2,15),
  (5,3,15);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (4,4,16),
  (4,5,16),
  (4,6,16),
  (3,1,17);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (3,2,17),
  (3,3,17),
  (5,4,18),
  (5,5,18);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (5,6,18),
  (4,1,19),
  (4,2,19),
  (5,3,19);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (3,4,20),
  (3,5,20),
  (2,6,20),
  (2,1,21);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (2,2,21),
  (3,3,21),
  (3,4,22),
  (3,5,22);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (3,6,22),
  (4,1,23),
  (4,2,23),
  (4,3,23);

INSERT INTO marks (mark,commission_id,project_id)
VALUES
  (5,4,24),
  (4,5,24),
  (5,6,24);

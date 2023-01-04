DROP TABLE IF EXISTS "groups";

CREATE TABLE "groups" (
  groop VARCHAR(7) PRIMARY KEY,
  facultie_id INTEGER NOT NULL REFERENCES faculties(id) ON DELETE CASCADE
);

INSERT INTO groups (groop, facultie_id)
VALUES
  ('0024-01', 1),
  ('0024-02', 1);

INSERT INTO groups (groop, facultie_id)
VALUES
  ('5812-01', 2),
  ('5812-02', 2);

INSERT INTO groups (groop, facultie_id)
VALUES
  ('8080-01', 3),
  ('8080-02', 3);


DROP TABLE IF EXISTS "groups";

CREATE TABLE "groups" (
  id SERIAL PRIMARY KEY,
  groop VARCHAR(7) UNIQUE NOT NULL
);

INSERT INTO groups (groop)
VALUES
  ('0024-01'),
  ('0024-02'),
  ('0024-03'),
  ('0024-04');

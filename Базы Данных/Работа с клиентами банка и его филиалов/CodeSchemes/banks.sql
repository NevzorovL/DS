DROP TABLE IF EXISTS "banks";

CREATE TABLE "banks" (
  id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

INSERT INTO banks (name)
VALUES
  ('SBER'),
  ('VTBR'),
  ('TCSG'),
  ('ROSB'),
  ('QIWI');

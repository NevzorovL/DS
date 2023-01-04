DROP TABLE IF EXISTS "servers";

CREATE TABLE "servers" (
  id SERIAL PRIMARY KEY,
  org_id VARCHAR(50) NOT NULL REFERENCES organizations(name) ON DELETE CASCADE,
  name VARCHAR(50) NOT NULL
);

INSERT INTO servers (org_id,name)
VALUES
  ('Euismod Corporation','Server 1'),
  ('Euismod Urna Associates','Server 1'),
  ('Mattis Ornare LLP','Server 1'),
  ('Quis Urna Nunc Institute','Server 1');
INSERT INTO servers (org_id,name)
VALUES
  ('Euismod Corporation','Server 2'),
  ('Euismod Urna Associates','Server 2'),
  ('Mattis Ornare LLP','Server 2'),
  ('Quis Urna Nunc Institute','Server 2');
INSERT INTO servers (org_id,name)
VALUES
  ('Euismod Corporation','Server 3'),
  ('Euismod Urna Associates','Server 3'),
  ('Mattis Ornare LLP','Server 3'),
  ('Quis Urna Nunc Institute','Server 3');
INSERT INTO servers (org_id,name)
VALUES
  ('Euismod Corporation','Server 4'),
  ('Euismod Urna Associates','Server 4'),
  ('Mattis Ornare LLP','Server 4'),
  ('Quis Urna Nunc Institute','Server 4');

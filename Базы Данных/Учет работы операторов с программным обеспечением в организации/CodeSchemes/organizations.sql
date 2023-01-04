DROP TABLE IF EXISTS "organizations";

CREATE TABLE "organizations" (
  name VARCHAR PRIMARY KEY,
  income INTEGER NOT NULL,
  type VARCHAR(50) NOT NULL
);

INSERT INTO organizations (name,income,type)
VALUES
  ('Euismod Corporation',84218,'Product Company'),
  ('Euismod Urna Associates',56997,'Outsourcing Company'),
  ('Mattis Ornare LLP',149151,'Consulting Company'),
  ('Quis Urna Nunc Institute',53537,'Software Development');

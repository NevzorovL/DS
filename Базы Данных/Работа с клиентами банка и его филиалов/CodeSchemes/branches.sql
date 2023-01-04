DROP TABLE IF EXISTS "branches";

CREATE TABLE "branches" (
  id SERIAL PRIMARY KEY,
  bank_id INTEGER NOT NULL REFERENCES banks(id) ON DELETE CASCADE,
  address TEXT NOT NULL
);

INSERT INTO branches (id,bank_id,address)
VALUES
  (1000,1,'Dapibus Road'),
  (1001,1,'Nec Street'),
  (1002,2,'Tempor St.'),
  (1003,2,'Aliquam Rd.'),
  (1004,3,'Faucibus Rd.');

INSERT INTO branches (id,bank_id,address)
VALUES
  (1005,3,'Tempor St.'),
  (1006,4,'Nec Street'),
  (1007,4,'Scelerisque, St.'),
  (1008,5,'Tempor Rd.'),
  (1009,5,'Penatibus Rd.');

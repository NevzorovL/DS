DROP TABLE IF EXISTS "exchanges";

CREATE TABLE "exchanges" (
  id SERIAL PRIMARY KEY,
  residence_id VARCHAR(7) NOT NULL REFERENCES residents(id) ON DELETE CASCADE,
  customer_id VARCHAR(11) NOT NULL REFERENCES customers(id) ON DELETE CASCADE,
  exchange TEXT NOT NULL,
  date VARCHAR(19)
);

INSERT INTO exchanges (residence_id,customer_id,exchange,date)
VALUES
  ('G5R 4S6','PGD04KHT7JL','True','2021-11-10 18:47:25'),
  ('D3J 4S3','EEP25VSP7KO','True','2021-11-10 18:47:25'),
  ('N4Y 6B5','EEP25VSP7KO','False',''),
  ('C8W 4O3','WJM65UOL8BE','False',''),
  ('Q1J 5L5','WJM65UOL8BE','True','2021-11-07 14:11:36'),
  ('M6C 4P1','EQV62NND5LI','False','');
INSERT INTO exchanges (residence_id,customer_id,exchange,date)
VALUES
  ('O4B 4X2','EQV62NND5LI','True','2021-07-14 20:18:17'),
  ('Z9N 6C7','HSK10IBQ6IB','False',''),
  ('Y8C 3C9','HSK10IBQ6IB','True','2021-03-25 22:24:54'),
  ('R6A 4B5','HGX94TOM8ZS','False',''),
  ('T4Y 4S7','HGX94TOM8ZS','False','');
INSERT INTO exchanges (residence_id,customer_id,exchange,date)
VALUES
  ('D3J 4S3','GQH16EBV3JR','True','2021-04-27 10:51:29'),
  ('N4Y 6B5','GQH16EBV3JR','False',''),
  ('C8W 4O3','XGI76OKH0FQ','False',''),
  ('Q1J 5L5','XGI76OKH0FQ','False',''),
  ('M6C 4P1','JZD04KVT7RL','True','2021-04-19 06:33:41');
INSERT INTO exchanges (residence_id,customer_id,exchange,date)
VALUES
  ('O4B 4X2','JZD04KVT7RL','False',''),
  ('Z9N 6C7','UMI42VUU9RB','False',''),
  ('Y8C 3C9','UMI42VUU9RB','True','2021-04-09 18:00:41'),
  ('R6A 4B5','IXE33EWL4IQ','False',''),
  ('T4Y 4S7','IXE33EWL4IQ','True','2021-10-13 07:46:09');

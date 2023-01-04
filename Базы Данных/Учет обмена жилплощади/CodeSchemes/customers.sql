DROP TABLE IF EXISTS "customers";

CREATE TABLE "customers" (
  id VARCHAR PRIMARY KEY,
  name TEXT NOT NULL,
  address VARCHAR(100) NOT NULL,
  area VARCHAR(100) NOT NULL
);

INSERT INTO customers (id,name,address,area)
VALUES
  ('EEP25VSP7KO','Valentine Wise','P.O. Box 311, 762 Accumsan Avenue','Mazowieckie'),
  ('WJM65UOL8BE','Baxter Pierce','Ap #515-1237 Natoque St.','North Maluku'),
  ('EQV62NND5LI','Ruby Lindsey','Ap #236-245 Cursus. Avenue','Agder'),
  ('HSK10IBQ6IB','Cameron Chen','7705 Sit Av.','Mykolaiv oblast'),
  ('HGX94TOM8ZS','Jena Potter','Ap #787-3794 Non, St.','New South Wales');

INSERT INTO customers (id,name,address,area)
VALUES
  ('GQH16EBV3JR','Hanae Clay','707-3810 Libero Rd.','Puntarenas'),
  ('XGI76OKH0FQ','Eve Stevenson','Ap #408-2829 Fusce Street','Colorado'),
  ('JZD04KVT7RL','Suki Higgins','Ap #222-4181 Lectus. St.','Soccsksargen'),
  ('UMI42VUU9RB','Faith Robles','342-9046 Semper St.','Puno'),
  ('IXE33EWL4IQ','Baxter Hardy','P.O. Box 626, 6128 Tellus. Avenue','Australian Capital Territory');



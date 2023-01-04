DROP EXTENSION pgcrypto;
DROP TABLE organisation_table;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE organisation_table (
   id SERIAL PRIMARY KEY,
   name VARCHAR(150) NOT NULL,
   income VARCHAR(150) NOT NULL,
   type VARCHAR(150) NOT NULL
);

INSERT INTO organisation_table (name,income,type)
VALUES
  ('Euismod Corporation', pgp_sym_encrypt('84218','passwordpassword'), encrypt('Product Company','passwordpassword', 'aes')),
  ('Euismod Urna Associates', pgp_sym_encrypt('56997','passwordpassword'), encrypt('Outsourcing Company','passwordpassword', 'aes')),
  ('Mattis Ornare LLP', pgp_sym_encrypt('149151','passwordpassword'), encrypt('Consulting Company','passwordpassword', 'aes')),
  ('Quis Urna Nunc Institute', pgp_sym_encrypt('53537','passwordpassword'), encrypt('Software Development','passwordpassword', 'aes'));

-- прочитаем зашифрованные пароли
SELECT name,
       income,
       type
FROM organisation_table;

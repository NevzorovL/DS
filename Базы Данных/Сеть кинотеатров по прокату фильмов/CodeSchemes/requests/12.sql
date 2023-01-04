DROP EXTENSION pgcrypto;
DROP TABLE income_table;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE income_table (
  id SERIAL PRIMARY KEY,
  theater_id VARCHAR(150) NOT NULL,
  income VARCHAR(150)  NOT NULL
);

INSERT INTO income_table (theater_id,income)
VALUES
  (pgp_sym_encrypt('1','incomeshifr'), encrypt('161347','incomeshifr', 'aes')),
  (pgp_sym_encrypt('2','incomeshifr'), encrypt('871968','incomeshifr', 'aes')),
  (pgp_sym_encrypt('3','incomeshifr'), encrypt('400827','incomeshifr', 'aes')),
  (pgp_sym_encrypt('4','incomeshifr'), encrypt('563866','incomeshifr', 'aes')),
  (pgp_sym_encrypt('5','incomeshifr'), encrypt('703793','incomeshifr', 'aes'));

-- прочитаем зашифрованные пароли
SELECT theater_id,
       income
FROM income_table;

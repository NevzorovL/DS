DROP EXTENSION pgcrypto;
DROP TABLE students_passwords;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE students_passwords (
   id SERIAL PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   card VARCHAR(150) NOT NULL,
   group_id INTEGER NOT NULL,
   mentor_id VARCHAR(150) NOT NULL
);

INSERT INTO students_passwords (name,card,group_id,mentor_id)
VALUES
  ('Uma Goodman',pgp_sym_encrypt('98124','mySmallSecret'), 1, encrypt('1','whoIsMentor', 'aes')),
  ('Signe Hopkins',pgp_sym_encrypt('55298','mySmallSecret'), 2, encrypt('2','whoIsMentor', 'aes')),
  ('Zeph Castillo',pgp_sym_encrypt('89175','mySmallSecret'), 3, encrypt('3','whoIsMentor', 'aes')),
  ('Kadeem Ferrell',pgp_sym_encrypt('47217','mySmallSecret'), 4, encrypt('4','whoIsMentor', 'aes')),
  ('Chandler Galloway',pgp_sym_encrypt('21535','mySmallSecret'), 1, encrypt('5','whoIsMentor', 'aes'));

-- прочитаем зашифрованные пароли
SELECT name,
       card,
       group_id,
       mentor_id
FROM students_passwords;

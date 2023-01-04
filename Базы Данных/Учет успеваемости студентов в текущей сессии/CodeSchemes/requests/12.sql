DROP EXTENSION pgcrypto;
DROP TABLE exam_table;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE exam_table (
   id SERIAL PRIMARY KEY,
   discipline_id VARCHAR(150) NOT NULL,
   student_id VARCHAR(150) NOT NULL,
   mark INTEGER NOT NULL
);

INSERT INTO exam_table (discipline_id,student_id,mark)
VALUES
  (pgp_sym_encrypt('6','arSlan!PassWorD'), encrypt('667511','arSlan!PassWorD', 'aes'), 5),
  (pgp_sym_encrypt('1','arSlan!PassWorD'), encrypt('717505','arSlan!PassWorD', 'aes'), 4),
  (pgp_sym_encrypt('7','arSlan!PassWorD'), encrypt('791997','arSlan!PassWorD', 'aes'), 4),
  (pgp_sym_encrypt('3','arSlan!PassWorD'), encrypt('418318','arSlan!PassWorD', 'aes'), 3),
  (pgp_sym_encrypt('5','arSlan!PassWorD'), encrypt('351472','arSlan!PassWorD', 'aes'), 5);

-- прочитаем зашифрованные пароли
SELECT discipline_id,
       student_id,
       mark
FROM exam_table;

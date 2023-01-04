-- прочитаем расшифрованные пароли
SELECT  pgp_sym_decrypt(discipline_id::bytea, 'arSlan!PassWorD'),
        convert_from(decrypt(student_id::bytea, 'arSlan!PassWorD', 'aes'), 'SQL_ASCII'),
        mark
FROM exam_table;

DROP EXTENSION pgcrypto;
DROP TABLE exam_table;

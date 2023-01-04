-- прочитаем расшифрованные пароли
SELECT  name,
        pgp_sym_decrypt(card::bytea, 'mySmallSecret'),
        group_id, 
        convert_from(decrypt(mentor_id::bytea, 'whoIsMentor', 'aes'), 'SQL_ASCII')
FROM students_passwords;

DROP EXTENSION pgcrypto;
DROP TABLE account_passwords;

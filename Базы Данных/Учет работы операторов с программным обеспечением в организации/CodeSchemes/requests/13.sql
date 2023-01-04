-- прочитаем расшифрованные пароли
SELECT  name,
        pgp_sym_decrypt(income::bytea, 'passwordpassword'),
        convert_from(decrypt(type::bytea, 'passwordpassword', 'aes'), 'SQL_ASCII')
FROM organisation_table;

DROP EXTENSION pgcrypto;
DROP TABLE organisation_table;

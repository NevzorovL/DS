-- введем неправильый пароль
SELECT  pgp_sym_decrypt(theater_id::bytea, 'dsfgsdfg'),
        convert_from(decrypt(income::bytea, 'aserthaef', 'aes'), 'SQL_ASCII')
FROM income_table;

-- прочитаем расшифрованные пароли
SELECT  pgp_sym_decrypt(theater_id::bytea, 'incomeshifr'),
        convert_from(decrypt(income::bytea, 'incomeshifr', 'aes'), 'SQL_ASCII')
FROM income_table;

DROP EXTENSION pgcrypto;
DROP TABLE income_table;

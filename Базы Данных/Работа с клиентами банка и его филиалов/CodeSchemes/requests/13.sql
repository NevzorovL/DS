-- прочитаем расшифрованные пароли
SELECT  pgp_sym_decrypt(account_id::bytea, '!qazSymKeyXsw2'),
       username, 
       convert_from(decrypt(password::bytea, '!qazSymKeyXsw2', 'aes'), 'SQL_ASCII')
FROM account_passwords;

DROP EXTENSION pgcrypto;
DROP TABLE account_passwords;

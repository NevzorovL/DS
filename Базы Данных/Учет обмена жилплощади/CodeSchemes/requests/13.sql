-- прочитаем расшифрованные пароли
SELECT  pgp_sym_decrypt(account_id::bytea, '!bfoH53hV3u0'),
        username, 
        convert_from(decrypt(password::bytea, '!bfoH53hV3u0', 'aes'), 'SQL_ASCII')
FROM account_passwords;

DROP EXTENSION pgcrypto;
DROP TABLE account_passwords;
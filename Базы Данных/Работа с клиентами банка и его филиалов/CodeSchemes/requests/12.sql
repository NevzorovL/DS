DROP EXTENSION pgcrypto;
DROP TABLE account_passwords;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE account_passwords (
   id SERIAL PRIMARY KEY,
   account_id TEXT UNIQUE NOT NULL,
   username varchar(100) NOT NULL,
   password TEXT NOT NULL
);

INSERT INTO account_passwords (account_id,username,password)
VALUES
  (pgp_sym_encrypt('A5E107A6-9E4D-A8E9-98BC-16C373FD2585','!qazSymKeyXsw2'), 'jonny', encrypt('lwbvdr','!qazSymKeyXsw2', 'aes')),
  (pgp_sym_encrypt('A5E107A6-9E4D-A8E9-98BC-16C373FD2586','!qazSymKeyXsw2'), 'bobby', encrypt('pqmfrt','!qazSymKeyXsw2', 'aes')),
  (pgp_sym_encrypt('713232B4-75CE-2E19-BE9D-D59DD419DE45','!qazSymKeyXsw2'), 'sammy', encrypt('ibqfsl','!qazSymKeyXsw2', 'aes')),
  (pgp_sym_encrypt('713232B4-75CE-2E19-BE9D-D59DD419DE46','!qazSymKeyXsw2'), 'ralfy', encrypt('aqpdfn','!qazSymKeyXsw2', 'aes')),
  (pgp_sym_encrypt('9B1927E8-5764-51E8-EFBA-555E586D4B60','!qazSymKeyXsw2'), 'garry', encrypt('vslfyg','!qazSymKeyXsw2', 'aes'));

-- прочитаем зашифрованные пароли
SELECT account_id,
       username,
       password
FROM account_passwords;

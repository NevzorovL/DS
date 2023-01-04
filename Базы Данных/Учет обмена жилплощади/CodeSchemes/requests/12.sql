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
  (pgp_sym_encrypt('EEP25VSP7KO','!bfoH53hV3u0'), 'Valentine Wise', encrypt('lwbvdr','!bfoH53hV3u0', 'aes')),
  (pgp_sym_encrypt('WJM65UOL8BE','!bfoH53hV3u0'), 'Baxter Pierce', encrypt('pqmfrt','!bfoH53hV3u0', 'aes')),
  (pgp_sym_encrypt('EQV62NND5LI','!bfoH53hV3u0'), 'Ruby Lindsey', encrypt('ibqfsl','!bfoH53hV3u0', 'aes')),
  (pgp_sym_encrypt('HSK10IBQ6IB','!bfoH53hV3u0'), 'Cameron Chen', encrypt('aqpdfn','!bfoH53hV3u0', 'aes')),
  (pgp_sym_encrypt('HGX94TOM8ZS','!bfoH53hV3u0'), 'Jena Potter', encrypt('vslfyg','!bfoH53hV3u0', 'aes'));

-- прочитаем зашифрованные пароли
SELECT account_id,
       username,
       password
FROM account_passwords;
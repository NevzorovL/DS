DROP ROLE IF EXISTS test;

-- создание пользователя
CREATE ROLE test WITH LOGIN PASSWORD 'password';

-- выдаем привелегии
GRANT ALL ON DATABASE organisations TO test;

-- просмотр зарегистрированных пользователей
\du

-- забираем привелегии
REVOKE ALL ON DATABASE organisations FROM test;

-- удаляем пользователя
DROP ROLE test;

-- просмотр зарегистрированных пользователей
\du


DROP ROLE IF EXISTS guest;

-- создание пользователя
CREATE ROLE guest WITH LOGIN PASSWORD 'password';

-- выдаем привелегии
GRANT ALL ON softwares TO guest;

-- просмотр зарегистрированных пользователей
\du

-- забираем привелегии
REVOKE ALL ON softwares FROM guest;

-- удаляем пользователя
DROP ROLE guest;

-- просмотр зарегистрированных пользователей
\du

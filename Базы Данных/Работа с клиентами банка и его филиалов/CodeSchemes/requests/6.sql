DROP ROLE IF EXISTS test_user;

-- создание пользователя
CREATE ROLE test_user WITH LOGIN PASSWORD 'password';

-- выдаем привелегии
GRANT ALL ON DATABASE banks TO test_user;

-- просмотр зарегистрированных пользователей
\du

-- забираем привелегии
REVOKE ALL ON DATABASE banks FROM test_user;

-- удаляем пользователя
DROP ROLE test_user;

-- просмотр зарегистрированных пользователей
\du




DROP ROLE IF EXISTS test_guest;

-- создание пользователя
CREATE ROLE test_guest WITH LOGIN PASSWORD 'guest!password';

-- выдаем привелегии
GRANT ALL ON transactions TO test_guest;

-- просмотр зарегистрированных пользователей
\du

-- забираем привелегии
REVOKE ALL ON transactions FROM test_guest;

-- удаляем пользователя
DROP ROLE test_guest;

-- просмотр зарегистрированных пользователей
\du

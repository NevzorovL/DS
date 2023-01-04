DROP ROLE IF EXISTS test_user;

-- создание пользователя
CREATE ROLE test_user WITH LOGIN PASSWORD 'passworduser';

-- выдаем привелегии
GRANT ALL ON DATABASE diplomas TO test_user;

-- просмотр зарегистрированных пользователей
\du

-- забираем привелегии
REVOKE ALL ON DATABASE diplomas FROM test_user;

-- удаляем пользователя
DROP ROLE test_user;

-- просмотр зарегистрированных пользователей
\du




DROP ROLE IF EXISTS test_guest;

-- создание пользователя
CREATE ROLE test_guest WITH LOGIN PASSWORD 'passwordguest';

-- выдаем привелегии
GRANT ALL ON students TO test_guest;

-- просмотр зарегистрированных пользователей
\du

-- забираем привелегии
REVOKE ALL ON students FROM test_guest;

-- удаляем пользователя
DROP ROLE test_guest;

-- просмотр зарегистрированных пользователей
\du

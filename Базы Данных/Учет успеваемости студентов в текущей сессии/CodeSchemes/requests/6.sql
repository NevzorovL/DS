DROP ROLE IF EXISTS test;

-- создание пользователя
CREATE ROLE test WITH LOGIN PASSWORD 'password';

-- выдаем привелегии
GRANT ALL ON DATABASE exams TO test;

-- просмотр зарегистрированных пользователей
\du

-- забираем привелегии
REVOKE ALL ON DATABASE exams FROM test;

-- удаляем пользователя
DROP ROLE test;

-- просмотр зарегистрированных пользователей
\du





DROP ROLE IF EXISTS guest;

-- создание пользователя
CREATE ROLE guest WITH LOGIN PASSWORD 'password';

-- выдаем привелегии
GRANT ALL ON students TO guest;

-- просмотр зарегистрированных пользователей
\du

-- забираем привелегии
REVOKE ALL ON students FROM guest;

-- удаляем пользователя
DROP ROLE guest;

-- просмотр зарегистрированных пользователей
\du

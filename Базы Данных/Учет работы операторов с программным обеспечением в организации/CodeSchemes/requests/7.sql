SELECT *
FROM organizations
ORDER BY name ASC;

BEGIN;

-- транзакция 1
UPDATE organizations SET income = income - 10000
    WHERE name = 'Euismod Corporation';
SAVEPOINT my_savepoint;
UPDATE organizations SET income = income + 10000
    WHERE name = 'Euismod Urna Associates';
SAVEPOINT my_savepoint;

-- транзакция 2
UPDATE organizations SET income = income - 10000
    WHERE name = 'Euismod Corporation';
SAVEPOINT my_savepoint;
UPDATE organizations SET income = income + 10000
    WHERE name = 'Mattis Ornare LLP';
ROLLBACK TO my_savepoint; -- откат на операцию 2.1 и отмена операции 2.2

-- корректировка транзакции 2
UPDATE organizations SET income = income + 10000
    WHERE name = 'Euismod Urna Associates';

COMMIT;

SELECT *
FROM organizations
ORDER BY name ASC;
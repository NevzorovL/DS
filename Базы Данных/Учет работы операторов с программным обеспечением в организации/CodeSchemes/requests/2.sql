SELECT name,
       post
FROM operators
WHERE post = 'Data Engeneer'
UNION
SELECT name,
       post
FROM operators
WHERE post = 'Data Scientist';

SELECT name,
       post
FROM operators
WHERE post LIKE '%D%'
   OR post LIKE '%A%'
INTERSECT
SELECT name,
       post
FROM operators
WHERE post LIKE '%E%'; 

SELECT name,
       income
FROM organizations
EXCEPT
SELECT name,
       income
FROM organizations
WHERE income < 75000;
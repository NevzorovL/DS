SELECT og.name,
       se.name,
       op.name
FROM organizations AS og
JOIN servers AS se ON og.name=se.org_id
JOIN operators AS op ON se.id=op.server_id
WHERE og.income > (SELECT AVG(income)
                   FROM organizations)
ORDER BY og.name
LIMIT 10;

SELECT og.name,
       se.name,
       op.name
FROM organizations AS og
JOIN servers AS se ON og.name=se.org_id
JOIN operators AS op ON se.id=op.server_id
WHERE og.income < (SELECT AVG(tbl.income)
                   FROM (SELECT *
                         FROM organizations
                         WHERE type LIKE '%Company') AS tbl)
ORDER BY og.name
LIMIT 10;
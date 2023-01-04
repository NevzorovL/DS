SELECT og.name,
       og.income,
       se.name,
       op.name,
       op.post
FROM organizations AS og
JOIN servers AS se ON og.name=se.org_id
JOIN operators AS op ON se.id=op.server_id
WHERE op.post LIKE '%Data%'
   OR op.post LIKE '%Analyst%'
ORDER BY og.name
LIMIT 10;

SELECT *
FROM (SELECT og.name,
             og.income,
             se.name,
             op.name,
             op.post
      FROM organizations AS og
      JOIN servers AS se ON og.name=se.org_id
      JOIN operators AS op ON se.id=op.server_id) AS tbl
WHERE tbl.post LIKE '%Data%'
   OR tbl.post LIKE '%Analyst%'
LIMIT 10;

SELECT tbl.org_name,
       AVG(tbl.income)
FROM (SELECT og.name AS org_name,
             og.income,
             se.name AS server_name,
             op.name AS oper_name,
             op.post
      FROM organizations AS og
      JOIN servers AS se ON og.name=se.org_id
      JOIN operators AS op ON se.id=op.server_id) AS tbl
WHERE tbl.post LIKE '%Data%'
   OR tbl.post LIKE '%Analyst%'
GROUP BY tbl.org_name
HAVING AVG(tbl.income) > 75000
LIMIT 10;
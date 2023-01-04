SELECT og.name,
       se.name
FROM organizations AS og
LEFT OUTER JOIN servers AS se ON og.name=se.org_id;

SELECT og.name,
       se.name
FROM organizations AS og
RIGHT OUTER JOIN servers AS se ON og.name=se.org_id;

SELECT og.name,
       se.name
FROM organizations AS og
FULL OUTER JOIN servers AS se ON og.name=se.org_id;
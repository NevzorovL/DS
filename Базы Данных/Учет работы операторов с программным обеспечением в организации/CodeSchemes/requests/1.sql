SELECT og.name,
       se.name,
       op.name
FROM organizations AS og
JOIN servers AS se ON og.name=se.org_id
JOIN operators AS op ON se.id=op.server_id
ORDER BY og.name;

SELECT wo.name,
       op.name,
       wo.software_id
FROM servers AS se
JOIN operators AS op ON se.id=op.server_id
JOIN workstations AS wo ON op.id=wo.oper_id
LIMIT 10;

SELECT wo.name,
       op.name,
       so.name
FROM operators AS op
JOIN workstations AS wo ON op.id=wo.oper_id
JOIN softwares AS so ON so.id=wo.software_id
LIMIT 10;
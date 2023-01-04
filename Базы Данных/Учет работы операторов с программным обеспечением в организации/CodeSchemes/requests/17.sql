-- таблица в XML
SELECT table_to_xml('servers', true, false, '');

-- query запрос в XML
SELECT query_to_xml('SELECT * FROM servers', true, false, '');

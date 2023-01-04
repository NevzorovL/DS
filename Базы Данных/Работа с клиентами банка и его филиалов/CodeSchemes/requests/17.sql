-- таблица в XML
SELECT table_to_xml('banks', true, false, '');

-- query запрос в XML
SELECT query_to_xml('SELECT * FROM banks', true, false, '');

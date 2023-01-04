-- таблица в XML
SELECT table_to_xml('actors', true, false, '');

-- query запрос в XML
SELECT query_to_xml('SELECT * FROM actors', true, false, '');

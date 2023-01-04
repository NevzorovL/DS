-- таблица в XML
SELECT table_to_xml('customers', true, false, '');

-- query запрос в XML
SELECT query_to_xml('SELECT * FROM exchanges', true, false, '');
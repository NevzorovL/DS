-- таблица в XML
SELECT table_to_xml('students', true, false, '');

-- query запрос в XML
SELECT query_to_xml('SELECT * FROM students', true, false, '');

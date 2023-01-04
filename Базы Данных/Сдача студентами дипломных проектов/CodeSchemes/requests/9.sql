CREATE FUNCTION mean(x float, y float) RETURNS INTEGER AS $$
     SELECT x / y;
$$ LANGUAGE SQL;

SELECT mean((SELECT SUM(mark) FROM marks),
            (SELECT COUNT(mark) FROM marks)) AS answer;


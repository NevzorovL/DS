CREATE FUNCTION mean(x float, y float) RETURNS INTEGER AS $$
     SELECT x / y;
$$ LANGUAGE SQL;

SELECT mean((SELECT SUM(mark) FROM exams),
            (SELECT COUNT(mark) FROM exams)) AS mean_mark;


CREATE FUNCTION mean(x float, y float) RETURNS INTEGER AS $$
     SELECT x / y;
$$ LANGUAGE SQL;

SELECT mean((SELECT SUM(income) FROM incomes),
            (SELECT COUNT(income) FROM incomes)) AS mean_mark;
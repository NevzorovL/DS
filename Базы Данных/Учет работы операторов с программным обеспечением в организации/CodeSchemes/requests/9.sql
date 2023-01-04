CREATE FUNCTION mean(x float, y float) RETURNS INTEGER AS $$
     SELECT x / y;
$$ LANGUAGE SQL;

SELECT mean((SELECT SUM(income) FROM organizations),
            (SELECT COUNT(income) FROM organizations)) AS mean_income;


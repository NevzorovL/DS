CREATE FUNCTION mean(x float, y float) RETURNS INTEGER AS $$
     SELECT x / y;
$$ LANGUAGE SQL;

SELECT mean((SELECT SUM(balance) FROM balance),
            (SELECT COUNT(balance) FROM balance)) AS mean_balance;

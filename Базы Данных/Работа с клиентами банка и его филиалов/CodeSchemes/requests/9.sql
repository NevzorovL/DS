CREATE FUNCTION variance(x float, y float, z float) RETURNS integer AS $$
    SELECT SUM(x - y)^2 / (z - 1);
$$ LANGUAGE SQL;

CREATE FUNCTION mean_function(x float, n float) RETURNS float AS $$
    SELECT x / n;
$$ LANGUAGE SQL;

SELECT variance((SELECT balance FROM accounts WHERE id = 'A5E107A6-9E4D-A8E9-98BC-16C373FD2585'),
                (SELECT mean_function((SELECT SUM(fonk.SUM) FROM (SELECT SUM(balance) FROM accounts GROUP BY accounts) AS fonk), (SELECT SUM(foonk.COUNT) FROM (SELECT COUNT(balance) FROM accounts GROUP BY accounts) AS foonk)) AS mean),
                (SELECT SUM(foo.COUNT) FROM (SELECT COUNT(balance) FROM accounts GROUP BY accounts) AS foo)) AS answer;


-- удалние через процедуру
-- CREATE PROCEDURE clean_emp() AS '
--     DELETE FROM accounts
--         WHERE balance < 500;
-- ' LANGUAGE SQL;

-- CALL clean_emp();

-- SELECT *
-- FROM accounts
-- LIMIT 5;

-- DROP PROCEDURE clean_emp;


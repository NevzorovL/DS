SELECT array_to_json(array_agg(row_to_json (ac))) FROM (
    SELECT *
    FROM actors
) ac;

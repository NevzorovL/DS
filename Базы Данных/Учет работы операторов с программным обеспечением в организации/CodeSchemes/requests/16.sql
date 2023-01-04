SELECT array_to_json(array_agg(row_to_json (fc))) FROM (
    SELECT *
    FROM organizations
) fc;

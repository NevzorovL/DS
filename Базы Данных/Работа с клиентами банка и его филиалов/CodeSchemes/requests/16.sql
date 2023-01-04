-- способ в одну строку
-- SELECT array_to_json(array_agg(row_to_json(bk))) FROM banks AS bk;

-- более профессиональный споспоб
SELECT array_to_json(array_agg(row_to_json (bk))) FROM (
    SELECT bk.bank_id,
           bk.name,
           br.address
    FROM banks AS bk
    LEFT OUTER JOIN branches AS br ON bk.bank_id=br.bank_id
) bk;

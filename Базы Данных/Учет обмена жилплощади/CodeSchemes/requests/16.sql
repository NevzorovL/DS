SELECT array_to_json(array_agg(row_to_json (cu))) FROM (
    SELECT cu.name,
           cu.area,
           ex.exchange,
           ex.date
    FROM customers AS cu
    LEFT OUTER JOIN exchanges AS ex ON cu.customer_id=ex.customer_id
) cu;
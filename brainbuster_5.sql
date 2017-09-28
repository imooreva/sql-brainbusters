#Revenue by store

SELECT
    i.store_id as "Store", sum(p.amount) as Revenue
FROM
    inventory i, payment p, rental r
WHERE
    p.rental_id = r.rental_id
    AND
    r.inventory_id = i.inventory_id
GROUP BY
    i.store_id
ORDER BY
    Revenue desc
;
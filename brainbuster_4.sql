#How many times has each movie been rented out?

SELECT
    f.title, count(r.rental_id)
FROM
    film f, inventory i, rental r
WHERE
    i.inventory_id = r.inventory_id
    AND
    f.film_id = i.film_id
GROUP BY
    f.title
;
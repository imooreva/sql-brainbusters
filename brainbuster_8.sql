#revenue for store 1 where film is rated R or PG-13

SELECT
    i.store_id as Store, f.rating as movie_rating, sum(p.amount) as store_revenue
FROM
    film f, payment p, inventory i, rental r
WHERE
    p.rental_id = r.rental_id
    AND r.inventory_id = i.inventory_id
    AND i.film_id = f.film_id
    AND i.store_id = 1
    AND f.rating in ('R', 'PG-13')
    AND r.rental_date between '2005-06-08' AND '2005-07-19'
GROUP BY 1, 2
ORDER BY 3 desc
;
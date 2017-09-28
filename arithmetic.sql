#Revenue per video title. Revenue = price * number of rentals
SELECT
    f.title as "Film Title", count(r.rental_id) as "Number of Rentals", f.rental_rate as "Rental Price", count(r.rental_id) * f.rental_rate as Revenue
FROM
    film f, inventory i, rental r
WHERE
    i.inventory_id = r.inventory_id
    AND
    f.film_id = i.film_id
GROUP BY
    f.title #alternatively, 1
SUM()
;

#What customer has paid us the most money?
SELECT
    p.customer_id, SUM(p.amount)
FROM
    payment p
GROUP BY
    1
ORDER BY
    2 desc
;


#revenue by actor/actress - actor's name, amount of revenue produced

#step 1: revenue per film
DROP TEMPORARY TABLE IF EXISTS revenue_per_film;
CREATE TEMPORARY TABLE revenue_per_film
SELECT
    f.film_id as film_id, f.rental_rate*count(r.rental_id) as film_revenue
FROM
    rental r, inventory i, film f
WHERE
    r.inventory_id = i.inventory_id AND i.film_id = f.film_id
GROUP BY 1
;


#step 2: actor to film revenue
SELECT
    a.actor_id as actor_id, concat(a.first_name, " ", a.last_name) as full_name, sum(rpf.film_revenue) as revenue
FROM
    revenue_per_film rpf, actor a, film_actor fa
WHERE
    a.actor_id = fa.actor_id
    AND fa.film_id = rpf.film_id
GROUP BY 1
;
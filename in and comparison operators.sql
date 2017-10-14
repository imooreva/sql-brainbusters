#IN, comparison operators, HAVING
#IN operator is shorthand for multiple OR conditions


#number of rentals in the Comedy, Sports and Family
SELECT
    c.name as category, count(r.rental_id) as num_rentals 
FROM
    rental r, inventory i, film f, film_category fc, category c
WHERE
    r.inventory_id = i.inventory_id
    AND i.film_id = f.film_id
    AND f.film_id = fc.film_id
    AND fc.category_id = c.category_id
    AND c.name in ("Comedy", "Sports", "Family")
GROUP BY
    1
;


#comparison operators (=, >, >=, <=, <>, !=)
#same as above query, except we select where film category is not Comedy
SELECT
    c.name as category, count(r.rental_id) as num_rentals 
FROM
    rental r, inventory i, film f, film_category fc, category c
WHERE
    r.inventory_id = i.inventory_id
    AND i.film_id = f.film_id
    AND f.film_id = fc.film_id
    AND fc.category_id = c.category_id
    AND c.name != "Comedy"
GROUP BY
    1
;


#where customer rental count > 3, using HAVING and count
#HAVING handles aggregate values where specific conditions are met; WHERE keyword cannot be used with aggregate functions
SELECT
  r.customer_id as customer, count(r.rental_id) as num_rentals
FROM
    rental r
GROUP BY 1
HAVING count(r.rental_id) >= 3
;
#films by rating

SELECT
    rating, count(film_id)
FROM
    film
GROUP BY
    #can be written as 'rating'
    1
;


#films by rating and rental price

SELECT
    rating, rental_rate, count(film_id)
FROM
    film
GROUP BY
    #can be written as '1,2'
    rating, rental_rate
;
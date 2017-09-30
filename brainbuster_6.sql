#Last rental date for each customer

SELECT
    concat(c.first_name, ' ', c.last_name) as "Full Name", max(r.rental_date) as "Last Rental"
FROM
    customer c, rental r
WHERE
    c.customer_id = r.customer_id
GROUP BY
    c.customer_id
;


#Revenue by month

SELECT
    left(p.payment_date, 7) as Month, sum(p.amount) as Monthly_Revenue
FROM
    payment p
GROUP BY
    1
;
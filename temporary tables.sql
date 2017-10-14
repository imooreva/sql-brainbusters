#Rentals per user
DROP TEMPORARY TABLE IF EXISTS rentals_per_customer
CREATE TEMPORARY TABLE rentals_per_customer
SELECT
    r.customer_id as customer_id, count(r.rental_id) as num_rentals, sum(p.amount) as customer_revenue
FROM
    rental r, payment p
WHERE
    p.rental_id = r.rental_id
GROUP BY 1
;

#Revenue by Users Who Rented X number of videos
SELECT
    rpc.num_rentals, sum(rpc.customer_revenue) as total_revenue, count(rpc.customer_id) as num_customers
FROM
    rentals_per_customer rpc
GROUP BY 1
;
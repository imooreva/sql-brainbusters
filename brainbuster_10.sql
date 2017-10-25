# JOIN lecture temporary tables
#all columns from active customer (active = 1)
#AND
#phone number from the address
#customer_id, active, phone_number

DROP TEMPORARY TABLE IF EXISTS active_users
CREATE TEMPORARY TABLE active_users
SELECT
    c.*, a.phone
FROM
    customer c JOIN address a ON c.address_id = a.address_id
WHERE
    c.active = 1
GROUP BY
    1
;

SELECT * FROM active_users
;


#at least 30 rentals
#customer_id, number of rentals and last rental date

CREATE TEMPORARY TABLE reward_users
SELECT
    r.customer_id, count(r.rental_id) as rental_count, max(rental_date)
FROM
    rental r
GROUP BY
    1
HAVING
    num_rentals >= 30
;

SELECT * from reward_users
;
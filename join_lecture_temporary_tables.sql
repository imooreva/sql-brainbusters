SELECT  
    ac.customer_id,
    ac.fav_color,
    rc.num_purchases
FROM
    active_customer ac,
    reward_customer rc
WHERE
    ac.customer_id = rc.customer_id
;

#JOIN example. Same as above query, but uses ON instead of WHERE
SELECT
    ac.customer_id,
    ac.fav_color,
    rc.num_purchases
FROM
	active_customer ac
		JOIN reward_customer rc ON ac.customer_id = rc.customer_id
;

# LEFT JOIN
SELECT
    ac.customer_id,
    ac.fav_color,
    rc.num_purchases
FROM
    active_customer ac
        LEFT JOIN reward customer rc on ac.customer_id = rc.customer_id
;
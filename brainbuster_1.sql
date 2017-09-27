#brainbuster number 1
#first and last name, email address for customers from store 2

SELECT
    first_name, last_name, email, store_id
FROM
    customer
WHERE
    store_id = 2
;
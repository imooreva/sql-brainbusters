#abbreviations added

SELECT
    f.title, c.name, l.name
FROM
    film f, language l, film_category fc, category c #table abbreviations defined
WHERE
    f.film_id = fc.film_id
    AND
    c.category_id = fc.category_id
    AND
    f.language_id = l.language_id
;
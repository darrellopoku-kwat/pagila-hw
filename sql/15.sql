SELECT
c.name,
COUNT(*) AS sum
FROM category AS c
JOIN film_category AS fc
ON fc.category_id = c.category_id
JOIN film AS f
ON f.film_id = fc.film_id
JOIN language AS l
ON l.language_id = f.language_id
WHERE l.name = 'English'
GROUP BY c.name
ORDER BY c.name;

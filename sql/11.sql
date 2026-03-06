SELECT
f.film_id,
f.title,
COUNT(*) AS count
FROM film AS f
JOIN inventory AS i
ON i.film_id = f.film_id
WHERE f.title ILIKE 'h%'
GROUP BY f.film_id, f.title
ORDER BY f.title DESC;

SELECT
f.title,
f.film_id,
COUNT(*) AS actor_count
FROM film AS f
JOIN film_actor AS fa
ON fa.film_id = f.film_id
GROUP BY f.title, f.film_id
ORDER BY actor_count ASC, f.title ASC, f.film_id ASC;

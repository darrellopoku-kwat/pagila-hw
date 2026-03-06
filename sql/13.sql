SELECT
f.film_id,
f.title,
l.language_id,
l.name
FROM film AS f
JOIN language AS l
ON l.language_id = f.language_id
WHERE (f.title ILIKE 'k%' OR f.title ILIKE 'q%')
AND l.name = 'English'
ORDER BY f.title;

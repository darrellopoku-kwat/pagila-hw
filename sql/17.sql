SELECT
co.country,
SUM(p.amount)::numeric(10,2) AS profit
FROM payment AS p
JOIN rental AS r
ON r.rental_id = p.rental_id
JOIN customer AS cu
ON cu.customer_id = r.customer_id
JOIN address AS a
ON a.address_id = cu.address_id
JOIN city AS ci
ON ci.city_id = a.city_id
JOIN country AS co
ON co.country_id = ci.country_id
GROUP BY co.country
ORDER BY co.country;

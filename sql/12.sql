SELECT
c.customer_id,
c.first_name,
c.last_name,
SUM(p.amount) AS sum
FROM customer AS c
JOIN payment AS p
ON p.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY c.last_name, c.first_name, c.customer_id;

SELECT
s.first_name,
s.last_name,
SUM(p.amount) AS sum
FROM staff AS s
JOIN payment AS p
ON p.staff_id = s.staff_id
WHERE p.payment_date >= DATE '2020-01-01'
AND p.payment_date < DATE '2020-02-01'
GROUP BY s.first_name, s.last_name
ORDER BY s.first_name, s.last_name;

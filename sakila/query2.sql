USE sakila;

SELECT f.title,COUNT(r.rental_id) AS tota_times_rented ,SUM(p.amount) AS total_earned
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON p.rental_id = r.rental_id
GROUP BY f.film_id
HAVING SUM(p.amount) > 110
ORDER BY total_earned DESC

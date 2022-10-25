USE sakila;

SELECT c.first_name, c.last_name , f.title, COUNT(p.payment_id) AS number_of_rentals
FROM film f
JOIN inventory i ON i.film_id = f.film_id
JOIN rental r ON r.inventory_id = i.inventory_id
JOIN customer c ON c.customer_id = r.customer_id
JOIN payment p ON p.rental_id = r.rental_id
GROUP BY f.film_id, c.customer_id
HAVING number_of_rentals > 1
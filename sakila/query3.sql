USE sakila;

SELECT f.title,COUNT(a.actor_id) AS total_actors
FROM film f
JOIN film_category fc ON fc.film_id = f.film_id
JOIN category c ON c.category_id = fc.category_id
JOIN film_actor fa ON fa.film_id = f.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE c.name IN ("Action", "Animation", "Children",
"Classics", "Comedy")
GROUP BY f.film_id
ORDER BY total_actors DESC

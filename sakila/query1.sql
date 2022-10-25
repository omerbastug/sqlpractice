USE sakila;

SELECT a.first_name, a.last_name
FROM actor a
JOIN film_actor fa ON fa.actor_id = a.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE f.title LIKE "%ALABAMA DEVIL%"


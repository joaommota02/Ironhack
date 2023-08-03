-- Instructions

-- 1. Get film ratings.

SELECT 
	rating 
FROM sakila.film;

-- 2. Get release years.

SELECT 
	release_year 
FROM sakila.film;

-- 3. Get all films with ARMAGEDDON in the title.

SELECT
	title
FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%';

-- 4. Get all films with APOLLO in the title

SELECT
	title
FROM sakila.film
WHERE title LIKE '%APOLLO%';

-- 5. Get all films which title ends with APOLLO.

SELECT
	title
FROM sakila.film
WHERE title LIKE '%APOLLO';

-- 6. Get all films with word DATE in the title.

SELECT
	title
FROM sakila.film
WHERE title LIKE '%DATE%';

-- 7. Get 10 films with the longest title.

SELECT
	title AS Top_10_Longest_Film_Titles,
	LENGTH(title) AS Title_length
FROM sakila.film
ORDER BY LENGTH(title) DESC 
LIMIT 10;

-- 8. Get 10 the longest films.

SELECT
	title AS Top_10_Longest_Films,
    length
FROM sakila.film
ORDER BY length DESC 
LIMIT 10;

-- 9. How many films include Behind the Scenes content?

SELECT
	COUNT(special_features)
FROM sakila.film 
WHERE special_features LIKE '%Behind the Scenes%';

-- 10. List films ordered by release year and title in alphabetical order.

SELECT 
	title, 
	release_year
FROM sakila.film
ORDER BY release_year, title ASC;

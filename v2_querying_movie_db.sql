/* Reading data from database */
USE movie_db;
SELECT * FROM movies;
SELECT year, title FROM movies;
SELECT * FROM movies WHERE year != 1999 AND title = "The Matrix";
SELECT * FROM movies WHERE year BETWEEN 1998 AND 2000;
SELECT * FROM movies WHERE title LIKE "%godfather%" ORDER BY year DESC, title ASC;
SELECT * FROM movies WHERE year IS NOT NULL LIMIT 20 OFFSET 10;
SELECT * FROM movies LIMIT 10, 20;
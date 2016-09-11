/*joining tables*/
SELECT * FROM movies JOIN genres ON movies.genre_id = genres.id;
SELECT * FROM movies RIGHT OUTER JOIN genres ON movies.genre_id = genres.id;
SELECT movies.title AS movie_title, genres.name AS genre_name FROM movies LEFT OUTER JOIN genres ON movies.genre_id = genres.id WHERE genres.name IS NOT NULL;
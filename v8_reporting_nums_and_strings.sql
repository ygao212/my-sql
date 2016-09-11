/*reporting calcs, strings and cleaning*/
USE movie_db;
SELECT COUNT(*) AS review_count_for_movie1 FROM reviews WHERE movie_id = 1;
SELECT 
MIN(score) AS minimum_score_for_Alien, 
MAX(score) AS maximum_score_for_Alien, 
SUM(score) AS total_score_for_Alien,
AVG(score) AS average_score_for_Alien 
FROM reviews where movie_id = 1;

SELECT 
    title,
    IFNULL(MIN(score), 0) AS minimum_score,
    IFNULL(MAX(score), 0) AS maximum_score,
    IFNULL(AVG(score), 0) AS average
FROM
    movies
        LEFT OUTER JOIN
    reviews ON movies.id = reviews.movie_id
WHERE
    year_released > 2000
GROUP BY movie_id
HAVING average > 1;

SELECT 
    CONCAT(first_name, ' ', UPPER(last_name)) AS full_name,
    CONCAT(SUBSTRING(LOWER(email), 1, 10), "...") AS email,
    LENGTH(username) AS username_length
FROM
    users
HAVING username_length < 19;

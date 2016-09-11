/*reset*/
USE movie_db;
/*DROP TABLE IF EXISTS genres;*/
/*ALTER TABLE movies DROP COLUMN id;*/
/*ALTER TABLE movies DROP COLUMN genre_id;*/

/*creating pk, uk,and fk*/
CREATE TABLE genres (id INTEGER AUTO_INCREMENT PRIMARY KEY, name VARCHAR(30) NOT NULL UNIQUE KEY);
INSERT INTO genres (name) VALUES ("Sci-Fi"), ("Action"), ("Mucial");
ALTER TABLE movies ADD COLUMN id INTEGER AUTO_INCREMENT PRIMARY KEY FIRST;
ALTER TABLE movies 
ADD COLUMN genre_id INTEGER NULL,
ADD CONSTRAINT FOREIGN KEY (genre_id) REFERENCES genres(id); 
UPDATE movies SET genre_id = 1 where id = 8 or id = 9;
SELECT * FROM movies;
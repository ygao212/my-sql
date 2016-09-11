/*altering tables in movie_db_1*/
USE movie_db;
DROP TABLE IF EXISTS movie_table;
DROP TABLE IF EXISTS actor_table;
DROP TABLE IF EXISTS movies;
CREATE TABLE movies(title VARCHAR(50), year YEAR);
CREATE TABLE actors(name VARCHAR(50));
RENAME TABLE movies TO movie_table, actors TO actor_table;
DROP TABLE IF EXISTS reviews;
TRUNCATE TABLE movie_table;
Create TABLE movies(title VARCHAR(50), year year);
ALTER TABLE movie_table ADD COLUMN genre VARCHAR(100);
ALTER TABLE actor_table ADD (pob VARCHAR(100), dob DATE);
ALTER TABLE actor_table CHANGE COLUMN pob place_of_birth VARCHAR(100);
ALTER TABLE actor_table CHANGE COLUMN dob date_of_birth DATE;
ALTER TABLE movie_table CHANGE year year_released YEAR; 
ALTER TABLE actor_table DROP date_of_birth;

/*dropping database*/
CREATE SCHEMA IF NOT EXISTS movies_db_2;
DROP SCHEMA IF EXISTS movies_db_2;
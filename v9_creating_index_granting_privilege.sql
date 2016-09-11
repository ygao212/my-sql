#creating index
EXPLAIN SELECT * FROM users WHERE last_name = "Chalkley";
CREATE INDEX last_name_idx ON users(last_NAME);
EXPLAIN SELECT * FROM users WHERE last_name = "Chalkley";
INSERT INTO users (username, email, first_name, last_name)
VALUES ("henry", "henry@email.com", "Henry", "Chalkley");
EXPLAIN SELECT * FROM users WHERE last_name = "Chalkley";

#granting permissions
GRANT SELECT 
ON movie_db.*
TO user1@'%'
IDENTIFIED BY 'password';

GRANT SELECT, INSERT, UPDATE, DELETE
ON movie_db.*
TO user2@'%'
IDENTIFIED BY 'password';

GRANT ALTER, CREATE, DROP
ON movie_db.*
TO user3@'%'
IDENTIFIED BY 'password';

#reset privileges
FLUSH PRIVILEGES

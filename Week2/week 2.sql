/*
	Edward Perez
	Assignment 2 - SQL and R.sql
 */
DROP DATABASE IF EXISTS Reviews;

CREATE DATABASE Reviews;
    
use Reviews;

DROP TABLE IF EXISTS Rating;
DROP TABLE IF EXISTS Movie;



CREATE TABLE Movie (
    Id INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL
);

INSERT INTO Movie (Id, Title) VALUES (1, 'Ghostbusters: Afterlife');
INSERT INTO Movie (Id, Title) VALUES (2, 'Encanto');
INSERT INTO Movie (Id, Title) VALUES (3, 'Spider-Man: No Way Home');
INSERT INTO Movie (Id, Title) VALUES (4, 'Jackass Forever');
INSERT INTO Movie (Id, Title) VALUES (5, 'Nightmare Alley');
INSERT INTO Movie (Id, Title) VALUES (6, 'The Batman');

SELECT *
  FROM Movie;

CREATE TABLE Rating (
    UserName VARCHAR(50) NOT NULL,
    MovieRating INT NULL,
    MovieId INT 
);

INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Ashley', 4, 1);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Eddie', 2, 3);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Mary-Anne', 3, 2);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Chris', 4, 4);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Chris', 2, 6);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Laisa', 3, 5);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Laisa', 3, 4);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Gustavo',1, 3);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('John',4, 2);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Junior',5, 1);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Junior',2, 3);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Jorge',4, 6);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Mary-Anne', 3, 5);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Chris', 4, 2);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Chris', 2, 1);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Laisa', 3, 6);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Laisa', 3, 1);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Gustavo',1, 2);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('John',4, 6);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Junior',5, 2);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Junior',2, 1);
INSERT INTO Rating (UserName, MovieRating, MovieId) VALUES ('Jorge',4, 5);


SELECT * 
	FROM Rating;

SELECT m.*, r.UserName, r.MovieRating 
	FROM Movie m 
		INNER JOIN Rating r 
			ON m.Id = r.MovieId;

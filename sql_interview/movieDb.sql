CREATE DATABASE TeluguMoviesDB;

CREATE TABLE Movies (
 MovieID INT PRIMARY KEY,
 Title VARCHAR(100),
 Director VARCHAR(100),
 ReleaseYear INT,
 Genre VARCHAR(50)
);



INSERT INTO Movies (MovieID, Title, Director, ReleaseYear, Genre)
VALUES (1, 'Baahubali: The Beginning', 'S. S. Rajamouli', 2015, 'Action/Drama');



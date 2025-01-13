


/*Creating DataBase Name*/
CREATE DATABASE Customers


/*Creating Developers Table*/

CREATE TABLE Developers (
    DeveloperId INT PRIMARY KEY,      -- Primary Key
    DeveloperName NVARCHAR(100) NOT NULL,
	Age INT NOT NULL
);

/*Insert Developers Table*/
INSERT INTO Developers (DeveloperId, DeveloperName, Age)
VALUES (1, 'Sai Kiran',22),
       (2, 'Shiva Prasad',25),
       (3, 'Devaiah',28),
       (4, 'Malleshwari',24)
	  

/*Lets view the  Developers Table*/
SELECT * FROM Developers;

/*Creating Technologies Table*/

CREATE TABLE Technologies (
    TechnologyID INT PRIMARY KEY,      -- Primary Key
    TechnologyName NVARCHAR(100) NOT NULL,
    DeveloperId INT,                 -- Foreign Key
    CONSTRAINT FK_Developer_Skills FOREIGN KEY (DeveloperId)
        REFERENCES Developers(DeveloperId)      -- Reference to Country Table
);

/*Insert Technologies Table*/
INSERT INTO Technologies(TechnologyID,TechnologyName,DeveloperId)
VALUES (1,'ReactJS',1),
 (2,'Node',2),
 (3,'Next',3),
(4,'Graphql',4)



/*Lets view the  Technologies Table*/
SELECT * FROM Technologies


/*For Delete Purpose to creating One Table */
CREATE TABLE Player (
    Name NVARCHAR(100),
    Age INT,
    Score INT
);
/*Insert Player Table*/
INSERT INTO Player(Name, Age, Score)
VALUES 
('Warner', 23, 35),
('Pollard', 34, 25),
('KL Rahul', 55, 75),
('Klassen', 77, 25)


/*Lets view the  Player Table*/
SELECT * FROM Player

/*why here adding extra rows with same data?*/

/*For Drop Purpose to creating One Table */

CREATE TABLE MatchDetails (
    team_name NVARCHAR(100),
    played_with NVARCHAR(100),
    venue NVARCHAR(100),
    match_date DATE,              -- Use 'DATE' data type for storing dates
    is_won BIT                    -- Use 'BIT' data type for boolean values
);
/*Insert MatchDetails Table*/
INSERT INTO
    MatchDetails (team_name, played_with, venue, match_date, is_won)
VALUES
    ('CSK', 'MI', 'Chennai', '2020-04-21', 1),    -- 1 for TRUE in BIT
    ('SRH', 'RR', 'Hyderabad', '2020-04-23', 1);  -- 1 for TRUE in BIT




/*Lets view the  MatchDetails Table*/
SELECT * FROM MatchDetails

/*Selecting specific columns in Developers table I want DeveloperName and Age*/

SELECT DeveloperName,Age FROM Developers

/*Selecting all the tables Columns from Developers Table*/

SELECT * FROM Developers

/*
Selecting Specific Rows:
We use WHERE clause to retrieve only specific rows.

SELECT *
FROM table_name
WHERE condition;

WHERE clause specifies a condition that has to be satisfied for retrieving the data from a database.
*/

/*TASK: I want to display the Shiva Prasad Row In Developers Table*/

SELECT * FROM Developers
WHERE DeveloperName='Shiva Prasad'


/*
Update Rows:
UPDATE clause is used to update the data of an existing table in database. We can update all the rows or only specific rows as per the
requirement.


Update all

UPDATE
 table_name
SET
 column1 = value1;


 Update Specific Rows

 UPDATE
 table_name
SET
 column1 = value1
WHERE
 column2 = value2;
*/

/*TASK 1: I want to display All the Age is 25  Developers Table*/

UPDATE Developers
SET
AGE=25;


/*TASK 1: I want to Change in specific person  name Sai Kiran to Sai  Developers Table*/

UPDATE Developers
SET
AGE=50
WHERE 
DeveloperName='Sai Kiran'

UPDATE Developers
SET
AGE=24
WHERE 
DeveloperName='Shiva Prasad'


/*
Delete Rows:
DELETE clause is used to delete 'existing records from a table'
We can not retrieve the data once we delete the data from the table
*/

/*Delete all the rows from the Player Table

DELETE FROM
 table_name;
*/
DELETE FROM Player

/* Delete Specific Rows from  Player Table
 DELETE FROM
    table_name
 WHERE
 column1 = value1;
*/
DELETE FROM Player
WHERE Score=25;

SELECT * FROM Player;


/*
Drop Table:
DROP clause is used to "delete a table from the database".

DROP TABLE table_name;

*/

/* Delete Player table from the database */

DROP TABLE Player;

/*
Alter Table:
ALTER clause is used to add, delete, or modify columns in an existing table. 

*/

/*The database consists of a
player table that stores the details of players who are a part of a tournament. player table stores the name, age and score of players.
so in that we need to add the country column

ALTER TABLE
 table_name
ADD
 column_name datatype;

*/

/*TASK 1: Insert the column of country in player table*/
ALTER TABLE Player
ADD Country NVARCHAR(100)

/*column will be added successfull so we need to insert*/
INSERT INTO Player(Name, Age, Score,Country)
VALUES 
('Warner', 23, 35,'Australia'),
('Pollard', 34, 25,'West Indies'),
('KL Rahul', 55, 75,'India'),
('Klassen', 77, 25,'South Africa')

/*For checking...*/

SELECT * FROM Player

/*
Default values for newly added columns in the existing rows will be NULL.
*/

/* add, delete, or modify columns  in ALTER*/
/*Rename Column:
ALTER TABLE
EXEC sp_rename 'table_name.old_column_name', 'new_column_name', 'COLUMN';
*/

EXEC sp_rename 'Player.Country', 'CountryName', 'column'

/*Drop Column

ALTER TABLE
 table_name DROP COLUMN column_name;

 DROP COLUMN is not supported in some DBMS, including SQLite.
*/

ALTER TABLE Player DROP COLUMN Age


/*
Comparison Operators:

In a typical e-commerce scenario, users would generally filter the products with good ratings,
or want to purchase the products of a certain brand or of a certain
price

product table that stores the data of products like name, category, price, brand and rating. You can check the schema and data
of product table in the code playground.

Operator	  Description
	=           Equal to
	<>		    Not equal to
	<			Less than
	<=			Less than or equal to
	>			Greater than
	>=			Greater than or equal to


*/

/*
for comparision operators i have to create Product table
name, category, price, brand and rating 
*/
CREATE TABLE Products(
 name NVARCHAR(100),
 category NVARCHAR(100),
 price INT,
 brand NVARCHAR(100),
 rating INT
)

INSERT INTO Products(name,category,price,brand,rating)
VALUES('Milk','drink',35,'heritage',3),
('Apple','fruit',55,'edhookkati',5),
('Thumsup','drink',25,'coco cola',2),
('banana','fruit',66,'Kashmiri',4),
('sprit','drink',35,'coco cola',5),
('Mango','fruit',85,'edhookkati',2),
('Fizz','drink',45,'Beer',2)

DELETE FROM Products

DELETE FROM Products
WHERE price=35;

SELECT * FROM Products

/*Get all the details of the products whose category is "drink" from the product table.*/
/* = equal Operation */
SELECT * FROM Products
WHERE category='drink'


/*2. Get all the details of the products that does not belong to drink category from the product table.
*/
/* <> equal Operation */
SELECT * FROM Products
WHERE category <> 'drink'

/* < equal Operation */
SELECT * FROM Products
WHERE price < 36

/* > equal Operation */
SELECT * FROM Products
WHERE price > 36

/*String Operations

Consider the case of e-commerce platforms. We generally search for the products on the basis of product name.
But while searching, we need not enter the full name. For example, typing  mobiles  in a search bar will fetch thousands of results.
How to get the data on the basis of only a part of the string? 
*/

/*
LIKE Operator:
LIKE operator is used to perform queries on strings. This operator is especially used in "WHERE" clause to retrieve all the rows that match
the given pattern.
*/

/*
   Symbol                                 Description                                  Example
Percent sign ( % )       Represents zero or more characters                 ch% finds ch, chips, chocolate..
Underscore ( _ )         Represents a single character                       _at finds mat, hat and bat
Exact Match              WHERE name LIKE "mobiles"                          Retrieves products whose name is exactly equals to "mobiles"
Starts With              WHERE name LIKE "mobiles%"                         Retrieves products whose name starts with "mobiles"
Ends With                WHERE name LIKE "%mobiles"                         Retrieves products whose name ends with "mobiles"
Contains                 WHERE name LIKE "%mobiles%"                        Retrieves products whose name contains with "mobiles"
Pattern Matching         WHERE name LIKE "a_%"             Retrieves products whose name starts with "a" and have at least 2 characters in length

SELECT * FROM table_name
WHERE
 coulumn1 LIKE "string_name";

*/

SELECT * FROM Products
WHERE category LIKE 'drink'

/*as above scenarios you have to try ..*/

/*Logical Operators
So far, we've used comparison operators to filter the data. But in real-world scenarios, we often have to retrieve the data using several conditions at once. For
example, in the case of e-commerce platforms, users often search for something like:
Get shoes from the Puma brand, which have ratings greater than 4 and price less than 50
*/
SELECT * FROM Products

/*
AND, OR, NOT


Operator             Description
 AND                Used to fetch rows that satisfy "two or more" conditions.
 OR                 Used to fetch rows that satisfy at least "one" of the given conditions.
 NOT                Used to negate a condition in the "WHERE clause".

 SELECT * FROM table_name
WHERE
 condition1
 operator condition2
 operator condition3
 ...;
*/


SELECT * FROM Products
WHERE category='drink' AND brand='heritage' AND  price< 55


SELECT * FROM Products
WHERE category='drink' OR brand='sdfsd'

/*
Multiple Logical Operators
We can also use the combinations of logical operators to combine two or more conditions. These compound conditions enable us to fine-tune the data retrieval
requirements. 
*/

SELECT * FROM Products
WHERE category='drink' AND rating>3 OR brand='coco cola'
/*Both are same scenarios */
SELECT * FROM Products
WHERE (category='drink' AND rating>3) OR brand='coco cola'

/*
IN AND BETWEEN
we use the IN operator to check if a value is present in the list of values. And, BETWEEN operator is used to check if a particular value exists
in the given range.

IN Operator
Retrieves the corresponding rows from the table if the value of column(c1) is present in the given values(v1,v2,..).

SELECT
 *
FROM
 table_name
WHERE
 c1 IN (v1, v2,..);
*/


SELECT * FROM Products
WHERE brand IN ('beer','coco cola')


/*
BETWEEN Operator
Retrieves all the rows from table that have cloumn(c1) value present between the given range(v1 and v2).

SELECT * FROM
 table_name
WHERE
 c1 BETWEEN v1
 AND v2;

 BETWEEN operator is inclusive, i.e., both the lower and upper limit values of the range are included.
*/

SELECT * FROM  Products WHERE price BETWEEN 50 AND 80 

/*
ORDER BY
ORDER BY clause to order rows. By default, ORDER BY sorts the data in the ascending order .

SELECT
 column1,
 column2,
..columnN
FROM table_name [WHERE condition]
ORDER BY
 column1 ASC/ DESC,
 cloumn2 ASC/ DESC;
*/


SELECT * FROM Products

SELECT price, category FROM Products 
WHERE category='drink' ORDER BY
price ASC 


/*
C
DISTINCT clause is used to return the distinct i.e unique values.

SELECT
 DISTINCT column1,
 column2,..
 columnN
FROM
 table_name
WHERE
 [condition];
*/

SELECT DISTINCT brand from Products ORDER BY brand
SELECT DISTINCT brand from Products WHERE brand='beer';

SELECT COUNT(*) AS total_rows FROM Products;


/*
LIMIT
LIMIT clause is used to specify the number of rows(n) we would like to have in result.

SELECT
 column1,
 column2,..
 columnN
FROM
 table_name
LIMIT n;


OFFSET
OFFSET clause is used to specify the position (from nth row) from where the chunk of the results are to be selected.

SELECT
 column1,
 column2,..
 columnN
FROM
 table_name
OFFSET n;
*/

SELECT name, price, rating 
FROM Products 
ORDER BY rating DESC 
OFFSET 2 ROWS 
FETCH NEXT 5 ROWS ONLY;

/*

Aggregation Functions
Combining multiple values into a single value is called aggregation. Following are the functions provided by SQL to perform aggregations on the given data:

Aggregate Functions         Description
  COUNT                Counts the number of values
  SUM                  Adds all the values
  MIN                  Returns the minimum value
  MAX                  Returns the maximum value
  AVG                  Calculates the average of the values
*/


CREATE TABLE player_match_details(
name NVARCHAR(200),
match NVARCHAR(200),
score INT,
fours INT,
sixes INT,
year INT
);

INSERT INTO player_match_details (name, match,score,fours,sixes,year)
VALUES ('Dhoni',30400,3453,456,75,2022),
('Sachin',23543,7868,345,25,2024),
('Virat',334000,54668,3445,77,2022),
('Gambhir',305500,9865,546,33,2024),
('Gill',304600,4365,899,99,2021),
('KL rahul',300456,777,345,88,2025),
('Bhuvi',303500,345456,456,76,2035),
('Bumhra',334500,3526,3245,65,2036),
('Bhuvi',3500,234566,243,45,2025),
('Yuvaraj',434000,34546,678,98,2035),
('Sehwag',608900,7683,3465,86,2078),
('Sachin',706700,34456,34567,56,2056)

DELETE FROM player_match_details

SELECT * FROM player_match_details

SELECT SUM(score)  FROM player_match_details
SELECT SUM(score) AS total_score FROM player_match_details


SELECT
 MAX(score) AS max_score,
 MIN(score) AS min_score
FROM
 player_match_details
WHERE
 year = 2022;


 /*
 COUNT Variants
Calculate the total number of matches played in the tournament.

 */
SELECT COUNT(*) AS total_matches
FROM player_match_details;

SELECT COUNT(1) AS total_matches
FROM player_match_details;

/*
Alias
Using the keyword
AS , we can provide alternate temporary names to the columns in the output

SELECT
 c1 AS a1,
 c2 AS a2,
 ...
FROM
 table_name;
*/

SELECT * FROM player_match_details

SELECT
 name AS player_name
FROM
 player_match_details;

 /*
 Get the average score of players as "avg_score"
 */

 SELECT
 AVG(score) AS avg_score
FROM
 player_match_details;


 SELECT
 AVG(score) AS avg_score
FROM
 player_match_details
 WHERE year=2022

 SELECT SUM(sixes) AS total_sixes FROM
 player_match_details


 /*
 The GROUP BY keyword in SQL is used to group rows which have the same values for the mentioned attributes. You can perform aggregations on these
groups to get finer analytics.
HAVING keyword is used to further refine the data by filtering the aggregated values. Let s explore more about GROUP BY and HAVING clauses with the
following database.
 */

 /*
 GROUP BY
The
GROUP BY clause in SQL is used to group rows which have same values for the mentioned attributes.

SELECT
 c1,
 aggregate_function(c2)
FROM
 table_name
GROUP BY c1;
 */
SELECT name,
SUM(score) AS total_score 
FROM player_match_details
GROUP BY name

/*
GROUP BY with WHERE
We use WHERE clause to filter the data before performing aggregation.
SELECT
 c1,
 aggregate_function(c2)
FROM
 table_name
WHERE
 c3 = v1
GROUP BY c1;

*/

SELECT * FROM player_match_details
/* half_centuri_sixes who are hitted the  half_centuri_sixes above sixes*/
SELECT name,COUNT(*) AS half_centuri_sixes FROM player_match_details
WHERE sixes>=50
GROUP BY name

/*
HAVING
HAVING clause is used to filter the resultant rows after the application of GROUP BY clause.
SELECT
 c1,
 c2,
 aggregate_function(c1)
FROM
 table_name
GROUP BY
 c1, c2
HAVING
 condition;


 WHERE vs HAVING: WHERE is used to filter rows and this operation is performed before grouping. HAVING is used to filter groups and this operation is performed after grouping.
*/


/*
SQL Functions
SQL provides many built-in functions to perform various operations over data that is stored in tables.
*/

/*
Date Functions
strftime()
strftime() function is used to extract month, year, etc. from a date/datetime field based on a specified format.

SELECT name, strftime('%Y', release_date)
FROM
 movie;

format   description        output format       Example
%d       Day of the month      01 - 31            28
%H          Hour               00 - 24            08
%m          Month              01 - 12            02
%j       Day of the year      001 - 365           59
%M          Minute             00-59              30


SELECT
 strftime('%m', release_date) as month,
 COUNT(*) as total_movies
FROM
 movie
WHERE
 strftime('%Y', release_date) = '2010'
GROUP BY
 strftime('%m', release_date);
*/

/*
CAST Function
CAST function is used to typecast a value to a desired data type

CAST(value AS data_type);


SELECT strftime('%m', release_date) as month,
 COUNT(*) as total_movies
FROM
 movie
WHERE
 CAST(strftime('%Y', release_date) AS INTEGER) = 2010
GROUP BY
 strftime('%m', release_date);


*/

/*
SQL         Function Behavior
FLOOR       Rounds a number to the nearest integer below its current value
CEIL        Rounds a number to the nearest integer above its current value
ROUND       Rounds a number to a specified number of decimal places


SELECT
 name,
 ROUND(collection_in_cr, 1) AS RoundedValue,
 CEIL(collection_in_cr) AS CeilValue,
 FLOOR(collection_in_cr) AS FloorValue
FROM
 movie;
*/

/*
CASE Clause
SQL provides CASE clause to perform conditional operations. This is similar to the switch case / if-else conditions in other programming languages.


CASE Clause
Each condition in the
CASE clause is evaluated and results in corresponding value when the first condition is met.

SELECT c1, c2
CASE
 WHEN condition1 THEN value1
 WHEN condition2 THEN value2
 ...
 ELSE value
 END AS cn
FROM table;

In CASE clause, if no condition is satisfied, it returns the value in the ELSE part. If we do not specify the ELSE part,
CASE clause results in NULL
We can use CASE in various clauses like SELECT, WHERE, HAVING, ORDER BY and GROUP BY.
*/

CREATE TABLE movie (
    movie_id INT PRIMARY KEY,  -- Updated to use movie_id as primary key
    name NVARCHAR(255),
    budget DECIMAL(15, 2),
    collection DECIMAL(15, 2),
    rating FLOAT,
    release_date DATE
);

INSERT INTO movie (movie_id, name, budget, collection, rating, release_date)
VALUES 
(1, 'Inception', 160000000, 829895144, 8.8, '2010-07-16'),
(2, 'Avengers: Endgame', 356000000, 2797800564, 8.4, '2019-04-26'),
(3, 'The Dark Knight', 185000000, 1004558444, 9.0, '2008-07-18'),
(4, 'Interstellar', 165000000, 701729206, 8.6, '2014-11-07'),
(5, 'Titanic', 200000000, 2187463944, 7.9, '1997-12-19');

CREATE TABLE actor (
    actor_id INT PRIMARY KEY,  -- Primary key for actor table
    name NVARCHAR(255),
    age INT
);

INSERT INTO actor (actor_id, name, age)
VALUES
(1, 'Leonardo DiCaprio', 48),
(2, 'Robert Downey Jr.', 58),
(3, 'Christian Bale', 49),
(4, 'Matthew McConaughey', 54),
(5, 'Kate Winslet', 48)


CREATE TABLE cast (
    actor_id INT,  -- Foreign key from actor table
    movie_id INT,  -- Foreign key from movie table
    role NVARCHAR(255),
    PRIMARY KEY (actor_id, movie_id),  -- Composite primary key
    FOREIGN KEY (actor_id) REFERENCES actor(actor_id),  -- Foreign key reference to actor table
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)   -- Foreign key reference to movie table
);

INSERT INTO cast (actor_id, movie_id, role)
VALUES
(1, 1, 'Dom Cobb'),         -- Leonardo DiCaprio in Inception
(1, 5, 'Jack Dawson'),      -- Leonardo DiCaprio in Titanic
(2, 2, 'Iron Man'),         -- Robert Downey Jr. in Avengers: Endgame
(3, 3, 'Batman'),           -- Christian Bale in The Dark Knight
(4, 4, 'Cooper');           -- Matthew McConaughey in Interstellar


select * from movie;
select * from actor;
select * from cast;
/*
profit               tax_percentage
 <=100 crores          10% of profit
 100< <=500 crores     15% of profit
 > 500 crores          18% of profit
*/

SELECT movie_id, name,
 CASE
 WHEN collection - budget <= 100 THEN collection - budget * 0.1
 WHEN (collection - budget > 100
 AND collection - budget < 500) THEN collection - budget * 0.15
 ELSE collection - budget * 0.18
 END AS tax_amount
FROM
 movie;


 /*
 UNION:unique
 UNION ALL: Doesn't eliminate duplicate results


 Applying Set Operations
We can apply these set operations on the one or more sql queries to combine their results 
SELECT
 c1, c2
FROM
 table_name
SET_OPERATOR
SELECT
 c1, c2
FROM
 table_name;


 Basic rules when combining two sql queries using set operations
Each SELECT statement must have the same number of columns
The columns must have similar data types"
The columns in each SELECT statement must be in the same order








Clauses                 How to Use It												Functionality
CREATE TABLE       CREATE TABLE table_name ...								Creates a new table
INSERT             INSERT INTO table_name ...								Used to insert new data in the table
SELECT             SELECT col1, col2...										Retrieves the selected columns
SELECT             SELECT * FROM...											Retrieves all the columns from a table
FROM               FROM table_name											FROM clause specifies the table(s) in which the required data columns are located
WHERE              WHERE col > 5											Retrieves only specific rows based on the given conditions
UPDATE, SET        UPDATE table_name SET column1 = value1;					Updates the value of a column of all the rows (or only specific rows using WHERE clause)
DELETE             DELETE FROM table_name									Deletes all the rows from the table
DROP               DROP TABLE table_name									Deletes the table from the database
ALTER              ALTER TABLE table_name ...								Used to add, delete or modify columns in a table
ORDER BY           ORDER BY col1 ASC/DESC..									Sorts the table based on the column(s) in the ascending or descending orders
DISTINCT           SELECT DISTINCT col, ...									Gets the unique values of given column(s)
LIMIT              LIMIT 10													Limits the number of rows in the output to the mentioned number
OFFSET             OFFSET 5													Specifies the position (from nth row) from where the chunk of the results are to be retrieved
GROUP BY           GROUP BY col ...											Groups the rows that have same values in the given columns
HAVING             HAVING col > 20											Filters the resultant rows after the application of GROUP BY clause
CASE               CASE WHEN condition1 THEN value1 WHEN ..ELSE .. END      Returns a corresponding value when the first condition is met
 
 
 Operators
 Operators            How to Use It                                                         Functionality
<>                    WHERE col <> 5				Filters the rows where the given column is not equal to 5. Similarly, other comparison operators (=,>, <,>=,<=) are also used.
LIKE                  WHERE col LIKE '%Apple%'       Retrieves the rows where the given column has 'apple' within the text
AND                   WHERE col1 > 5 AND col2 <3     Retrieves the rows that satisfy all the given conditions
OR                    WHERE col1 > 5 OR col2 < 3     Retrieves the rows that satisfy at least one condition
NOT                   WHERE NOT col = 'apple'         Retrieves the rows if the condition(s) is NOT TRUE
IN					  WHERE col IN ('Apple','Microsoft')   Retrieves the rows if the column value is present in the given values
BETWEEN               WHERE col BETWEEN 3 AND 5       Retrieves the rows if the column value is present between (and including) the given values
 
 Functions

Functions                            How to Use It                                Functionality
COUNT                            SELECT COUNT(col)...                       Counts the number of values in the given column
SUM                              SELECT SUM(col) ...                        Adds all the values of given column
 MIN                             SELECT MIN(col) ...                        Gets the minimum value of given column
MAX                              SELECT MAX(col) ...                        Gets the maximum value of given column
AVG                              SELECT AVG(col) ...                        Gets the average of the values present in the given column
strftime()                       strftime("%Y", col) ...                    Extracts the year from the column value in string format. Similarly, we can extract month, day, week of the day and many.
CAST()                           CAST(col AS datatype)...                   Converts the value to the given datatype
FLOOR()                          FLOOR(col)                                 Rounds a number to the nearest integer below its current value
CEIL()                           CEIL (col)                                 Rounds a number to the nearest integer above its current value
ROUND()                          ROUND(col)                                 Rounds a number to a specified number of decimal places
UPPER()                          UPPER(col)                                 Converts a string to upper case
LOWER()                          Lower(col)                                 Converts a string to lower case
 
 

 Real world objects/concepts are called entities in ER Model
 Properties of real world objects/concepts are represented as attributes of an entity in ER model.
The attribute that uniquely identifies each entity is called key attribute
Entity Type is a collection of entities that have the same attributes (not values).


Relationships
Association among the entities is called a relationship.
Example:
Person has a passport.
Person can have many cars.
Each student can register for many courses, and a course can have many students.
Types of relationships
One-to-One Relationship
One-to-Many or Many-to-One Relationship
Many-to-Many Relationship

One-to-One Relationship:
An entity is related to only one entity, and vice versa.
Example
A person can have only one passport.
similarly, a passport belongs to one and only one person.


One-to-Many Relationship:
An entity is related to many other entities.
Example
A person can have many cars. But a car belongs to only one person.

Many-to-Many Relationship
Multiple entities are related to multiple entities.
Example
Each student can register to multiple courses.
similarly each course is taken by multiple students.


Cardinality Ratio
Cardinality in DBMS defines the maximum number of times an instance in one entity can relate to instances of another entity.

Primary key: A minimal set of attributes (columns) in a table that uniquely identifies rows in a table.
In the following tables, all the ids are primary keys as they uniquely identify each row in the table
The table that refer to the primary key of another table is called Foreign Key.

Primary Key

CREATE TABLE table_name (
 c1 t1 NOT NULL PRIMARY KEY,
...
 cn tn,
);


Foreign Key
CREATE TABLE table2(
 c1 t1 NOT NULL PRIMARY KEY,
 c2 t2,
 FOREIGN KEY(c2) REFERENCES table1(c3) 
);


 */



 CREATE TABLE customer (
 id INTEGER NOT NULL PRIMARY KEY,
 name VARCHAR(250),
 age INT
);

CREATE TABLE product (
 id INTEGER NOT NULL PRIMARY KEY,
 name VARCHAR(250),
 price INT,
 brand VARCHAR(250),
 category VARCHAR(250)
);

CREATE TABLE address(
 id INTEGER NOT NULL PRIMARY KEY,
 pin_code INTEGER,
 door_no VARCHAR(250),
 city VARCHAR(250),
 customer_id INTEGER,
 FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE
);

CREATE TABLE cart(
 id INTEGER NOT NULL PRIMARY KEY,
 customer_id INTEGER NOT NULL UNIQUE,
 total_price INTEGER,
 FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE
);


/*
JOINS
So far, we have learnt to analyse the data that is present in a single table. But in the real-world scenarios, often, the data is distributed in multiple tables. To
fetch meaningful insights, we have to bring the data together by combining the tables.
We use JOIN clause to combine rows from two or more tables, based on a related column between them. There are various types of joins, namely 
Inner Join, Left join, Right join.
INNER JOIN
INNER JOIN combines rows from both the tables if they meet a specified condition.
SELECT *
FROM table1
 INNER JOIN table2
ON table1.c1 = table2.c2;

LEFT JOIN
each row in the left table, matched rows from the right table are combined. If there is no match, NULL values are assigned
to the right half of the rows in the temporary table.
SELECT *
FROM table1
 LEFT JOIN table2
ON table1.c1 = tabl2.c2;

Using joins with other clauses
We can apply
WHERE , ORDER BY , HAVING , GROUP BY , LIMIT , OFFSET and other clauses (which are used for retrieving data tables) on the
temporary joined table as well.

SELECT student.full_name
FROM (course
 INNER JOIN student_course
ON course.id = student_course.course_id) AS T
 INNER JOIN student
ON T.student_id = student.id
WHERE course.name = "Machine Learning"
ORDER BY student_course.score DESC
LIMIT 1;


Using joins with aggregations
We can apply
WHERE , ORDER BY , HAVING , GROUP BY , LIMIT , OFFSET and other clauses (which are used for retrieving data tables) on the
temporary joined table as well.

SELECT
 course.name AS course_name,
 MAX(score) AS highest_score
FROM
 course
 LEFT JOIN student_course
ON course.id = student_course.course_id
GROUP BY
 course.id;


 RIGHT JOIN
RIGHT JOIN or RIGHT OUTER JOIN is vice versa of LEFT JOIN.
I.e., in
RIGHT JOIN , for each row in the right table, matched rows from the left table are combined. If there is no match, NULL values are assigned
to the left half of the rows in the temporary table.

SELECT *
FROM table1
 RIGHT JOIN table2
ON table1.c1 = table2.c2;


FULL JOIN
FULL JOIN or FULL OUTER JOIN is the result of both RIGHT JOIN and LEFT JOIN
SELECT *
FROM table1
 FULL JOIN table2
ON c1 = c2;


  Join Type                 Use Case
Natural Join       Joins based on common columns
Inner Join         Joins based on a given condition
Left Join          All rows from left table & matched rows from right table
Right Join         All rows from right table & matched rows from left table
Full Join          All rows from both the tables
Cross Join         All possible combinations


View
A view can simply be considered as a name to a SQL Query
Create View
To create a view in the database, use the
CREATE VIEW statement.

CREATE VIEW user_base_details AS
SELECT id, name, age, gender, pincode
FROM user;

Views are used to write complex queries that involves multiple joins, group by, etc., and can be used whenever needed.
Restrict access to the data such that a user can only see limited data instead of a complete table.



*/

CREATE TABLE actor (
    actor_id INT PRIMARY KEY,  -- Primary key for actor table
    name NVARCHAR(255),
    age INT
);

INSERT INTO actor (actor_id, name, age)
VALUES
(1, 'Leonardo DiCaprio', 48),
(2, 'Robert Downey Jr.', 58),
(3, 'Christian Bale', 49),
(4, 'Matthew McConaughey', 54),
(5, 'Kate Winslet', 48)

/*VIEW CODE*/

CREATE VIEW us_customers AS
SELECT name, age
FROM actor
WHERE age = 48

CREATE VIEW us_customer AS
SELECT name, age
FROM actor
WHERE age = 48;

SELECT * FROM us_customer

/*
Subqueries
We can write nested queries, i.e., a query inside another query.

SELECT
 name,
 (
 SELECT AVG(rating)
 FROM product
 WHERE category = "WATCH"
 ) - rating AS rating_variance
FROM product
WHERE category = "WATCH";
*/



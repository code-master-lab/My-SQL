CREATE DATABASE school;
USE school;

-- View all databases
SHOW DATABASES;

-- View all tables in the current database
SHOW TABLES;

CREATE TABLE student (
  rollno INT PRIMARY KEY,
  name VARCHAR(50), 
  marks INT NOT NULL,
  grade VARCHAR(50),
  city VARCHAR(50)
);

INSERT INTO student (rollno, name, marks, grade, city) 
VALUES	
(101, "anil", 78, "c", "pune"),
(102, "bhumika", 93, "a", "mumbai"),
(103, "chetan", 85, "b", "mumbai"),
(104, "dhruv", 96, "a", "delhi"),
(105, "emanuel", 12, "f", "delhi"),
(106, "farah", 82, "b", "delhi");

-- Removes all data but keeps table structure
TRUNCATE TABLE student;

SELECT * FROM student;                          -- Select all columns
SELECT name, marks FROM student;               -- Select specific columns
SELECT DISTINCT city FROM student;             -- Unique cities

-- WHERE clause examples
SELECT * FROM student WHERE marks > 90;
SELECT * FROM student WHERE city = "mumbai";
SELECT * FROM student WHERE marks > 80 AND city = "delhi";
SELECT * FROM student WHERE marks + 6 > 90;
SELECT * FROM student WHERE marks = 93;
SELECT * FROM student WHERE marks >= 96;

-- Logical operators
SELECT * FROM student WHERE marks > 90 AND city = "mumbai";
SELECT * FROM student WHERE marks > 90 OR city = "mumbai";

-- BETWEEN, IN, NOT IN
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Delhi", "Mumbai");
SELECT * FROM student WHERE city NOT IN ("Delhi", "Mumbai");

-- LIMIT
SELECT * FROM student LIMIT 5;
-- ORDER BY CLAUSE

SELECT * FROM student ORDER BY marks ASC;           -- Ascending order
SELECT * FROM student ORDER BY marks DESC LIMIT 3;  -- Top 3 by marks
-- AGGREGATE FUNCATION

SELECT MAX(marks) FROM student;       -- Highest marks
SELECT MIN(marks) FROM student;       -- Lowest marks
SELECT AVG(marks) FROM student;       -- Average marks
SELECT COUNT(rollno) FROM student;    -- Number of students
-- GROUP BY CLAUSE

SELECT city, AVG(marks) 
FROM student 
GROUP BY city 
ORDER BY AVG(marks) DESC;

-- HAVING CLAUSE
 
SELECT city, COUNT(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) >= 90;

-- Disable safe update mode if needed
SET SQL_SAFE_UPDATES = 0;

-- Update grade where marks >= 90
UPDATE student
SET grade = 'a'
WHERE marks >= 90;

-- Update marks for specific roll number
UPDATE student
SET marks = 90
WHERE rollno IN (101);

-- Update grade based on marks range
UPDATE student
SET grade = 'b'
WHERE marks BETWEEN 80 AND 89;

UPDATE student
SET grade = 'c'
WHERE marks <= 50;

-- Delete students with marks <= 50
DELETE FROM student
WHERE marks <= 50;

















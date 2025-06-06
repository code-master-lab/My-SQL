CREATE DATABASE college;  -- Fixed spelling of "college"
USE college;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert statements (corrected syntax)
INSERT INTO student
(rollno, name)
 VALUES
 (106, 'Vivek'),
 (105, 'Tanishka'),
 (109, 'Athrav'),
(107, 'Baby');

-- Delete specific records
DELETE FROM student  --  Here I usess extra command like delect
WHERE rollno IN (105, 109, 107);
INSERT INTO student(rollno, name) VALUES(105, 'Tanishka'),(109, 'Athrav'),(107, 'Baby');
-- To view all records in the table
SELECT * FROM student;





 
 







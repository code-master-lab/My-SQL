CREATE DATABASE bestlifecompany;
USE bestlifecompany;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO employees (id, name, salary) VALUES (100, 'Vivek Raut', 50000);
INSERT INTO employees (id, name, salary) VALUES (101, 'Atharv Raut', 60000);
INSERT INTO employees (id, name, salary) VALUES (103, 'Tanishka Raut', 100000);

SELECT * FROM employees;



-- this is defferent
CREATE TABLE emp (
    id INT ,
    salary int default(25000)  -- using defult constraint
);
insert into emp (id) value(103);
SELECT * FROM emp;
CREATE TABLE dept (
id INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT into dept
VALUES
(101,"english"),
(102,"IT");
update dept -- here i update id of dept department
set id = 104
where id = 102; 

select * from dept;
-- id is change of persone 102 to 104

CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
foreign key (dept_id) REFERENCES dept(id)
on update cascade
on delete cascade
);

INSERT INTO teacher
VALUES
(101,"Adam" ,101),
(102 ,"Eve" ,102);  
select * from teacher; -- here Automatically dept id of the eve change after was 102 than become 104
-- but i make update in dept table 








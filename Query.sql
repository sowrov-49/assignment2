# SQL_joins
CREATE DATABASE college3;
USE college3;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student
(id,name) 
VALUES
(101,"sowrov"),
(102,"abir"),
(103,"rifat");


CREATE TABLE course(
  id INT PRIMARY KEY,
  course VARCHAR(50)
);

INSERT INTO  course
(id, course)
VALUES
(102,"English"),
(105,"Math"),
(103,"Science"),
(107,"Computer Science");

SELECT * FROM student;
SELECT * FROM course;

-- inner join

SELECT * 
FROM student
INNER JOIN course
ON student.id = course.id;

-- left join

SELECT * 
FROM student
LEFT JOIN course
ON student.id = course.id;

-- right join

SELECT * 
FROM student
RIGHT JOIN course
ON student.id = course.id;

-- full join

SELECT * 
FROM student
LEFT JOIN course
ON student.id = course.id
UNION
SELECT * 
FROM student
RIGHT JOIN course
ON student.id = course.id;
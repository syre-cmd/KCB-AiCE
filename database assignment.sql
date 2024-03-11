-- Creating the database
CREATE DATABASE edu_institute;
USE edu_institute;

-- Creating the table
CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
gender CHAR(1),
enrollment_date DATE,
program VARCHAR(50)
)

-- Inserting values into the table
INSERT INTO students
VALUES
  (101, 'Alice Johnson', 22, 'F', '2022-01-15', 'Data Science'),
  (102, 'Bob Smith', 23, 'M', '2022-02-20', 'Mathematics'),
  (103, 'Charlie Brown', 21, 'M', '2021-12-10', 'Forensics'),
  (104, 'Diana Miller', 24, 'F', '2021-11-05', 'Engineering'),
  (105, 'Eva Davis', 20, 'F', '2022-03-01', 'Medicine');

-- Selecting students in the data science program  
select * from students 
where program = 'Data Science';

-- Finding the total number of students
select count(*) from students as Total_Students;

-- Finding the current date
select current_date() as Todays_Date;

-- Selecting student names in uppercase and their enrollment dates
select upper(name), enrollment_date from students;

-- Selecting the number of students in each program in descending order
select program, count(*) as Number_of_Students 
from students 
group by program 
order by Number_of_Students desc;

-- Selecting name and age of the youngest student
select name, age from students 
where age = (select min(age) from students);
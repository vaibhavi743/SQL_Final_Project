--- final project

create database final_project;

Query OK, 1 row affected

use final_project;

Database changed

--- 1)

create table Students(
    StudentId int primary key,
    FirstName varchar(30),
    LastName varchar(30),
    Email varchar(30),
    BirthDate DATE,
    EnrollmentDate DATE
);

Query OK, 0 rows affected

insert into Students values
(1,'John','Doe','John.doe@email.com','2000-01-15','2022-08-01'),
(2,'Jane','Smith','Jane.smith@email.com','1999-05-25','2021-08-01'),
(3,'David','Brown','david.brown@email.com','2001-03-10','2023-08-01');

Query OK, 3 rows affected (0.473 sec)
Records: 3  Duplicates: 0  Warnings: 0

select * from Students;

+-----------+-----------+----------+-----------------------+------------+----------------+
| StudentId | FirstName | LastName | Email                 | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+-----------------------+------------+----------------+
|         1 | John      | Doe      | John.doe@email.com    | 2000-01-15 | 2022-08-01     |
|         2 | Jane      | Smith    | Jane.smith@email.com  | 1999-05-25 | 2021-08-01     |
|         3 | David     | Brown    | david.brown@email.com | 2001-03-10 | 2023-08-01     |
+-----------+-----------+----------+-----------------------+------------+----------------+
3 rows in set (0.085 sec)

update Students set Email="david.brown@email.com" where StudentId=1;

Query OK, 1 row affected (0.227 sec)
Rows matched: 1  Changed: 1  Warnings: 0
+-----------+-----------+----------+-----------------------+------------+----------------+
| StudentId | FirstName | LastName | Email                 | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+-----------------------+------------+----------------+
|         1 | John      | Doe      | david.brown@email.com    | 2000-01-15 | 2022-08-01     |
|         2 | Jane      | Smith    | Jane.smith@email.com  | 1999-05-25 | 2021-08-01     |
|         3 | David     | Brown    | david.brown@email.com | 2001-03-10 | 2023-08-01     |
+-----------+-----------+----------+-----------------------+------------+----------------+
3 rows in set 
delete from Students where StudentId=3;

Query OK, 1 row affected

+-----------+-----------+----------+-----------------------+------------+----------------+
| StudentId | FirstName | LastName | Email                 | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+-----------------------+------------+----------------+
|         1 | John      | Doe      | david.brown@email.com | 2000-01-15 | 2022-08-01     |
|         2 | Jane      | Smith    | Jane.smith@email.com  | 1999-05-25 | 2021-08-01     |
+-----------+-----------+----------+-----------------------+------------+----------------+
2 rows in set

create table Courses(
    CourseId int primary key,
    CourseName varchar(30),
    DepartmentId int,
    Credits int
);

Query OK, 0 rows affected

insert into Courses values
(101,'Introduction to SQL',1,3),
(102,'Data structures',2,4),
(103,'Database Management',3,4);

Query OK, 3 rows affected (0.123 sec)
Records: 3  Duplicates: 0  Warnings: 0

select * from Courses;
+----------+---------------------+--------------+---------+
| CourseId | CourseName          | DepartmentId | Credits |
+----------+---------------------+--------------+---------+
|      101 | Introduction to SQL |            1 |       3 |
|      102 | Data structures     |            2 |       4 |
|      103 | Database Management |            3 |       4 |
+----------+---------------------+--------------+---------+
3 rows in set

update Courses set Credits=5 where CourseId=102;

Query OK, 1 row affected (0.145 sec)
Rows matched: 1  Changed: 1  Warnings: 0

delete from Courses where CourseId=103;

Query OK, 1 row affected

select * from Courses;

+----------+---------------------+--------------+---------+
| CourseId | CourseName          | DepartmentId | Credits |
+----------+---------------------+--------------+---------+
|      101 | Introduction to SQL |            1 |       3 |
|      102 | Data structures     |            2 |       5 |
+----------+---------------------+--------------+---------+
2 rows in set

create table Instructors(
    InstructorId int primary key,
    FirstName varchar(30),
    LastName varchar(30),
    Email varchar(30),
    DepartmentId int
);

Query OK, 0 rows affected

insert into Instructors values
(1,'Alice','Johnson','alice.Johnson@univ.com',1),
(2,'Bob','Lee','bob.lee@univ.com',2),
(3,'Charlie','wilson','charlie.wilson@univ.com',3);

Query OK, 3 rows affected (0.177 sec)
Records: 3  Duplicates: 0  Warnings: 0

select * from Instructors;
+--------------+-----------+----------+-------------------------+--------------+
| InstructorId | FirstName | LastName | Email                   | DepartmentId |
+--------------+-----------+----------+-------------------------+--------------+
|            1 | Alice     | Johnson  | alice.Johnson@univ.com  |            1 |
|            2 | Bob       | Lee      | bob.lee@univ.com        |            2 |
|            3 | Charlie   | wilson   | charlie.wilson@univ.com |            3 |
+--------------+-----------+----------+-------------------------+--------------+
3 rows in set (0.029 sec)

update Instructors set Email="charlie.wilson@univ.com" where InstructorId=2;

Query OK, 1 row affected (0.135 sec)
Rows matched: 1  Changed: 1  Warnings: 0

+--------------+-----------+----------+-------------------------+--------------+
| InstructorId | FirstName | LastName | Email                   | DepartmentId |
+--------------+-----------+----------+-------------------------+--------------+
|            1 | Alice     | Johnson  | alice.Johnson@univ.com  |            1 |
|            2 | Bob       | Lee      | charlie.wilson@univ.com |            2 |
|            3 | Charlie   | wilson   | charlie.wilson@univ.com |            3 |
+--------------+-----------+----------+-------------------------+--------------+
3 rows in set (0.011 sec)

delete from Instructors where InstructorId=3;

Query OK, 1 row affected

+--------------+-----------+----------+-------------------------+--------------+
| InstructorId | FirstName | LastName | Email                   | DepartmentId |
+--------------+-----------+----------+-------------------------+--------------+
|            1 | Alice     | Johnson  | alice.Johnson@univ.com  |            1 |
|            2 | Bob       | Lee      | charlie.wilson@univ.com |            2 |
+--------------+-----------+----------+-------------------------+--------------+
2 rows in set

create table Enrollments(
    EnrollmentId int primary key,
    StudentId int,
    CourseId int,
    EnrollmentDate DATE
);

Query OK, 0 rows affected

insert into Enrollments values
(1,1,101,'2022-08-01'),
(2,2,102,'2021-08-01'),
(3,3,103,'2023-08-05');

Query OK, 3 rows affected (0.178 sec)
Records: 3  Duplicates: 0  Warnings: 0

select * from Enrollments;

+--------------+-----------+----------+----------------+
| EnrollmentId | StudentId | CourseId | EnrollmentDate |
+--------------+-----------+----------+----------------+
|            1 |         1 |      101 | 2022-08-01     |
|            2 |         2 |      102 | 2021-08-01     |
|            3 |         3 |      103 | 2023-08-05     |
+--------------+-----------+----------+----------------+
3 rows in set

update Enrollments set EnrollmentDate="2023-09-02" where EnrollmentId=1;

Query OK, 1 row affected (0.152 sec)
Rows matched: 1  Changed: 1  Warnings: 0

+--------------+-----------+----------+----------------+
| EnrollmentId | StudentId | CourseId | EnrollmentDate |
+--------------+-----------+----------+----------------+
|            1 |         1 |      101 | 2023-09-02     |
|            2 |         2 |      102 | 2021-08-01     |
|            3 |         3 |      103 | 2023-08-05     |
+--------------+-----------+----------+----------------+
3 rows in set

delete from Enrollments where EnrollmentId=3;

Query OK, 1 row affected

+--------------+-----------+----------+----------------+
| EnrollmentId | StudentId | CourseId | EnrollmentDate |
+--------------+-----------+----------+----------------+
|            1 |         1 |      101 | 2023-09-02     |
|            2 |         2 |      102 | 2021-08-01     |
+--------------+-----------+----------+----------------+
2 rows in set

create table Departments(
    DepartmentId int primary key,
    DepartmentName varchar(30)
);

Query OK, 0 rows affected

insert into Departments values
(1,'Computer science'),
(2,'Mathematics'),
(3,'Physics');

Query OK, 3 rows affected (0.133 sec)
Records: 3  Duplicates: 0  Warnings: 0

select * from Departments;

+--------------+------------------+
| DepartmentId | DepartmentName   |
+--------------+------------------+
|            1 | Computer science |
|            2 | Mathematics      |
|            3 | Physics          |
+--------------+------------------+
3 rows in set (0.009 sec)

update Departments set DepartmentName="Accountant" where DepartmentId=3;

Query OK, 1 row affected (0.116 sec)
Rows matched: 1  Changed: 1  Warnings: 0

+--------------+------------------+
| DepartmentId | DepartmentName   |
+--------------+------------------+
|            1 | Computer science |
|            2 | Mathematics      |
|            3 | Accountant       |
+--------------+------------------+
3 rows in set

delete from Departments where DepartmentId=1;

Query OK, 1 row affected (0.147 sec)

+--------------+----------------+
| DepartmentId | DepartmentName |
+--------------+----------------+
|            2 | Mathematics    |
|            3 | Accountant     |
+--------------+----------------+
2 rows in set

---2)

select * from Students where EnrollmentDate >='2022-08-01';

+-----------+-----------+----------+-----------------------+------------+----------------+
| StudentId | FirstName | LastName | Email                 | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+-----------------------+------------+----------------+
|         1 | John      | Doe      | david.brown@email.com | 2000-01-15 | 2022-08-01     |
+-----------+-----------+----------+-----------------------+------------+----------------+
1 row in set (0.189 sec)

--- 3)

select
c.CourseId,
c.CourseName,
c.Credits
from Courses as c
join Departments as d
on c.DepartmentId=d.DepartmentId
where d.DepartmentName='Mathematics' 
limit 5;

+----------+-----------------+---------+
| CourseId | CourseName      | Credits |
+----------+-----------------+---------+
|      102 | Data structures |       5 |
+----------+-----------------+---------+
1 row in set (0.016 sec)

---4)

select 
c.CourseId,
c.CourseName,
count(e.StudentId) as studentcount
from Courses as c
join Enrollments as e
on c.CourseId=e.CourseId
group by c.CourseId,c.CourseName
having count(e.StudentId) > 5;

+----------+-----------------+--------------+
| CourseId | CourseName      | studentcount |
+----------+-----------------+--------------+
|      102 | Data structures |            7 |
+----------+-----------------+--------------+
1 row in set

--- 5)

select 
s.StudentId,
s.FirstName,
s.LastName
from Students as s
join Enrollments as e
on s.StudentId=e.StudentId
join Courses as c
on e.CourseId=c.CourseId
where c.CourseName in ('Introduction to SQL','Data structures')
group by s.StudentId,s.FirstName,s.LastName
having count(distinct c.CourseName)=2;

---6)

select distinct
s.StudentId,
s.FirstName,
s.LastName
from Students as s
join Enrollments as e
on s.StudentId=e.StudentId
join Courses as c
on e.CourseId=c.CourseId
where c.CourseName in ('Introduction to SQL','Data structures');

+-----------+-----------+----------+
| StudentId | FirstName | LastName |
+-----------+-----------+----------+
|         1 | John      | Doe      |
|         2 | Jane      | Smith    |
+-----------+-----------+----------+
2 rows in set (0.131 sec)

---7)

select avg(Credits) as Averagecredits
from Courses;

+----------------+
| Averagecredits |
+----------------+
|         4.0000 |
+----------------+
1 row in set (0.137 sec)

---8)

Alter table Instructors add Salary decimal(10,2);

Query OK, 0 rows affected (1.022 sec)
Records: 0  Duplicates: 0  Warnings: 0

Update Instructors 
set Salary=60000 
where InstructorId=1;

Rows matched: 1  Changed: 1  Warnings: 0

Update Instructors
set Salary=50000 
where InstructorId=2;

Rows matched: 1  Changed: 1  Warnings: 0

Update Instructors 
set Salary=70000 
where InstructorId=3;

Rows matched: 0  Changed: 0  Warnings: 0

SELECT
    MAX(i.Salary) AS MaxSalary
FROM Instructors AS i
JOIN Departments AS d
    ON i.DepartmentId = d.DepartmentId
WHERE d.DepartmentName = 'Computer Science';

+-----------+
| MaxSalary |
+-----------+
|  60000.00 |
+-----------+
1 row in set

--- 9)

select 
d.DepartmentId,
d.DepartmentName,
count(distinct e.StudentId) as studentcount
from Departments as d
left join Courses as c
on d.DepartmentId=c.DepartmentId
left join Enrollments as e
on c.CourseId=e.CourseId
group by d.DepartmentId,d.DepartmentName;

+--------------+------------------+--------------+
| DepartmentId | DepartmentName   | studentcount |
+--------------+------------------+--------------+
|            1 | Computer Science |            1 |
|            2 | Mathematics      |            6 |
|            3 | Accountant       |            0 |
+--------------+------------------+--------------+
3 rows in set

---10)

select s.StudentId,
concat(s.FirstName,' ',s.LastName) as studentname,
c.CourseId,
c.CourseName
from Students s
inner join Enrollments e
on s.StudentId=e.StudentId
inner join Courses c
on e.CourseId=c.CourseId;

+-----------+-------------+----------+---------------------+
| StudentId | studentname | CourseId | CourseName          |
+-----------+-------------+----------+---------------------+
|         1 | John Doe    |      101 | Introduction to SQL |
|         2 | Jane Smith  |      102 | Data structures     |
|         1 | John Doe    |      102 | Data structures     |
|         2 | Jane Smith  |      102 | Data structures     |
+-----------+-------------+----------+---------------------+
4 rows in set

---11)

select s.StudentId,
concat(s.FirstName,' ',s.LastName) as studentname,
c.CourseId,
c.CourseName
from Students s
left join Enrollments e
on s.StudentId=e.StudentId
left join Courses c
on e.CourseId=c.CourseId;

+-----------+-------------+----------+---------------------+
| StudentId | studentname | CourseId | CourseName          |
+-----------+-------------+----------+---------------------+
|         1 | John Doe    |      102 | Data structures     |
|         1 | John Doe    |      101 | Introduction to SQL |
|         2 | Jane Smith  |      102 | Data structures     |
|         2 | Jane Smith  |      102 | Data structures     |
+-----------+-------------+----------+---------------------+
4 rows in set (0.036 sec)

---12)

INSERT INTO Students
(StudentId, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(7, 'Robert', 'Lee', 'robert7@example.com', '2001-01-10', '2026-08-07'),
(8, 'Emma', 'Hall', 'emma8@example.com', '2002-02-11', '2026-08-08'),
(9, 'James', 'Young', 'james9@example.com', '2001-03-12', '2026-08-09'),
(10, 'Olivia', 'King', 'olivia10@example.com', '2002-04-13', '2026-08-10'),
(11, 'Daniel', 'Scott', 'daniel11@example.com', '2001-05-14', '2026-08-11');

Query OK, 5 rows affected (0.270 sec)
Records: 5  Duplicates: 0  Warnings: 0


select distinct
s.StudentId,
s.FirstName,
s.LastName
from Students as s
join Enrollments as e
on s.StudentId=e.StudentId
where e.CourseId in
(
    select CourseId
    from Enrollments
    group by CourseId
    having count(StudentId) > 10
);

+-----------+-----------+----------+
| StudentId | FirstName | LastName |
+-----------+-----------+----------+
|         2 | Jane      | Smith    |
|         1 | John      | Doe      |
|         7 | Robert    | Lee      |
|         8 | Emma      | Hall     |
|         9 | James     | Young    |
|        10 | Olivia    | King     |
+-----------+-----------+----------+
6 rows in set (0.050 sec)

---13)

select 
StudentId,
FirstName,
LastName,
EnrollmentDate,
year (EnrollmentDate) as EnrollmentYear
from Students;

+-----------+-----------+----------+----------------+----------------+
| StudentId | FirstName | LastName | EnrollmentDate | EnrollmentYear |
+-----------+-----------+----------+----------------+----------------+
|         1 | John      | Doe      | 2022-08-01     |           2022 |
|         2 | Jane      | Smith    | 2021-08-01     |           2021 |
|         7 | Robert    | Lee      | 2026-08-07     |           2026 |
|         8 | Emma      | Hall     | 2026-08-08     |           2026 |
|         9 | James     | Young    | 2026-08-09     |           2026 |
|        10 | Olivia    | King     | 2026-08-10     |           2026 |
|        11 | Daniel    | Scott    | 2026-08-11     |           2026 |
+-----------+-----------+----------+----------------+----------------+
7 rows in set (0.061 sec)

---14)

SELECT 
    InstructorId,
    CONCAT(FirstName, ' ', LastName) AS InstructorName
FROM Instructors;

+--------------+----------------+
| InstructorId | InstructorName |
+--------------+----------------+
|            1 | Alice Johnson  |
|            2 | Bob Lee        |
+--------------+----------------+
2 rows in set (0.030 sec)

---15)

select 
EnrollmentId,
StudentId,
CourseId,
EnrollmentDate,
count(*)over(
    order by EnrollmentDate,EnrollmentId
)as runningtotal
from Enrollments
order by EnrollmentDate,EnrollmentId;

+--------------+-----------+----------+----------------+--------------+
| EnrollmentId | StudentId | CourseId | EnrollmentDate | runningtotal |
+--------------+-----------+----------+----------------+--------------+
|            2 |         2 |      102 | 2021-08-01     |            1 |
|            1 |         1 |      101 | 2023-09-02     |            2 |
|            3 |         1 |      102 | 2026-08-01     |            3 |
|            4 |         2 |      102 | 2026-08-02     |            4 |
|            5 |         3 |      102 | 2026-08-03     |            5 |
|            6 |         4 |      102 | 2026-08-04     |            6 |
|            7 |         5 |      102 | 2026-08-05     |            7 |
|            8 |         6 |      102 | 2026-08-06     |            8 |
|            9 |         7 |      102 | 2026-08-07     |            9 |
|           10 |         8 |      102 | 2026-08-08     |           10 |
|           11 |         9 |      102 | 2026-08-09     |           11 |
|           12 |        10 |      102 | 2026-08-10     |           12 |
+--------------+-----------+----------+----------------+--------------+
12 rows in set (0.227 sec)

---16)

select 
StudentId,
FirstName,
LastName,
EnrollmentDate,
CASE
WHEN EnrollmentDate < DATE_SUB(CURDATE(),interval 4 year)
then 'senior'
ELSE 'junior'
END as studentlevel
from Students;

+-----------+-----------+----------+----------------+--------------+
| StudentId | FirstName | LastName | EnrollmentDate | studentlevel |
+-----------+-----------+----------+----------------+--------------+
|         1 | John      | Doe      | 2022-08-01     | senior       |
|         2 | Jane      | Smith    | 2021-08-01     | senior       |
|         7 | Robert    | Lee      | 2026-08-07     | junior       |
|         8 | Emma      | Hall     | 2026-08-08     | junior       |
|         9 | James     | Young    | 2026-08-09     | junior       |
|        10 | Olivia    | King     | 2026-08-10     | junior       |
|        11 | Daniel    | Scott    | 2026-08-11     | junior       |
+-----------+-----------+----------+----------------+--------------+
7 rows in set (0.172 sec)


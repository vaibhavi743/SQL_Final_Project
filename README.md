# SQL_Final_Project

📌 Project Overview

The University Course Management System is designed to organize and manage university-related information using a relational database.

It allows users to store student details, maintain course information, manage instructor records, organize academic departments, and track student enrollments.

The project focuses on writing SQL queries to retrieve meaningful information, perform calculations, and analyze relationships between different database tables.

🎯 Project Objectives

Create and manage a relational database using MySQL.
Perform CRUD operations on database tables.
Retrieve records using filtering and sorting conditions.
Analyze student enrollment across courses and departments.
Calculate aggregate values such as counts, averages, and maximum salaries.
Understand relationships between tables using SQL joins.
Apply subqueries, string functions, date functions, and window functions.
Use conditional logic to classify students based on enrollment dates.

🛠️ Technologies Used

Technology	Purpose
MySQL	Database management
SQL	Data manipulation and retrieval
MySQL Command Line	Executing SQL queries

🗂️ Database Structure

The project uses the following five main tables:

1. Students

Stores student information.

Columns:

StudentID
FirstName
LastName
Email
BirthDate
EnrollmentDate
2. Courses

Stores information about university courses.

Columns:

CourseID
CourseName
DepartmentID
Credits
3. Instructors

Stores instructor details and salary information.

Columns:

InstructorID
FirstName
LastName
Email
DepartmentID
Salary
4. Departments

Stores university department information.

Columns:

DepartmentID
DepartmentName
5. Enrollments

Maintains the relationship between students and courses.

Columns:

EnrollmentID
StudentID
CourseID
EnrollmentDate

💡 Key SQL Concepts Demonstrated

1. CRUD Operations

Create, read, update, and delete records using standard SQL statements.

2. Joins

Combine related information from multiple tables using INNER JOIN and LEFT JOIN.

3. Aggregate Functions

Calculate meaningful statistics using:

COUNT()
AVG()
MAX()
4. Grouping and Filtering

Use GROUP BY and HAVING to summarize data and filter aggregated results.

5. Subqueries

Retrieve records based on the results of another SQL query.

6. Date and String Functions

Use YEAR(), CURDATE(), DATE_SUB(), and CONCAT() to manipulate and format data.

7. Window Functions

Use COUNT() OVER() to calculate a running total of student enrollments.

8. Conditional Statements

Use CASE to classify students based on their enrollment dates.

▶️ How to Run the Project

Follow these steps to execute the project in MySQL.

Step 1: Open MySQL

Start your MySQL command-line client or MySQL Workbench.

Step 2: Select the database

USE university_db;

Replace university_db with your actual database name if it is different.

Step 3: Verify the tables

SHOW TABLES;

Step 4: Check table structures

DESC Students;
DESC Courses;
DESC Instructors;
DESC Departments;
DESC Enrollments;

Step 5: Execute the queries

Run the SQL statements individually to perform the project tasks and verify the results.

📊 Expected Results

The project demonstrates how SQL can be used to:
Retrieve student and course information.
Identify courses with high enrollment.
Count students across academic departments.
Calculate average credits and maximum instructor salaries.
Find students taking specific combinations of courses.
Analyze enrollment dates and calculate running totals.
Classify students using conditional logic.

🎓 Learning Outcomes

Through this project, I practiced:

Designing and querying a relational database.
Writing structured and readable SQL queries.
Understanding primary and foreign key relationships.
Using joins to retrieve related data.
Applying aggregate functions and subqueries.
Working with date, string, and window functions.
Troubleshooting SQL syntax errors and understanding query results.

🚀 Future Enhancements

Possible future improvements include:
Adding grades and examination records.
Tracking course completion and student performance.
Generating department-wise academic reports.
Building a user interface for database operations.
Developing a dashboard for enrollment analytics.

👩‍💻 Author

Vaibhavi Khokhani

BCA Graduate | Python & AI Learner

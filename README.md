# 📊 SQL Task: Basic SELECT Queries

This task demonstrates how to extract and filter data using **basic SQL SELECT queries**.

---

## 🎯 Objective

- Retrieve data from one or more tables.
- Use `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `LIKE`, and `JOIN`.

---

## 🗃️ Database Schema

- **Students**: Basic student details (Name, Email, Age, Gender, City)
- **Courses**: Course offerings (CourseName, Credits)
- **Enrollments**: Who enrolled in which course and their grades

---

## ✅ Sample SQL Queries

- Get all students:
  ```sql
  SELECT * FROM Students;

- Filter by City:
  ```sql
  SELECT * FROM Students WHERE City = 'Mumbai';

- Joining tables:
  ```sql
  SELECT s.Name, c.CourseName, e.Grade
  FROM Enrollments e
  JOIN Students s ON e.StudentID = s.StudentID
  JOIN Courses c ON e.CourseID = c.CourseID;


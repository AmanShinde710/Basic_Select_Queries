-- Task 3: Writing Basic SELECT Queries

-- 1. Select all columns from Students
SELECT * FROM Students;

-- 2. Select Name and City of all students
SELECT Name, City FROM Students;

-- 3. Select students from Mumbai
SELECT * FROM Students WHERE City = 'Mumbai';

-- 4. Select students aged between 20 and 25
SELECT * FROM Students WHERE Age BETWEEN 20 AND 25;

-- 5. Select female students from Delhi or Bangalore
SELECT * FROM Students WHERE Gender = 'F' AND (City = 'Delhi' OR City = 'Banglore');

-- 6. Select students whose name starts with 'A'
SELECT * FROM Students WHERE Name LIKE 'A%';

-- 7. Order students by Age in descending order
SELECT * FROM Students ORDER BY Age DESC;

-- 8. Get top 3 youngest students
SELECT * FROM Students ORDER BY Age ASC LIMIT 3;

-- 9. Select course names with more than 3 credits
SELECT * FROM Courses WHERE Credits > 3;

-- 10. List students along with the course they are enrolled in
SELECT s.Name, c.CourseName, e.Grade
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;

-- 11. Find all students with grade A in any course
SELECT s.Name, c.CourseName
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE e.Grade = 'A';

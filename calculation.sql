-- Student GPA per semester
SELECT s.name, sem.semester_name, 
       ROUND(SUM(g.gpa * c.credits)/SUM(c.credits), 2) AS GPA
FROM Grades g
JOIN Students s ON s.student_id = g.student_id
JOIN Courses c ON c.course_id = g.course_id
JOIN Semesters sem ON sem.semester_id = g.semester_id
GROUP BY g.student_id, g.semester_id;


-- Pass/Fail count (assume passing is grade ≠ 'F')
SELECT s.name, COUNT(CASE WHEN g.grade = 'F' THEN 1 END) AS Fail_Count,
       COUNT(CASE WHEN g.grade != 'F' THEN 1 END) AS Pass_Count
FROM Grades g
JOIN Students s ON s.student_id = g.student_id
GROUP BY s.student_id;

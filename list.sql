-- Rank list for each semester
SELECT name, semester_name, GPA, 
       RANK() OVER (PARTITION BY semester_name ORDER BY GPA DESC) AS rank_position
FROM (
    SELECT s.name, sem.semester_name, 
           ROUND(SUM(g.gpa * c.credits)/SUM(c.credits), 2) AS GPA
    FROM Grades g
    JOIN Students s ON s.student_id = g.student_id
    JOIN Courses c ON c.course_id = g.course_id
    JOIN Semesters sem ON sem.semester_id = g.semester_id
    GROUP BY g.student_id, g.semester_id
) AS sub;

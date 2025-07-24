-- Use SELECT INTO OUTFILE for CSV export (MySQL only; needs permissions)
SELECT s.name, sem.semester_name, c.course_name, g.grade, g.gpa
FROM Grades g
JOIN Students s ON s.student_id = g.student_id
JOIN Courses c ON c.course_id = g.course_id
JOIN Semesters sem ON sem.semester_id = g.semester_id
ORDER BY s.student_id, sem.semester_id
INTO OUTFILE '/var/lib/mysql-files/semester_summary.csv'
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

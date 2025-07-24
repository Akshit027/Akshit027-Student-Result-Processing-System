-- Students
INSERT INTO Students (name, department) VALUES 
('Alice', 'CSE'), ('Bob', 'ECE'), ('Charlie', 'ME');

-- Courses
INSERT INTO Courses (course_name, credits) VALUES 
('Math', 4), ('Physics', 3), ('Programming', 3);

-- Semesters
INSERT INTO Semesters (semester_name) VALUES 
('Sem1'), ('Sem2');

-- Grades with GPA (later will be auto-calculated by trigger)
INSERT INTO Grades (student_id, course_id, semester_id, marks, grade)
VALUES
(1, 1, 1, 85, 'A'),
(1, 2, 1, 72, 'B'),
(1, 3, 1, 90, 'A'),
(2, 1, 1, 60, 'C'),
(2, 2, 1, 75, 'B'),
(2, 3, 1, 80, 'A');

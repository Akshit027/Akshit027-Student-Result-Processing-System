-- Create GPA grade mapping table
CREATE TABLE GradeScale (
    grade CHAR(2) PRIMARY KEY,
    gpa_value DECIMAL(3,2)
);

INSERT INTO GradeScale VALUES 
('A', 10.0), ('B', 8.0), ('C', 6.0), ('D', 5.0), ('F', 0.0);

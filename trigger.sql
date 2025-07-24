DELIMITER $$

CREATE TRIGGER calculate_gpa
BEFORE INSERT ON Grades
FOR EACH ROW
BEGIN
    DECLARE gpa_val DECIMAL(3,2);
    SELECT gpa_value INTO gpa_val FROM GradeScale WHERE grade = NEW.grade;
    SET NEW.gpa = gpa_val;
END$$

DELIMITER ;

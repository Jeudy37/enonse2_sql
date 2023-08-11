CREATE DATABASE IF NOT EXISTS StudentGrades CHARACTER SET 'utf8';
GRANT ALL PRIVILEGES ON StudentGrades.* TO 'jeudy'@'localhost';
USE StudentGrades;
CREATE TABLE Students (
	student_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INTEGER,
    grade_math INTEGER,
    grade_science INTEGER,
    grade_history INTEGER
);

INSERT INTO Students(first_name,last_name,age,grade_math,grade_science ,grade_history) VALUES ("Jean","Miguel",23,5,6,10);

INSERT INTO Students( first_name,last_name,age) VALUES("Julien","Dev",18);
INSERT INTO Students( last_name,first_name,age) VALUES("Wenkey","Janvier",32);
INSERT INTO Students(first_name,last_name,age,grade_math,grade_science ,grade_history) VALUES ("Edmond","Charles",12,6,4,7);

SELECT AVG(grade_math) FROM Students;
SELECT AVG(grade_history) FROM Students;
SELECT AVG(grade_science) FROM Students;
ALTER TABLE Students ADD grade_english INTEGER;
DELETE FROM Students WHERE first_name="Julien";
DELETE FROM Students WHERE age=18;
SELECT * FROM Students
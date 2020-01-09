CREATE TABLE IF NOT EXISTS Courses (
  Student VARCHAR(255) NOT NULL,
  Class VARCHAR(255) NOT NULL
);

INSERT INTO courses (student, class) VALUES ('A', 'Math');
INSERT INTO courses (student, class) VALUES ('B', 'English');
INSERT INTO courses (student, class) VALUES ('C', 'Math');
INSERT INTO courses (student, class) VALUES ('D', 'Biology');
INSERT INTO courses (student, class) VALUES ('E', 'Math');
INSERT INTO courses (student, class) VALUES ('F', 'Computer');
INSERT INTO courses (student, class) VALUES ('G', 'Math');
INSERT INTO courses (student, class) VALUES ('H', 'Math');
INSERT INTO courses (student, class) VALUES ('I', 'Math');

SELECT Class
FROM Courses
GROUP BY Class
HAVING COUNT(Class) >= 5;

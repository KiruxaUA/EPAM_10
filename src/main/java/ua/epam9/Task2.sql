CREATE TABLE IF NOT EXISTS Employee (
  Id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  Salary INT NOT NULL
);

INSERT INTO Employee (Id, Salary) VALUES (1, 100);
INSERT INTO Employee (Id, Salary) VALUES (2, 200);
INSERT INTO Employee (Id, Salary) VALUES (3, 300);

SELECT MAX(salary) AS SecondHighestSalary
FROM employee
WHERE salary <> (SELECT MAX(salary) FROM employee);
CREATE TABLE IF NOT EXISTS Employee (
  Id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY,
  Name VARCHAR (255) NOT NULL,
  Salary INT NOT NULL,
  ManagerId INT NOT NULL
);

INSERT INTO Employee (Id, Name, Salary, ManagerId) VALUES (1, 'Joe', 70000, 3);
INSERT INTO Employee (Id, Name, Salary, ManagerId) VALUES (2, 'Henry', 80000, 4);
INSERT INTO Employee (Id, Name, Salary, ManagerId) VALUES (3, 'Sam', 60000, NULL);
INSERT INTO Employee (Id, Name, Salary, ManagerId) VALUES (4, 'Max', 90000, NULL);

SELECT e.Name AS Employee
FROM Employee e
JOIN Employee m ON e.ManagerId = m.Id
WHERE e.Salary > m.Salary;
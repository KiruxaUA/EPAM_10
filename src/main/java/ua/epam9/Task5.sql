CREATE TABLE IF NOT EXISTS Customers (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CustomerId INT NOT NULL REFERENCES Customers
);

INSERT INTO Customers (Id, Name) VALUES (1, 'Joe');
INSERT INTO Customers (Id, Name) VALUES (2, 'Henry');
INSERT INTO Customers (Id, Name) VALUES (3, 'Sam');
INSERT INTO Customers (Id, Name) VALUES (4, 'Max');

INSERT INTO Orders (Id, CustomerId) VALUES (1, '3');
INSERT INTO Orders (Id, CustomerId) VALUES (2, '1');

SELECT Name AS Customers
FROM Customers c
WHERE Id NOT IN (SELECT CustomerId FROM Orders);
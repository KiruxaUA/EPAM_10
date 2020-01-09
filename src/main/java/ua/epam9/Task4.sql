CREATE TABLE IF NOT EXISTS Person (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Email VARCHAR(255) NOT NULL
);

INSERT INTO Person (Id, Email) VALUES (1, 'a@b.com');
INSERT INTO Person (Id, Email) VALUES (2, 'c@d.com');
INSERT INTO Person (Id, Email) VALUES (3, 'a@b.com');

SELECT COUNT(Email) AS Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;

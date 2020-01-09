CREATE TABLE Person (
  PersonId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FirstName VARCHAR (255) NOT NULL,
  LastName VARCHAR (255) NOT NULL
);

CREATE TABLE Address (
  AddressId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  PersonId INT NOT NULL REFERENCES Person,
  City VARCHAR(255) NOT NULL,
  State VARCHAR(255) NOT NULL
);

INSERT INTO Person (PersonId, LastName, FirstName)
  VALUES (1, 'Wang', 'Allen');

INSERT INTO Address (AddressId, PersonId, City, State)
  VALUES (1, 2, 'New York City', 'New York');

SELECT FirstName, LastName, City, State
FROM Person p
JOIN Address a ON p.PersonId = a.PersonId;
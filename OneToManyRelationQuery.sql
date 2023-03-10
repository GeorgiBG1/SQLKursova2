CREATE DATABASE OneToManyDB
GO
USE OneToManyDB
GO

CREATE TABLE Manufacturers(
 ManufacturerId INT NOT NULL UNIQUE,
 Name VARCHAR(50),
 EstablishedOn DATE
)

CREATE TABLE Models(
 ModelId INT NOT NULL UNIQUE,
 Name VARCHAR(50),
 ManufacturerId INT,
 CONSTRAINT FK_ModelsManufacturers
 FOREIGN KEY(ManufacturerId) REFERENCES Manufacturers(ManufacturerId)
)

INSERT INTO Manufacturers VALUES
(1, 'BMW','07/03/1916'),
(2, 'Tesla','01/01/2003'),
(3, 'Lada','01/05/1966')

INSERT INTO Models VALUES
(101,'X1',1),
(102,'i6',1),
(103,'Model S',2),
(104,'Model X',2),
(105,'Model 3',2),
(106,'Nova',3)


SELECT * FROM Models
SELECT * FROM Manufacturers
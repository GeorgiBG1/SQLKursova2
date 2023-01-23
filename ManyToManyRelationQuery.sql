CREATE DATABASE ManyToManyDB
GO
USE ManyToManyDB
GO

CREATE TABLE Students(
StudentId INT UNIQUE,
Name NVARCHAR(50)
)
 
CREATE TABLE Exams(
ExamId INT UNIQUE,
Name NVARCHAR(255)
)
 
CREATE TABLE StudentsExams(
StudentID INT,
ExamID INT,
CONSTRAINT PK_StudentID_ExamID PRIMARY KEY(StudentID, ExamID),
CONSTRAINT FK_StudentsExams_Students FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
CONSTRAINT FK_StudentsExams_ExamID FOREIGN KEY(ExamID) REFERENCES Exams(ExamID)
)
 
INSERT INTO Students VALUES
(1, 'Mila'),
(2, 'Toni'),
(3, 'Ron')
 
INSERT INTO Exams VALUES
(101, 'SpringMVC'),
(102, 'Neo4j'),
(103, 'Oracle 11g')
 
INSERT INTO StudentsExams VALUES
(1, 101), 
(1, 102), 
(2, 101), 
(3, 103), 
(2, 102), 
(2, 103)

SELECT s.StudentId, s.Name, e.ExamId, E.Name FROM Students AS s
LEFT OUTER JOIN StudentsExams AS se
ON s.StudentId = se.StudentID
LEFT OUTER JOIN Exams AS e
ON se.ExamID = e.ExamId
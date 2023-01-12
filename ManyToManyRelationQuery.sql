CREATE DATABASE ManyToManyDB
GO
USE ManyToManyDB
GO

CREATE TABLE Students(
StudentID INT PRIMARY KEY,
Name NVARCHAR(50)
)
 
CREATE TABLE Exams(
ExamID INT PRIMARY KEY,
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
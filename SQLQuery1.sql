Create database DB_Students
GO

USE DB_Students
GO

Create table Class
(
	Id int primary key identity,
	Class_name varchar(50) NOT NULL
)
GO

Create table Student
(
	Id int primary key identity,
	Name nvarchar(100) NOT NULL,
	Gender bit NOT NULL,
	Birthday date NOT NULL,
	Address nvarchar(225) NOT NULL,
	Email varchar(100) NOT NULL,
	Class_id int NOT NULL,
	Foreign key (Class_id) REFERENCES Class(id),
)
GO

INSERT INTO Class(Class_name) VALUES ('C2208G');
INSERT INTO Class(Class_name) VALUES ('C2208H');
INSERT INTO Class(Class_name) VALUES ('C2208I')
GO

Select * from Class
GO

SELECT s.*, c.Class_name FROM Student s join Class c on s.Class_id = c.id
GO

INSERT INTO Student(Name, Gender, Birthday, Address, Email,Class_id) VALUES (N'Nguyễn Thị Yến', 'false', '2004-01-13', N'Bắc Ninh', 'yen@gmail.com', 1);
GO
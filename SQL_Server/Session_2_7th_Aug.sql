--Constraint

--ALTER TABLE EMPLOYEE ALTER COLUMN DOB VARCHAR(10)

--CREATE TABLE Employee
--(
--ID INT,
--Name VARCHAR(100),
--DOB DATE
--)

----Constraints
1)-NOT NULL---Done
2)-Check Constraints---Done
3)-Unique----Done
4)-Primary----Done
5)-Default 



--CREATE TABLE Employee
--(
--ID INT,
--Name VARCHAR(100),
--DOB DATE-------
--)
---NOT NULL
CREATE TABLE Employee
(
ID INT ,
Name VARCHAR(100),
DOB DATE NOT NULL----COnstraint
)

--DROP TABLe EMPLOYEE

INSERT INTO Employee(ID,Name,DOB)
SELECT 1,'Sahil','2020-01-01'

SELECT * FROM Employee
---===================
--b) Check Constraints
--DROP TABLE VoterList
--CREATE TABLE VoterList
--(
--ID INT NULL,
--FirstName VARCHAR(100) CHECK(FirstName='SAHIL'),
--LastName VARCHAR(100),
--Age TINYINT CHECK(Age>=18)
--)


--INSERT INTO VoterList(ID,FirstName,LastName,Age)
--SELECT 1,'Sahil','Jaiswal',28

--INSERT INTO VoterList(ID,FirstName,LastName,Age)
--SELECT 2,'Vishal','Jaiswal',18

--INSERT INTO VoterList(ID,FirstName,LastName,Age)
--SELECT 3,'Vishal','Kumar',17


--SELECT * FROM VoterList
---========================================
--c)-UNIQUE
--DROP TABLE Department
CREATE TABLE Department
(
DepartmentID INT IDENTITY(1,1),
DepartmentName VARCHAR(100) UNIQUE,
CreatedDate DATETIME
)



INSERT INTO Department(DepartmentName,CreatedDate)
SELECT NULL,'2020-01-01'

INSERT INTO Department(DepartmentName,CreatedDate)
SELECT 'Mechanical','2020-01-01'

INSERT INTO Department(DepartmentName,CreatedDate)
SELECT 'Electrical','2020-01-01'

select * from Department
---=============================================
--D)-Primary Key=(UNIQUE CONSTRAINTS+NOT NULL COnstraint)

--will allow unique value and it will not allow any single null.

--DROP TABLE Department
--CREATE TABLE Department
--(
--DepartmentID INT IDENTITY(1,1),
--DepartmentName VARCHAR(100) Primary KEy,
--CreatedDate DATETIME
--)



--INSERT INTO Department(DepartmentName,CreatedDate)
--SELECT NULL,'2020-01-01'

--INSERT INTO Department(DepartmentName,CreatedDate)
--SELECT 'Mechanical','2020-01-01'

--INSERT INTO Department(DepartmentName,CreatedDate)
--SELECT 'Electrical','2020-01-01'

--SELECT * FROM Department 

--a table can have maximum one Primary Key.
--but we can create N no UNique key


--CREATE TABLE EmployeeDetails
--(
--ID INT PRIMARY KEY,
--Name VARCHAR(100) PRImARY KEY,
--Age INT 
--)


--CREATE TABLE EmployeeDetails
--(
--ID INT PRIMARY KEY,
--Name VARCHAR(100) UNIQUE,
--Age INT UNIQUE,
--Email VARCHAR(100) UNIQUE
--)
---==========================================================
--Default
--DROP TABLE EmployeeDetails
--CREATE TABLE EmployeeDetails
--(
--EmployeeID INT IDENTITY(1,1),
--FirstName VARCHAR(100),
--LastName VARCHAR(100),
--Salary INT,
--Age TINYINT,
--EmailAddress VARCHAR(100),
--CompanyName VARCHAR(100) DEFAULT('Intellipat')
--)

--INSERT INTO EmployeeDetails(FirstName,LastName,Salary,Age,EmailAddress,CompanyName)
--SELECT 'Sahil','Jaiswal',50000,28,'Jaiswal.sahil230@gmail.com','Intellipat'


--INSERT INTO EmployeeDetails(FirstName,LastName,Salary,Age,EmailAddress)
--SELECT 'Sahil','Jaiswal',50000,28,'Jaiswal.sahil230@gmail.com'

--SELECT * FROM EmployeeDetails



--Create table which have to hold the Employee Data
--Employee Attribute are 
--EmployeeID,FirstName(this column does not contain any null values),LastName,FatherName IT Will be uniqu,DOB(after 2020),
--CompanyName ('Microsoft')


--CREATE TABLE EmployeeData
--(
--EmployeeID INT IDENTITY(1,1),
--FirstName VARCHAR(50) NOT NULL,
--LastName VARCHAR(50),
--FatherName VARCHAR(100) UNIQUE,
--DOB DATE CHECK(YEAR(DOB)>=2021),
--CompanyName VARCHAR(100) DEFAULT('MicroSoft')
--)


-----=============

---JOIN 

--SELECT * FROM Department

--SELECT * FROM Employee
 

--CREATE TABLE EmployeeDetails
--(
--EmployeeID INT IDENTITY(1,1),
--FirstName VARCHAR(100),
--LastName VARCHAR(100),
--DepartmentID INT,
--Salary INT,
--Age TINYINT,
--EmailAddress VARCHAR(100),
--CompanyName VARCHAR(100) DEFAULT('Intellipat')
--)

SELECT * FROM Department
INSERT INTO EmployeeDetails(FirstName,LastName,DepartmentID,Salary,Age,EmailAddress)
SELECT 'Virat','Kohli',NULL,1500000,25,'Pradeep.Intellipat@gmail.com'

SELECT * FROM EmployeeDetails
SELECT * FROM Department ORDEr BY DepartmentID ASC
INSERT INTO Department(DepartmentName)
SELECT 'crickET'

-----JOIN
--INNER JOIN
--LEFT JOIN 
--RIGHT JOIN 
--FULL JOIN
--CROSS JOIN
---===============
--a)-
---INNER
SELECT 
*
FROM 
EmployeeDetails  AS ED
INNER JOIN Department AS DP ON ED.DepartmentID=DP.DepartmentID

--LEFT JOIN 
SELECT 
ED.EmployeeID,
ED.FirstName,
ED.LastName,
ED.DepartmentID,
ED.Salary,
DP.DepartmentName,
ED.CompanyName
FROM 
EmployeeDetails  AS ED----LEFT TABLE
LEFT JOIN Department AS DP ON ED.DepartmentID=DP.DepartmentID



SELECT 
ED.EmployeeID,
ED.FirstName,
ED.LastName,
ED.DepartmentID,
ED.Salary,
DP.DepartmentName
FROM 
Department AS DP ----LEFT TABLE
LEFT JOIN EmployeeDetails  AS ED ON ED.DepartmentID=DP.DepartmentID

--left join --->matched record from both the table and non matched record from left table
---========================================================
--RIGHT JOIN

--LEFT JOIN 
SELECT 
ED.EmployeeID,
ED.FirstName,
ED.LastName,
ED.DepartmentID,
ED.Salary,
DP.DepartmentName
FROM 
EmployeeDetails  AS ED----LEFT TABLE
LEFT JOIN Department AS DP ON ED.DepartmentID=DP.DepartmentID
----===============================
SELECT * FROM EmployeeDetails
SELECT * FROM DEPARTMENT

1)-Write a query to display the those employee who already attached with their department?


-----==============================
SELECT 
ED.EmployeeID,
ED.FirstName,
ED.LastName,
ED.DepartmentID,
ED.Salary,
DP.DepartmentName
FROM 
Department AS DP ----LEFT TABLE
LEFT JOIN EmployeeDetails  AS ED ON ED.DepartmentID=DP.DepartmentID
----=================================================================

---LEFT JOIN----Matched Record from both table and Non Matched from Left table 
--RIGHT JOIN--- Matched Record from both table and Non Matched from Right table 

SELECT 
ED.EmployeeID,
ED.FirstName,
ED.LastName,
ED.DepartmentID,
ED.Salary,
DP.DepartmentName
FROM 
EmployeeDetails  AS ED----LEFT TABLE
RIGHT JOIN Department AS DP ON ED.DepartmentID=DP.DepartmentID



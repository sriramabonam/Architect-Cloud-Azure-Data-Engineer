--5---> Total Lenght of the Variable
--2---> No of number after the point
--DECLARE @Cost DECIMAL(6,3)=123.124
--SELECT @Cost

--JOIN----
--When the data is seperated into the multiple tables/objects.
--then we have to connect those table on the basis of some common key/Column

--1)--INNER JOIN
--2)-LEFT JOIN 
--3)-Right Join 
--4)-Cross Join
--5)-Full Join

SELECT 
* 
FROM 
EmployeeDetails

SELECT 
*
FROM 
Department
---=====================
--SELECT 
--*
--FROM 
--TABLEA AS A
--INNER JOIN TABLEB AS B ON A.Column1=B.Column1


SELECT * FROM EmployeeDetails---6 records

SELECT *FROM Department

----4 records--2 employee data is missing
SELECT 
A.EmployeeID,
A.FirstName,
A.LastName,
A.DepartmentID,
B.DepartmentName
FROM 
EmployeeDetails AS A
JOIN Department AS B ON A.DepartmentID=B.DepartmentID

------==========================
---LEFT JOIN
--SELECT 
--*
--FROM 
--TABLEA AS A
--LEFT JOIN TABLEB AS B ON A.Column1=B.Column1

---ALL THE Employee With DepartmentName
SELECT 
A.EmployeeID,---------   THIS COLUMN IS REFER FROM LEFT TABLE
A.FirstName,---------    THIS COLUMN IS REFER FROM LEFT TABLE
A.LastName,---------     THIS COLUMN IS REFER FROM LEFT TABLE
A.DepartmentID,--------- THIS COLUMN IS REFER FROM LEFT TABLE
B.DepartmentName---------THIS COLUMN IS REFER FROM RIGHT TABLE
FROM 
EmployeeDetails AS A---THIS TABLE WILL TREATED AS Left
LEFT JOIN 
Department AS B ------THIS TABLE WILL TREATED AS RIGHT
ON A.DepartmentID=B.DepartmentID---CONDITION



----------------
---RIGHT JOIN
--SELECT 
--*
--FROM 
--TABLEA AS A
--RIGHT JOIN TABLEB AS B ON A.Column1=B.Column1

---ALL THE DEPARTMENT WITH Employee
--SELECT * FROM Department

--SELECT 
--A.EmployeeID,---------   THIS COLUMN IS REFER FROM LEFT TABLE
--A.FirstName,---------    THIS COLUMN IS REFER FROM LEFT TABLE
--A.LastName,---------     THIS COLUMN IS REFER FROM LEFT TABLE
--A.DepartmentID,--------- THIS COLUMN IS REFER FROM LEFT TABLE
--B.DepartmentName,---------THIS COLUMN IS REFER FROM RIGHT TABLE
--B.CreatedDate

--FROM 
--EmployeeDetails AS A---THIS TABLE WILL TREATED AS Left
--RIGHT JOIN 
--Department AS B ------THIS TABLE WILL TREATED AS RIGHT
--ON A.DepartmentID=B.DepartmentID---CONDITION

---------==============
---CROSS JOIN(CARTIESAN OR MULTIPLY)
--SELECT 
--* 
--FROM 
--EmployeeDetails---6 record

--SELECT * FROM Department--4 records

----WHEN we use cross join so the final output will came as 24 record(6*4=24)

--SELECT 
--*
--FROM 
--EmployeeDetails A
--CROSS JOIN Department D
--ORDER BY A.EmployeeID


--CREATE TABLE EmployeeAttendance
--(
--EmployeeID INT,
--FirstName VARCHAR(100),
--LastName VARCHAR(100),
--Dates DATE,
--IsPresent BIT
--)

--INSERT INTO EmployeeAttendance(EmployeeID,FirstName,LastName,Dates)

--SELECT 
--A.EmployeeID,
--A.FirstName,
--A.LastName,
--B.DATES
--FROM EmployeeDetails A
--CROSS JOIN DailyDate B
--WHERE A.EmployeeID=7
--ORDER BY A.EmployeeID,B.Dates


--SELECT * FROM EmployeeAttendance

--UPDATE EmployeeAttendance SET IsPresent=1 WHERE EmployeeID=1 AND Dates='2022-08-15'

--SELECT * FROM EmployeeDetails
--INSERT INTO EmployeeDetails(FirstName,LastName,DepartmentID,Salary)
--SELECT 'Sam','Johthan',2,14000

---==============================
---FULL JOIN


--SELECT * FROM EmployeeDetails
--SELECT * FROM Department

--UPDATE EmployeeDetails SEt DepartmentID=8 WHERE EmployeeID=6
--SELECT * FROM Department



--SELECT 
--A.EmployeeID,A.FirstName,A.LastName,A.Salary,A.DepartmentID AS A_DepartmenID,
--B.DepartmentID AS B_DepartmentID,
--B.DepartmentName
--FROM 
--EmployeeDetails AS A
--FULL OUTER JOIN Department AS B ON A.DepartmentID=B.DepartmentID
-----------------------
--ManagerID 
--SELECT * FROM EmployeeDetails
--EmployeeName,ManagerName

--ALTER TABLE EmployeeDetails Add DepartmentName VARCHAR(100)
--UPDATE EmployeeDetails SEt DepartmentName=NULL
--SELECT * FROM EmployeeDetails
--SELECT * FROM Department

UPDATE A
SET 
A.DepartmentName=B.DepartmentName
FROM 
EmployeeDetails  AS A
JOIN Department AS B ON A.DepartmentID=B.DepartmentID 

--SELECT 
--A.EmployeeID,
--A.DepartmentName,
--A.DepartmentID,
--B.DepartmentName
--FROM 
--EmployeeDetails  AS A
--JOIN Department AS B ON A.DepartmentID=B.DepartmentID 




-----DELETE the DATA USING JOIN
---DELETE THOSE DATA Where DepartmentID IS AVAILABLE
--SELECT * FROM EmployeeDetails
--SELECT * FROM Department

--DELETE
--A
--FROM 
--EmployeeDetails  AS A
--JOIN Department AS B ON A.DepartmentID=B.DepartmentID 

-------
--SELECT * FROM EmployeeDetails
--Want to add one more column IsActive

--1)-
--DROP TABLE [EmployeeDetails]

--CREATE TABLE [dbo].[EmployeeDetails](
--	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
--	[FirstName] [varchar](100) NULL,
--	[LastName] [varchar](100) NULL,
--	[DepartmentID] [int] NULL,
--	[Salary] [int] NULL,
--	[Age] [tinyint] NULL,
--	[EmailAddress] [varchar](100) NULL,
--	[CompanyName] [varchar](100)   DEFAULT ('Intellipat') ,
--	[DepartmentName] [varchar](100) NULL,
--	IsActive BIT
--) ON [PRIMARY]
--GO

----0--False/1--TRUE

--ALTER TABLE EmployeeDetails ADD IsActive BIT

--SELECT * FROM EmployeeDetails

-----DROP THE COLUMN 
--ALTER TABLE EmployeeDetails DROP COLUMN DepartmentName

--SELECT * FROM EmployeeDetails

--SELECT @@SPID

--CREATE TABLE [dbo].[#EmployeeDetails](
--	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
--	[FirstName] [varchar](100) NULL,
--	[LastName] [varchar](100) NULL,
--	[DepartmentID] [int] NULL,
--	[Salary] [int] NULL,
--	[Age] [tinyint] NULL,
--	[EmailAddress] [varchar](100) NULL,
--	[CompanyName] [varchar](100)   DEFAULT ('Intellipat') ,
--	[DepartmentName] [varchar](100) NULL,
--	IsActive BIT
--) ON [PRIMARY]
--GO

--INSERT INTO #EmployeeDetails(FirstName,LastName,DepartmentID,Salary)
--SELECT 'Sahil','Jaiswal',1,500

--SELECT * FROM #EmployeeDetails



--Aggrigate---GROUP BY

--to count the Employee


SELECT
COUNT(* ) AS EmployeeCount
FROM 
EmployeeDetails
--Count the Employee on Basis of Department

SELECT DepartmentID,FirstName,COUNT(*) FROM EmployeeDetails
GROUP BY DepartmentID,FirstName
ORDER BY DepartmentID

SELECT DepartmentID,FirstName,COUNT(*) FROM EmployeeDetails GROUP BY DEPARTMENTID,FirstName

SELECT DepartmentID,SUM(Salary) As DepartmentWiseSalary
FROM 
EmployeeDetails
GROUP BY DEPARTMENTID


SELECT DepartmentID,MAX(Salary) As DepartmentWiseSalary
FROM 
EmployeeDetails
GROUP BY DEPARTMENTID

SELECT DepartmentID,VAR(Salary) As DepartmentWiseSalary
FROM 
EmployeeDetails
GROUP BY DEPARTMENTID

SELECT GETDATE(),GETUTCDATE(),SYSDATETIME(),SYSUTCDATETIME(),SYSDATETIMEOFFSET()





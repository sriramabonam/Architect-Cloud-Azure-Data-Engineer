----DECLARE @EmployeeAge TINYINT=256
----SELECT @EmployeeAge


----DECLARE @EmployeeAge SMALLINT=32768
----SELECT @EmployeeAge
----DECLARE @CarPrice DECIMAL(18,1)=12500.434


----SELEct @CarPrice

---------DATATYPE
----1)-TinyInt
----2)-SmallInt
----3)-INT 
----4)-BIGINT
----5)-DECIMAL(S,D)




----CHAR 
----VARCHAR
----10-6=4
----EmployeeName---20,10,5

----M 
----F 
----T
----DECLARE @Name CHAR(1)='SAHILJ'
----SELECT @Name

----'SAHILJ    '10BYTE
----'SAHIL'5byte

----DECLARE @Name1 VARCHAR(10)='SAHIL'
----SELECT @Name1


----CREATE TABLE Employee
----(
----name VARCHAR(2)
----)

----INSERT INTO Employee 
----SELECT 'saasa'

--DECLARE @BirthDate DATE='2020-04-01 23:59:59'---'YYYY-mm-dd'
--SELECT YEAR(@BirthDate)

--DECLARE @TransactionDateTime DATETIME='2020-04-01 23:59:59'---'YYYY-mm-dd'
--SELECT @TransactionDateTime

--DECLARE @Time TIME='23:12:43.000'
--SELECT @Time

--SELECT YEAR(GETDATE())

--NUMERIC

--Employee
-----=====
--EmployeeID ,
--FirstName,
--LastName,
--FatherName,
--Salary,----NUMERIC(50000,34000)
--DateofBirth,
--JoiningDateTime



--INT --4
--SELECT 100000*4
--NUMeric
--select 100000*10

-----
CREATE TABLE EmployeeDetail
(
EmployeeID INT,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Age TINYINT,
Salary INT,
DOB DATE,
JoiningDate DATETIME
)

SELECT * FROM EmployeeDetail WHERE DOB='Jaiswal'

SELECT EmployeeID,FirstName,Salary FROM EmployeeDetail

INSERT INTO EmployeeDetail(EmployeeID,FirstName,LastName,Age,Salary,DOB,JoiningDate)
VALUES( 4,'SAHI','Singh',28,50000,'1995-01-01','2022-01-01')


SELECT DISTINCT LastName FROM EmployeeDetail
SELECT  LastName FROM EmployeeDetail
---=========
--lAstName Should be jaiswal and FirstName sahil
SELECT * FROM EmployeeDetail WHERE LastName='Jaiswal' AND FirstName='SAHIL'


SELECT * FROM EmployeeDetail WHERE LastName='Jaiswal' OR FirstName='SAHIL'

SELECT * FROM EmployeeDetail WHERE FirstName <>'VISHAL'

SELECT * FROM EmployeeDetail WHERE FirstName LIKE'%HIL'

Fetch the those employee data who joined last month









SELECT * INTO EmployeeDetail_NEW FROM EmployeeDetail


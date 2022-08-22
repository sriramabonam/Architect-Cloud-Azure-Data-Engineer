--SELECT DATENAME(Week,GETDATE())
--SELECT DATEPART(Week,GETDATE())


--SELECT DATENAME(MONTH,GETDATE())----STRING
--SELECT DATEPART(MONTH,GETDATE())---INT

--SELECT DAY(GETDATE())--14
--SELECT MONTH(GETDATE())--8
--SELECT YEAR(GETDATE())--2022

--SELECT MONTH('2022-12-01')--8

--DECLARE @StartDate DATE=' 2022-01-01'
--DECLARE @EndDate DATE ='2022-01-10'

--SELECT DATEDIFF(dd,@StartDate,@EndDate)

--SELECT DATEDIFF(MONTH,@StartDate,@EndDate) AS MonthDiff,DATEDIFF(YEAR,@StartDate,@EndDate) AS YearDiff
--SELECT DATEDIFF(YEAR,@StartDate,@EndDate)
--SELECT DATEDIFF(hour,@StartDate,@EndDate)
--SELECT DATEDIFF(MINUTE,@StartDate,@EndDate)
--SELECT DATEDIFF(SECOND,@StartDate,@EndDate)

--DECLARE @StartDate DATETIME='2022-08-10'

--SELECT @StartDate
----SELECT DATEADD(dd,5,@StartDate)
--SELECT DATEADD(MINUTE,5,@StartDate)

--EOMONTH--->ENDOFMONTH

--DECLARE @StartDate DATE='2017-02-01'

--SELECT @StartDate AS StartDate,EOMONTH(@StartDate)

--DECLARE @DateTimeOffSet DATETIMEOFFSET='2019-03-06 09:20:00.0000000 +07:00'
--SELECT @DateTimeOffSet

--SELECT 
--    SWITCHOFFSET(@DateTimeOffSet, '-08:00') result


--	----SELECT * FROM EmployeeDetails WHERE DAY(dob)=20
--	DROP TABLE #NEW_EmployeeDetails
--SELECT 
--*
--FROM 
--EmployeeDetails ED 
--JOIN Department D ON ED.DepartmentID=D.DepartmentID

--SELECT * INTO EmployeeDetails_backup  FROM EmployeeDetails

DECLARE @Day INT=10
DECLARE @Month INT=12
DECLARE @Year INT=2022

SELECT DATEFROMPARTS(@Year,@Month,@Day)
--DATETIME2FROMPARTS ( year, month, day, hour, minute, seconds, fractions, precision )  

SELECT DATETIME2FROMPARTS(@Year,@Month,@Day,12,56,49,.12,1)


SELECT 
    DATETIME2FROMPARTS ( 2020, 12, 31, 11, 59, 59, 0, 0 ) result;  

	--DATETIMEOFFSETFROMPARTS ( year, month, day, hour, minute, seconds, fractions, hour_offset, minute_offset, precision )  

	--SELECT 
 --   DATETIMEOFFSETFROMPARTS(2020, 11, 12, 20, 35, 30, 5000, 10, 30, 4) Result;
 --DECLARE @D AS DATETIME ='2022-01-01'
 --SELECT @D


 --SELECT ISDATE(@D)
 --SELECT ISDATE('2022-12-01')
 ---=======================================
 --STRING FUNCTION
-- LTRIM---->TRIM
-- RTRIM---->TRIM

--DECLARE @String VARCHAR(100)='  SAHIL  '

--SELECT LTRIM(@STRING),RTRIM(@STRING),TRIM(@String)
--'SAHIL  '
--'  SAHIL'
--'SAHIL'


--DECLARE @Lower VARCHAR(100)='SAHIL'
--SELECT LOWER(@Lower)

--DECLARE @Lower VARCHAR(100)='sahil'
--SELECT UPPER(@Lower)


--DECLARE @Lower VARCHAR(100)='sAhIl JaIsWaL'

--SELECT UPPER(SUBSTRING(@Lower,1,1))+LOWER(SUBSTRING(@Lower,2,13))

--SELECT SUBSTRING(@Lower,1,3)

--SELECT UPPER(SUBSTRING(@Lower,1,1))+SUBSTRING(@Lower,2,4)

--DECLARE @ReverseString VARCHAR(100)='SAHIL'
--SELECT REVERSE(@ReverseString)

INT + INT=TRUE
STRING_STRING=TRUE
INT+STRING==:ERROR
STRING+INT=ERROR


---OUTPUT 
--SAHIL1

--DECLARE @ID INT=1-->'1'
--DECLARE @Name VARCHAR(100)='Sahil'

--SELECT @Name+CAST(@ID AS VARCHAR(10))
--SELECT @Name +CONVERT(VARCHAR(10),@ID)

--DECLARE @DATE DATE='2022-01-01'--YYYY-MM-DD--->dd-mm-yyyy
----CONVERT(data_type(length), expression, style)
--SELECT CONVERT(VARCHAR(10),@DATE,104)

--SELECT CAST(COLUMNN AS INT/VARCHAR(100)/DATETIME)

--SELECT CHOOSE(3,'SAHIL','JAISWAL','Intellipat')



--SELECT 
--EmployeeID,
--FirstName,
--LastName,
--ISNULL(AGE,12)
--FROM EmployeeDetails
---------
--1)-DECLARE @S VARCHAR(100)='SAHIL'
--  DECLARE @I INT =100
--  OUTPUT==>100SAHIL

--2)-DECLARE @P VARCHAR(100)='   AASAS   '
--  HOW we can remove the space

--3)-DECLARE @D DATE='2022-01-01'
--  OUTPUT -->'2022-01-05'

--  ---Prashant
--  DECLARE @S VARCHAR(100)='SAHIL'--DECLARE @I INT=100--SELECT CAST(@I AS VARCHAR(100))+@S--DECLARE @P VARCHAR(100)='   AASAS'--SELECT TRIM(@P)--DECLARE @D DATE='2022-01-01'--SELECT DATEADD(dd,4,@D)

-----dipali
--DECLARE @S AS VARCHAR(100) = 'SAHIL'--DECLARE @I AS INT =100--SELECT CAST(@I AS VARCHAR(5) + @S--DECLARE @S AS VARCHAR(100) = '    SAHIL   '--SELECT TRIM(@S)--DECLARE @D AS DATETIME = '2022-01-01'--SELECT DATEADD(DD,4,@D)



--1) Select @S+Cast(@I,Varchar(10))SAHIL100--100SAHIL--SELECT Cast(@I,Varchar(10))+@S--2)Select trim(@P)--3) Select date(DD,5,@D)


--SELECT * FROM EmployeeDetails

--1)-Write a query to display the departmentwise maximum salary?
--2)-Write a query to display the how much salary are givinh to all the employee?
--3)-Write a query to identify those empplye who are getting the more than 5000 salary?
--4)-Write a query to display the department wise employee headcount?




--1.--select departmentID, max(salary) AS Max_Salary from employeedetails group by departmentID--2.--select sum(salary) as total_salary  from employeedetails --3.--select employee_id, salary from employeedetails where salary>5000--4.--select count(*), departmentID from employeedetails group by departmentID

---------
--IN OPERATOR/NOT IN Operator


SELECT 
*
FROM 
EmployeeDetails
WHERE DepartmentID IN (1,2,3,5)

--NOT IN 
--WRIte a query to display the employee who are not attached with departmentID=1

--SELECT * FROM EmployeeDetails WHERE departmentID NOT in (1,2)

-------SUBQUERY

--1)-MAIN Query
--2)-SUBQUERY query

SELECT * FROM EmployeeDetails------MAIN QUERY
WHERE DepartmentID IN (SELECT DepartmentID FROM Department)--SUBQUERY

CREATE TABLE Department
(
DepartmentID INT,
DepartmentName VARCHAR(100)
)

INSERT INTO Department(DepartmentID,DepartmentName)
SELECT 2,'Software'

WRITE a query to display those employe who are not attached with department 7,9
NOTE-->please use subquery

Write a query to display the total salary of those emkplye who are attached with Any department?
NOTE--USE Sub query


SELECT SUM(SALARY) FROM EMPLOYEEDETAILS WHERE DEPARTMENTID IN (SELECT DEPARTMRNTID FROM DEPARTMENT)


select sum (salary) as sum_salary From Employeedetails where DepartmentID IN (Select department ID From department)

select sum(salary) from employeedetail where departmentid in (select departmentid from department )




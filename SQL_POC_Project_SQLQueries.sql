USE Practice

--1. Create the following Table Employee

CREATE TABLE EMPLOYEE
(
[Employee_id] INT NOT NULL,
[First_Name] VARCHAR(50),
[Last_Name] VARCHAR(50),
[Salary] INT,
[Joining_date] SMALLDATETIME,
[Department] VARCHAR(30)
)

DROP TABLE Employee


SELECT * FROM EMPLOYEE

INSERT INTO EMPLOYEE ([Employee_id],[First_Name],[Last_Name],[Salary],[Joining_date],[Department])
      VALUES (1,'Anika','Arora',10000,'2020-02-14 9:00:00','HR');
INSERT INTO EMPLOYEE ([Employee_id],[First_Name],[Last_Name],[Salary],[Joining_date],[Department])
      VALUES (2,'Veena','Varma',80000,'2011-06-15 9:00:00','Admin');
INSERT INTO EMPLOYEE ([Employee_id],[First_Name],[Last_Name],[Salary],[Joining_date],[Department])
      VALUES (3,'Vishal','Singhal',30000,'2020-02-16 9:00:00','HR');
INSERT INTO EMPLOYEE ([Employee_id],[First_Name],[Last_Name],[Salary],[Joining_date],[Department])
      VALUES (4,'Sushanth','Sing',500000,'2020-02-17 9:00:00','Admin');
INSERT INTO EMPLOYEE ([Employee_id],[First_Name],[Last_Name],[Salary],[Joining_date],[Department])
      VALUES (5,'Bhupal','Bhati',500000,'2011-06-18 9:00:00','Admin');
INSERT INTO EMPLOYEE ([Employee_id],[First_Name],[Last_Name],[Salary],[Joining_date],[Department])
      VALUES (6,'Dheeraj','Diwan',200000,'2011-06-19 9:00:00','Account');
INSERT INTO EMPLOYEE ([Employee_id],[First_Name],[Last_Name],[Salary],[Joining_date],[Department])
      VALUES (7,'Karan','Kumar',75000,'2020-06-14 9:00:00','Account');
INSERT INTO EMPLOYEE ([Employee_id],[First_Name],[Last_Name],[Salary],[Joining_date],[Department])
      VALUES (8,'Chandrika','Chauhan',90000,'2011-04-15 9:00:00','Admin');

--2.CREATE TABLE EMPLOYEE BONUS TABLE

CREATE TABLE EMPLOYEE_BONUS
(
[Employee_ref_id] INT NOT NULL,
[Bonus_Amount] INT,
[Bonus_Date] SMALLDATETIME,
);

SELECT * FROM EMPLOYEE_BONUS

SELECT * INTO NEW_EMPLOYEE_BONUS FROM EMPLOYEE_BONUS

SELECT * FROM NEW_EMPLOYEE_BONUS

DROP TABLE EMPLOYEE_BONUS

INSERT INTO EMPLOYEE_BONUS ([Employee_ref_id],[Bonus_Amount],[Bonus_Date])
     VALUES (1,5000,'2020-02-16 0:00:00')
INSERT INTO EMPLOYEE_BONUS ([Employee_ref_id],[Bonus_Amount],[Bonus_Date])
     VALUES (2,3000,'2011-06-16 0:00:00')
INSERT INTO EMPLOYEE_BONUS ([Employee_ref_id],[Bonus_Amount],[Bonus_Date])
     VALUES (3,4000,'2020-02-16 0:00:00')
INSERT INTO EMPLOYEE_BONUS ([Employee_ref_id],[Bonus_Amount],[Bonus_Date])
     VALUES (1,4500,'2020-02-16 0:00:00')
INSERT INTO EMPLOYEE_BONUS ([Employee_ref_id],[Bonus_Amount],[Bonus_Date])
     VALUES (2,3500,'2011-02-16 0:00:00')

	 
CREATE TABLE EMPLOYEE_TITLE
(
[Employee_ref_id] INT NOT NULL,
[Employee_title] VARCHAR(50),
[Affective_Date] SMALLDATETIME,
);

SELECT * FROM EMPLOYEE_TITLE

INSERT INTO EMPLOYEE_TITLE([Employee_ref_id],[Employee_title],[Affective_Date] )
       VALUES(1,'Manager','2016-02-20 0:00:0')
INSERT INTO EMPLOYEE_TITLE([Employee_ref_id],[Employee_title],[Affective_Date] )
       VALUES(2,'Exutive','2016-06-11 0:00:0')
INSERT INTO EMPLOYEE_TITLE([Employee_ref_id],[Employee_title],[Affective_Date] )
       VALUES(8,'Excutive','2016-06-11 0:00:0')
INSERT INTO EMPLOYEE_TITLE([Employee_ref_id],[Employee_title],[Affective_Date] )
       VALUES(5,'Manager','2016-06-11 0:00:0')
INSERT INTO EMPLOYEE_TITLE([Employee_ref_id],[Employee_title],[Affective_Date] )
       VALUES(4,'Asst.Manager','2016-06-11 0:00:0')
INSERT INTO EMPLOYEE_TITLE([Employee_ref_id],[Employee_title],[Affective_Date] )
       VALUES(7,'Excutive','2016-06-11 0:00:0')
INSERT INTO EMPLOYEE_TITLE([Employee_ref_id],[Employee_title],[Affective_Date] )
       VALUES(6,'Lead','2016-06-11 0:00:0')
INSERT INTO EMPLOYEE_TITLE([Employee_ref_id],[Employee_title],[Affective_Date] )
       VALUES(3,'Lead','2016-06-11 0:00:0')

--1 Display the “FIRST_NAME” from Employee table using the alias name as Employee_name.
 
 SELECT FIRST_NAME AS "EMPLOYEE_NAME" FROM EMPLOYEE;

--2 Display “LAST_NAME” from Employee table in upper case.

 SELECT UPPER("LAST_NAME") FROM EMPLOYEE; 

--3 Display unique values of DEPARTMENT from EMPLOYEE table.

 SELECT DISTINCT ("DEPARTMENT") FROM EMPLOYEE;

 --4 Display the first three characters of LAST_NAME from EMPLOYEE table.

 SELECT SUBSTRING(First_Name,1,3) FROM EMPLOYEE;

--5 Display the unique values of DEPARTMENT from EMPLOYEE table and prints its length.

  SELECT DISTINCT "Department" FROM EMPLOYEE;

--6 Display the FIRST_NAME and LAST_NAME from EMPLOYEE table into a single column AS FULL_NAME. a space char should separate them.

   SELECT CONCAT(First_Name, ' ', Last_Name) AS FULL_NAME FROM EMPLOYEE

--7 DISPLAY all EMPLOYEE details from the employee table order by FIRST_NAME Ascending.

   SELECT * FROM EMPLOYEE ORDER BY "First_Name" ASC;

--8. Display all EMPLOYEE details order by FIRST_NAME Ascending and DEPARTMENT Descending.      

   SELECT * 
   FROM EMPLOYEE 
   ORDER BY "First_Name" ASC,
            "Department" DESC;

--9 Display details for EMPLOYEE with the first name as “VEENA” and “KARAN” from EMPLOYEE table.

   SELECT * FROM EMPLOYEE WHERE First_Name = 'VEENA' or First_Name = 'KARAN'

--10 Display details of EMPLOYEE with DEPARTMENT name as “Admin”.

   SELECT * FROM EMPLOYEE WHERE DEPARTMENT = 'Admin'

--11 DISPLAY details of the EMPLOYEES whose FIRST_NAME contains ‘V’.

   SELECT * FROM EMPLOYEE WHERE First_Name LIKE 'V%'

--12 DISPLAY details of the EMPLOYEES whose SALARY lies between 100000 and 500000..

   SELECT * FROM EMPLOYEE WHERE Salary BETWEEN 100000 and 500000;

--13 Display details of the employees who have joined in Feb-2020.

   SELECT * FROM EMPLOYEE WHERE Joining_date between '2020-02-01' and '2020-02-28';

--14 Display employee names with salaries >= 50000 and <= 100000.

   SELECT * FROM EMPLOYEE WHERE Salary between 50000 and 100000;

--16 DISPLAY details of the EMPLOYEES who are also Managers.
   
    SELECT * FROM EMPLOYEE_TITLE WHERE Employee_title = 'Manager';

--17 DISPLAY duplicate records having matching data in some fields of a table.

    SELECT Department, COUNT(*) FROM EMPLOYEE GROUP BY Department; 

--18 Display only odd rows from a table.

   --SELECT DISTINCT (Employee_title) FROM EMPLOYEE_TITLE
	 SELECT * from EMPLOYEE_TITLE WHERE Employee_ref_id % 2 <> 0;
   --SELECT * from EMPLOYEE_TITLE WHERE Employee_ref_id % 2 = 0;

--19 Clone a new table from EMPLOYEE table.
	
	SELECT * INTO EMPLOYEE_CLONE FROM EMPLOYEE
	SELECT * FROM EMPLOYEE_CLONE

--20 DISPLAY the TOP 2 highest salary from a table.
     
   --SELECT MAX(Salary) from EMPLOYEE
   	 SELECT DISTINCT TOP 2 Salary from EMPLOYEE ORDER BY Salary DESC

--21. DISPLAY the list of employees with the same salary.
     SELECT * FROM EMPLOYEE AS e1
	 WHERE Salary IN
	 (SELECT Salary FROM EMPLOYEE AS e2 WHERE e1.Employee_id <> e2.Employee_id)

--22 Display the second highest salary from a table.
     SELECT MAX(Salary) AS Salary
	 FROM EMPLOYEE AS e
	 WHERE e.Salary NOT IN (SELECT MAX(Salary) FROM EMPLOYEE)
--23 Display the first 50% records from a table.

    SELECT 
    TOP 50 PERCENT * 
    FROM 
    EMPLOYEE;

--24. Display the departments that have less than 4 people in it.

  	SELECT Department,COUNT(Department) AS Dept_Count FROM EMPLOYEE
	GROUP BY Department 
    HAVING COUNT(Department) < 4

--25. Display all departments along with the number of people in there.
    SELECT Department, COUNT(Department) AS Dept_Count FROM EMPLOYEE
    GROUP BY Department;

--26 Display the name of employees having the highest salary in each department.

     SELECT e.First_Name,e.Department
     FROM EMPLOYEE e
     WHERE e.Salary IN
     (SELECT MAX(Salary)
     FROM EMPLOYEE
     GROUP BY Department);

--27 Display the names of employees who earn the highest salary.

     SELECT e.First_Name,e.Salary
     FROM EMPLOYEE e
     WHERE e.Salary IN
     (SELECT MAX(Salary)
     FROM EMPLOYEE
     GROUP BY First_Name);

--28 Diplay the average salaries for each department
    
    SELECT Department, AVG(salary) 
	FROM EMPLOYEE 
	GROUP BY Department;

--29 display the name of the employee who has got maximum bonus
    
	SELECT TOP 1 EMPLOYEE.First_Name,EMPLOYEE.Last_Name FROM EMPLOYEE, EMPLOYEE_BONUS
	WHERE EMPLOYEE_BONUS.Bonus_Amount = (SELECT MAX(Bonus_Amount) FROM EMPLOYEE_BONUS)

--30 Display the first name and title of all the employees

    SELECT EMPLOYEE.First_Name, EMPLOYEE_TITLE.Employee_title FROM EMPLOYEE, EMPLOYEE_TITLE
	WHERE EMPLOYEE.Employee_id = EMPLOYEE_TITLE.Employee_ref_id

	SELECT * FROM EMPLOYEE
	SELECT * FROM EMPLOYEE_TITLE
	SELECT * FROM EMPLOYEE_BONUS
	SELECT * FROM EMPLOYEE_CLONE

	NOW();
	CURRENT_DATE()

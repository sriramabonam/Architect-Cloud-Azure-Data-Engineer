CREATE DATABASE PRACTICE
USE PRACTICE

CREATE TABLE ORDERS(
OrderID INT,
CustomerID INT,
EmployeeID INT,
OrderDate DATE,
ShipperID INT,
)

INSERT INTO ORDERS(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
    VALUES (10308, 2, 7, '1996-09-18', 3);
INSERT INTO ORDERS(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
    VALUES (10309, 37, 3, '1996-09-19', 1);
INSERT INTO ORDERS(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
    VALUES (10310, 77, 8, '1996-09-20', 2);

SELECT * FROM ORDERS

CREATE TABLE Customers
(
CustomerID INT,
CustomerName VARCHAR(50),
ContactName VARCHAR(50),
Addresss VARCHAR(50),
City VARCHAR(50),
PostalCode INT,
Country VARCHAR(50)
)

INSERT INTO Customers(CustomerID, CustomerName, ContactName, Addresss, City, PostalCode, Country)
   VALUES (1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany')

INSERT INTO Customers(CustomerID, CustomerName, ContactName, Addresss, City, PostalCode, Country)
   VALUES (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico')

   INSERT INTO Customers(CustomerID, CustomerName, ContactName, Addresss, City, PostalCode, Country)
   VALUES (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico')

   SELECT * FROM Customers
   SELECT * FROM ORDERS

   SELECT * FROM ORDERS
   INNER JOIN  Customers
   ON ORDERS.CustomerID = Customers.CustomerID

   SELECT * FROM ORDERS
   LEFT JOIN  Customers
   ON ORDERS.CustomerID = Customers.CustomerID

   SELECT * FROM Customers
   LEFT JOIN  ORDERS
   ON Customers.CustomerID = ORDERS.CustomerID

   SELECT * FROM ORDERS
   RIGHT JOIN  Customers
   ON ORDERS.CustomerID = Customers.CustomerID

   SELECT * FROM Customers
   RIGHT JOIN  ORDERS
   ON Customers.CustomerID = ORDERS.CustomerID

   CREATE TABLE Suppliers
   (
   SupplierID INT,
   SupplierName VARCHAR(50),
   ContactName VARCHAR(50),
   Addresss VARCHAR(50),
   City VARCHAR(50),
   PostalCode VARCHAR(50),
   Country VARCHAR(50)
   )

   INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Addresss, City, PostalCode, Country)
        VALUES (1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'London', 'EC1 4SD', 'UK')

   INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Addresss, City, PostalCode, Country)
        VALUES (2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA')

   INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Addresss, City, PostalCode, Country)
        VALUES (3, 'Grandma Kellys Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA')
 
    SELECT * FROM Customers
	SELECT * FROM ORDERS

	SELECT CUSTOMERID FROM Customers
	UNION 
	SELECT CUSTOMERID FROM ORDERS
    ORDER BY CustomerID;
	   
   SELECT City FROM Customers
   UNION 
   SELECT City FROM Suppliers
   ORDER BY City;

   SELECT COUNT(CustomerID), Country
   FROM Customers
   GROUP BY Country;
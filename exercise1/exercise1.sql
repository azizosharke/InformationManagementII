1. CREATE TABLE Customers ( 

    CustomerID INT PRIMARY KEY, 

    CustomerName VARCHAR(255) NOT NULL, 

    ContactName VARCHAR(255), 

    Address VARCHAR(255), 

    City VARCHAR(255) NOT NULL, 

    PostalCode VARCHAR(255), 

    Country VARCHAR(255) NOT NULL, 

    CONSTRAINT ck_PostalCode CHECK (PostalCode LIKE '__%') 

); 


2.INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address ,City, Postal Code, Country) 

VALUES (1, ‘Jim Moore’ , ‘James Moore’, ‘Fredrick Street’, ‘Berlin’ , ‘12209’, ‘Germany’ ; 

 

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address ,City, Postal Code, Country) 

VALUES (2, ‘Jane Smith’ , ‘Jane Smith’, ‘Kevin Street’, ‘Mexico D.F.’ , ‘12207’, ‘Mexico’ ; 

 

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address ,City, Postal Code, Country) 

ALUES (2, ‘Lucille Connors’ , ‘Lucille Connors’, ‘Tpwnsend Street’, ‘Mexico D.F.’ , ‘12207’, ‘Mexico’ ; 

 

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address ,City, Postal Code, Country) 

VALUES (4, ‘Phil Nolan’, ‘Philip Nolan ‘Sundale Street , ‘London’ , ‘WA1 1DP’, ‘UK’ ; 

 

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address ,City, Postal Code, Country) 

VALUES (5, ‘Veronica Green’ , ‘Veronica Green’, ‘Shipyard Lane, ‘Lulea’ , ‘S958 22’, ‘Swedencom’ ; 


3. SELECT * FROM `Customers`; 

4. SELECT Country FROM Customers; 

5. SELECT * FROM Customers WHERE City='Berlin'; 

6. SELECT * FROM Customers WHERE City='Berlin' and PostalCode='12209'; 

7. INSERT INTO `Customers`(`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES ('6','Cardinal',NULL,NULL,'Stavanger',NULL,'Norway'); 

8. SELECT PostalCode FROM Customers WHERE PostalCode IS NULL; 

9. SELECT PostalCode FROM Customers WHERE PostalCode IS NOT NULL; 

10. UPDATE `Customers` SET `CustomerName`='John Smith' WHERE Country = 'UK'; 

11. DELETE FROM `Customers` WHERE PostalCode ='12209';  

12. SELECT DISTINCT Country FROM Customers WHERE Country LIKE '%e%' ORDER BY Country; 
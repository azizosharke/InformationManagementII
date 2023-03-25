1. CREATE TABLE CustomersT4 (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(255) NOT NULL,
  ContactName VARCHAR(255),
  Country VARCHAR(255)
);

CREATE TABLE Bookings (
  BookingID INT PRIMARY KEY,
  CustomerID INT NOT NULL,
  BookingDate DATE NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES CustomersT4(CustomerID) 
);

2. 
INSERT INTO CustomersT4 (CustomerID, CustomerName, ContactName, Country) VALUES (1, 'Alfreds Futterkiste', 'Maria Anders', 'Germany');
INSERT INTO CustomersT4 (CustomerID, CustomerName, ContactName, Country) VALUES (2, 'Ana Trujillo Emaparedados y helados', 'Ana Trujillo', 'Mexico');
INSERT INTO CustomersT4 (CustomerID, CustomerName, ContactName, Country) VALUES (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mexico');

INSERT INTO Bookings (BookingID, CustomerID, BookingDate) VALUES (10309, 1, '1996-09-19');
INSERT INTO Bookings (BookingID, CustomerID, BookingDate) VALUES (10310, 2, '1996-09-20');
INSERT INTO Bookings (BookingID, CustomerID, BookingDate) VALUES (10311, 3, '1996-09-19');
INSERT INTO Bookings (BookingID, CustomerID, BookingDate) VALUES (10312, 2, '2026-09-20');

3. SELECT * FROM Bookings;

4. SELECT BookingDate FROM Bookings;

5. SELECT * FROM CustomersT4
   WHERE Country = 'Mexico';

6. SELECT BookingID FROM Bookings
   WHERE BookingDate = '1996-09-18';

7. SELECT c.CustomerName
   FROM CustomersT4 c
   JOIN Bookings b ON c.CustomerID = b.CustomerID
   WHERE b.BookingDate = '1996-09-18';

8. SELECT DISTINCT c.ContactName
   FROM CustomersT4 c
   JOIN Bookings b ON c.CustomerID = b.CustomerID
   WHERE b.BookingDate < '1996-09-19';

9. SELECT BookingID FROM Bookings
   WHERE BookingDate < CURRENT_DATE;

10. SELECT DISTINCT c.ContactName
    FROM CustomersT4 c
    JOIN Bookings b ON c.CustomerID = b.CustomerID
    WHERE b.BookingDate > CURRENT_DATE;
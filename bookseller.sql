CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_id INT,
    Book_id INT,
    Order_Date DATE,
    Quantity INT,
    Total_Amount DECIMAL(10,2)
);

select * from Orders;

CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Genre VARCHAR(100),
    Published_Year INT,
    Price DECIMAL(10,2),
    Stock INT
);

select * from Books;

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    City VARCHAR(100),
    Country VARCHAR(100)
);

select * from Customers;

--1.	Retrive all books in the “fiction”  Gener.
Select * from Books
Where genre ='Fiction';

--2.	Find books published after 1950.
Select * from Books
Where published_year>1950;

--3.	List all coustomer from Canada.
Select * from Customers
Where country ='Canada';

--4.	Select all order in nov 2023.
SELECT *
FROM Orders
WHERE order_date >= DATE '2023-11-01'
 AND order_date <  DATE '2023-12-01';

 --or

SELECT *
FROM orders
WHERE EXTRACT(MONTH FROM order_date) = 11
AND EXTRACT(YEAR FROM order_date) = 2023;

--5.	Retrive the total stock of books available.
Select sum(stock) AS total_avilable_books
From Books;

--6.	Find most expensive books.
Select * from Books 
ORDER BY Price DESC
Limit 1;

--7.	Show all coustomer who ordered more than one quantity of books.
Select * from Customers C
Join Orders O
 ON C.customer_id=O.customer_id
Where O.quantity>1;

--8.	Retrive all the order where amount exceeds 20 rs.
Select * from Orders
Where Total_Amount > 20;

--9.	List all gener available in book table.
Select Genre from Books;

--10.	Find the book with lowest stock.
Select Book_id, Title, Stock from Books
Order by Stock ASC
Limit 2;

--11.	Calculate total revenue generate from all order.
Select sum(Total_Amount) AS total_revenue from Orders;

--12.	Retrive The total numer of book sold for each gener
Select  b.Genre, sum(o.Quantity) from Books b
Join Orders o 
ON b.Book_id = o.Book_id
GROUP BY Genre;

--13.	Find the average price of books in the fantasy genre.
Select AVG(Price) from Books
Where Genre ='Fantasy';

--14.	List customer who have placed at least 2 order
Select c.Name , count(o.Order_id) as total_order
from Customers c Join Orders o
On c.Customer_id=o.customer_id
group by c.name
Having count(o.Order_id)>1;

--15.	Find the most frequent ordered book.
Select b.Title ,sum(o.Quantity) AS total_order_books from Books b JOIN Orders o
ON b.Book_id = o.Book_id
Group by b.Title
Order by total_order_books desc
Limit 1;

--16.	Top 3 most expensive book of “fantasy” genre.
Select title , price from Books 
Where genre='Fantasy'
Order by Price desc
Limit 3;

--17.	 Retrive the total quantity of books sold by each author.
Select b.Author , sum(o.Quantity) as total_sold_books
From Books b Join Orders o 
ON b.Book_id = o.Book_id
Group by Author
Order by  total_sold_books;


--18.	Find the customer who spent most of the order.
SELECT 
    c.Name,
    SUM(o.Total_Amount) AS total_spend_money
FROM Customers c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY c.Name
ORDER BY total_spend_money DESC
LIMIT 1;











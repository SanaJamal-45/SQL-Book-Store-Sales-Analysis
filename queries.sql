create database Book_Store;
create table books(
Book_ID	SERIAL PRIMARY KEY,
Title VARCHAR(100),
Author VARCHAR(100),
Genre VARCHAR(50),
Published_Year	INT,
Price	NUMERIC(10,2),
Stock INT
);
DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
Customer_ID	SERIAL PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100),
Phone VARCHAR(15),
City VARCHAR(50),
Country VARCHAR(150)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
Order_ID SERIAL PRIMARY KEY,	
Customer_ID	int references customers(Customer_ID),
Book_ID	int references books(Book_ID),
Order_Date DATE,
Quantity INT,
Total_Amount NUMERIC(10,2)
);

-- 1) Retrieve all books in the "Fiction" genre
SELECT 
    *
FROM
    books
WHERE
    genre = 'fiction';
    
-- 2) Find books published after the year 1950
select * 
from books 
where published_year > 1950;

-- 3) List all customers from Canada
select * from customers where country = "Canada";

-- 4) Show orders placed in November 2023
select * from orders where Order_Date between '2023-11-01' and '2023-11-30';

-- 5) Retrieve the total stock of books available
select sum(Stock) as total_stock from books;

-- 6) Find the details of the most expensive book
select * from books
order by Price desc 
Limit 1;

-- 7) Show all customers who ordered more than 1 quantity of a book
select Name from customers join orders 
on customers.Customer_ID = orders.Customer_ID
where orders.Quantity>1;

-- 8) Retrieve all orders where the total amount exceeds $20
select * from orders where Total_Amount > 20;

-- 9) List all genres available in the Books table
select distinct(Genre) from books; 

-- 10) Find the book with the lowest stock
select Title from books order by Stock asc limit 1;

-- 11) Calculate the total revenue generated from all orders
select sum(Total_Amount) as total_revenue from orders;

-- 12) Retrieve the total number of books sold for each genre
select sum(orders.Quantity) as total_books_sold, books.Genre from books join orders 
on books.Book_ID = orders.Book_ID
group by books.Genre;

-- 13) Find the average price of books in the "Fantasy" genre
select Avg(books.Price) as avg_book_price from books where Genre = 'Fantasy';

-- 14) List customers who have placed at least 2 orders
select Customer_ID, count(Order_ID) as count
from orders
group by Customer_ID
Having count >=2;

-- 15) Find the most frequently ordered book
select books.Title, sum(orders.quantity) as total_quantity
from books join orders 
on books.Book_ID = orders.Book_ID
group by books.Title
order by total_quantity DESC
limit 1;

-- 16)  Show the top 3 most expensive books of "Fantasy" genre
SELECT * 
FROM books
WHERE genre = 'Fantasy'
ORDER BY price DESC
LIMIT 3;

-- 17) Retrieve the total quantity of books sold by each author
select sum(orders.Quantity) as total_books_sold, books.Author from books join orders 
on books.Book_ID = orders.Book_ID
group by books.Author;

-- 18) List the cities where customers who spent over $30 are located
select distinct(customers.City) from customers 
join orders 
on customers.Customer_ID = orders.Customer_ID
where orders.Total_Amount > 30;

-- 19) Find the customer who spent the most on orders
select customers.Name, sum(orders.Total_Amount) as total_spent from customers 
join orders
on customers.Customer_ID = orders.Customer_ID
group by customers.name
order by total_spent desc 
limit 1; 

-- 20) Calculate the stock remaining after fulfilling all orders
SELECT books.title,
       books.stock - COALESCE(SUM(orders.quantity), 0) AS remaining_stock
FROM books
LEFT JOIN orders
ON books.book_id = orders.book_id
GROUP BY books.book_id, books.title, books.stock;
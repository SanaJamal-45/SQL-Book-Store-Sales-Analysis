# Book Store SQL Analysis Project

## Project Overview

This project performs SQL-based analysis on a Book Store database.  
The goal of the project is to extract meaningful business insights related to book sales, customer behavior, inventory management, revenue generation, and genre performance using SQL queries.

The project demonstrates practical usage of:
- SQL Queries
- JOIN Operations
- Aggregate Functions
- GROUP BY
- Filtering
- Sorting
- Subqueries
- Inventory Analysis

---

# Database Tables

The project uses the following tables:

## 1. Books Table

Stores information about books available in the bookstore.

| Column Name | Description |
|-------------|-------------|
| Book_ID | Unique identifier for each book |
| Title | Name of the book |
| Author | Author name |
| Genre | Book genre |
| Price | Price of the book |
| Stock | Available stock quantity |
| Published_Year | Year of publication |

---

## 2. Customers Table

Stores customer information.

| Column Name | Description |
|-------------|-------------|
| Customer_ID | Unique customer ID |
| Name | Customer name |
| City | Customer city |
| Country | Customer country |

---

## 3. Orders Table

Stores customer order information.

| Column Name | Description |
|-------------|-------------|
| Order_ID | Unique order ID |
| Customer_ID | Customer placing the order |
| Book_ID | Ordered book ID |
| Quantity | Quantity ordered |
| Total_Amount | Total order amount |
| Order_Date | Date of order |

---

# SQL Analysis Performed

## Basic Queries

### 1. Retrieve all books in the "Fiction" genre
Filtered books belonging to the Fiction category.

### 2. Find books published after 1950
Retrieved modern books based on publication year.

### 3. List all customers from Canada
Filtered customers by country.

### 4. Show orders placed in November 2023
Retrieved orders within a specific date range.

### 5. Retrieve the total stock of books available
Calculated the total inventory available in the bookstore.

### 6. Find the details of the most expensive book
Identified the highest-priced book.

### 7. Show customers who ordered more than one quantity
Retrieved bulk-purchase orders.

### 8. Retrieve orders where total amount exceeds $20
Filtered high-value orders.

### 9. List all available genres
Displayed distinct genres in the bookstore.

### 10. Find the book with the lowest stock
Identified books requiring restocking.

### 11. Calculate total revenue generated
Computed total sales revenue from all orders.

---

# Advanced Queries

### 12. Retrieve total number of books sold for each genre
Analyzed genre-wise sales performance.

### 13. Find the average price of Fantasy books
Calculated average pricing for Fantasy books.

### 14. List customers with at least 2 orders
Identified frequent customers.

### 15. Find the most frequently ordered book
Determined the most popular book based on sales quantity.

### 16. Show top 3 most expensive Fantasy books
Retrieved premium Fantasy books.

### 17. Retrieve total quantity of books sold by each author
Analyzed author-wise sales.

### 18. List cities where customers spent over $30
Identified cities with high-spending customers.

### 19. Find the customer who spent the most
Determined the highest-value customer.

### 20. Calculate remaining stock after fulfilling orders
Performed inventory analysis by subtracting sold quantities from available stock.

---

# SQL Concepts Used

The project demonstrates the following SQL concepts:

- SELECT Statements
- WHERE Clause
- ORDER BY
- GROUP BY
- HAVING Clause
- Aggregate Functions
  - COUNT()
  - SUM()
  - AVG()
  - MAX()
  - MIN()
- INNER JOIN
- LEFT JOIN
- DISTINCT
- Subqueries
- Filtering and Sorting

---

# Key Insights

- Certain genres contributed significantly more to total sales.
- Some books required restocking due to low inventory.
- High-spending customers were concentrated in specific cities.
- Fantasy books had higher average pricing compared to several other genres.
- Customer purchasing behavior revealed frequently ordered books and loyal customers.

---

# Technologies Used

- MySQL
- SQL
- Relational Database Concepts

---

# Learning Outcomes

This project helped strengthen skills in:

- Writing SQL queries
- Data analysis using SQL
- Database relationships and joins
- Inventory and revenue analysis
- Business insight generation
- Query optimization and aggregation

---

# How to Run the Project

1. Create the database and tables in MySQL.
2. Insert the sample data into tables.
3. Run the SQL queries using MySQL Workbench or any SQL editor.
4. Analyze the outputs generated from the queries.

---

# Project Author

Sana

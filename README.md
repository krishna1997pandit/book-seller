# book-seller
📚 Book Seller SQL Database Project 
📌 Project Description 
This project is a Book Seller Database System built using PostgreSQL. It manages Books, Customers, and Orders data and performs SQL queries for business analysis, such as customer spending, sales analysis, and inventory tracking.

This project is suitable for:

SQL Practice

Data Analyst Portfolio

Interview Preparation

Beginner to Intermediate PostgreSQL Learning
🗂️ Database Schema
📘 Books Table

Stores information about books available in the store.

CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Genre VARCHAR(100),
    Published_Year INT,
    Price DECIMAL(10,2),
    Stock INT
);

👤 Customers Table

Stores customer details.

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    City VARCHAR(100),
    Country VARCHAR(100)
);

🛒 Orders Table

Stores order transaction details.

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Book_ID INT,
    Order_Date DATE,
    Quantity INT,
    Total_Amount DECIMAL(10,2)
);

🔗 Relationships

Customers.Customer_ID → Orders.Customer_ID

Books.Book_ID → Orders.Book_ID

🚀 Features

Well-structured relational database

Uses DECIMAL for accurate financial calculations

PostgreSQL compatible

Beginner-friendly & interview-ready queries

Easy to extend with more analytics

🛠️ Tools & Technologies

PostgreSQL

pgAdmin 4

SQL

📁 Project Files
📂 Book-Seller-SQL-Project
 ┣ 📄 README.md
 ┣ 📄 bookseller.sql
 ┣ 📄 Books.csv
 ┣ 📄 Customers.csv
 ┗ 📄 Orders.csv

🎯 Use Cases

Sales analysis

Customer behavior analysis

Inventory management

SQL interview practice

👨‍💻 Author

Krishna Kumar Gautam
📍 India
💼 Aspiring Data Analyst | Software Tester
📧 (Add your email if you want)

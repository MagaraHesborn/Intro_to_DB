--create database

CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

--create tables

CREATE TABLE IF NOT EXISTS Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT, 
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE IF NOT EXISTS Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE IF NOT EXISTS Orders(
    orders_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

CREATE TABLE IF NOT EXISTS Order_Details(
    orderdetailid PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE
):
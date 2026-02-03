CREATE DATABASE subquery_practice;
USE subquery_practice;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    hire_date DATE,
    dept_id INT,
    manager_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    emp_id INT,
    order_date DATE,
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO departments VALUES
(10, 'HR', 'New York'),
(20, 'Sales', 'Chicago'),
(30, 'IT', 'San Francisco'),
(40, 'Finance', 'New York'),
(50, 'Marketing', 'Boston');

INSERT INTO employees VALUES
(1, 'Amit', 90000, '2018-01-10', 10, NULL),
(2, 'Neha', 60000, '2019-03-15', 10, 1),
(3, 'Rahul', 70000, '2020-06-20', 20, 1),
(4, 'Priya', 120000, '2017-09-25', 20, NULL),
(5, 'Karan', 50000, '2021-02-12', 30, 4),
(6, 'Sneha', 80000, '2019-11-30', 30, 4),
(7, 'Arjun', 110000, '2016-07-05', 40, NULL),
(8, 'Riya', 75000, '2020-01-18', 40, 7),
(9, 'Vikas', 65000, '2022-04-22', 20, 3),
(10, 'Anita', 95000, '2018-08-14', 50, 7);

INSERT INTO customers VALUES
(1, 'Customer A'),
(2, 'Customer B'),
(3, 'Customer C'),
(4, 'Customer D');

INSERT INTO orders VALUES
(101, 1, 3, '2023-01-10', 5000),
(102, 2, 3, '2023-02-15', 7000),
(103, 1, 6, '2023-03-20', 6000),
(104, 3, 8, '2023-04-05', 8000);

INSERT INTO products VALUES
(1, 'Laptop', 70000),
(2, 'Phone', 30000),
(3, 'Tablet', 25000),
(4, 'Monitor', 15000);

INSERT INTO sales VALUES
(1, 1, 2, '2023-01-05'),
(2, 2, 5, '2023-02-10'),
(3, 1, 1, '2023-03-15'),
(4, 3, 3, '2023-04-20');
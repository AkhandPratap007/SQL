-- Creation of user defined database named company and tables such as employees , department,orders 
-- on the basis of this i am completing approx 25 question.


create database company;
use company;

create table employees(
emp_id int primary key,
name Varchar(50),
salary int not null,
dept_id char(2),
order_id char(3) ,
foreign key (dept_id)
references department(dept_id),
foreign key(order_id)
references orders(order_id)
);

create table department(
dept_id char(2) primary key,
department_name varchar(50)
);

create table orders(
order_id char(3) primary key,
total_amt int not null,
order_date timestamp
);

Insert into department(dept_id,department_name)
values('01','DS'),
('02','ML'),
('03','SDE'),
('04','HR');

INSERT INTO orders (order_id, total_amt, order_date)
VALUES
('001', 5000, '2025-01-10 10:30:00'),
('002', 7000, '2025-01-11 12:15:00'),
('003', 6000, '2025-01-12 09:45:00'),
('004', 9000, '2025-01-13 18:20:00');

INSERT INTO employees (emp_id, name, salary, dept_id, order_id)
VALUES
(1,'Akhand',70000,'01','001'),
(2,'Yash',75000,'02','004'),
(3,'Harihar',65000,'03','003'),
(4,'Suresh',15000,'01','002'),
(5,'Ansh',45000,'02','004'),
(6,'Ram',15000,'03','003'),
(7,'Ramesh',25000,'03','002'),
(8,'Anand',85000,'01','004');

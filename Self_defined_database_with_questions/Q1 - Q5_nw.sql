-- Q1) Employees earning more than average salary.

select * 
from employees
where salary > (
                select avg(salary)
                from employees
			);
            
-- Q2) Employee(s) earning the highest salary

select * 
from employees
where salary = (
               select max(salary)
               from employees
               );
               

-- Q3) Employee(s) earning the lowest salary.

select *
from employees
where salary = (
                select min(salary)
                from employees
                );

-- Q4) Employee(s) earning the lowest salary

select * 
from Employees
where dept_id IN (
                    select dept_id
                    from departments
                    where dept_name='Sales'
                    );

-- Q5) Employees whose salary is greater than the maximum salary of department 10
select * 
from employees
where salary > (
                select max(salary)
                from employees
                where dept_id='10'
                );
                
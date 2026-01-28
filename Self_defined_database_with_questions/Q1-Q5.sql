-- First 5 question based on the provided company database.

-- Q.1) Find all employees whose salary is greater than the average salary of all employees.

select emp_id,name,salary
from employees
where salary > (
                select avg(salary)
                from employees
                );


-- Q.2) Find employee(s) who earn the maximum salary in the company.

select emp_id,name,salary
from employees
where salary = (
               select max(salary)
               from employees
               );
               
-- Q.3) Find employee(s) who earn the minimum salary in the company.

Select emp_id,name,salary
from employees
where salary = (
               select min(salary)
               from employees
               );
               
-- Q.4) Find employees whose salary is less than the average salary.

select emp_id,name,salary
from employees
where salary < (
               select avg(salary)
               from employees
               );
               
-- Q.5) Find departments whose number of employees is greater than the average number of employees per department.

select e.dept_id, d.department_name,count(e.emp_id) as Number_of_employees
from employees e
join department d
on e.dept_id = d.dept_id
group by e.dept_id
having count(e.emp_id)>(
               select avg(dept_count)
               from(
                    select count(e.emp_id) as dept_count
                    from employees
                    group by e.dept_id
                      ) as f
               ) 
order by e.dept_id desc; 


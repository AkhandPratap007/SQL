-- Q6) Find the second highest salary
select * 
from employees
where salary < (
           select max(salary)
           from employees
           );
           
 -- Q7) List employees whose department is located in New York

select *
from employees
where dept_id in(
                select dept_id
                from departments
                where location = 'New York'
);          


-- Q8) Employees hired after the earliest hire date

Select * 
from employees
where hire_date > (
                   select min(hire_date)
                   from employees
                   );
                   
-- Q9) Employees whose salary equals the department average

SELECT *
FROM employees e1
WHERE salary = (
    SELECT AVG(salary)
    FROM employees e2
    WHERE e2.dept_id = e1.dept_id
);

-- Q10) Employees whose salary is less than company average

select *
from employees
where salary < (
               select avg(salary)
               from employees
               );

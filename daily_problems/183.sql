-- 183. Customers Who Never Order
-- Write a solution to find all customers who never order anything.
-- Return the result table in any order.
-- The result format is in the following example


-- using joins

 select c.name as Customers
 from Customers c
 left join orders o
 on c.id = o.customerId
 where  o.id is null;

-- using the subqueries

select c.name as Customers
from Customers c
where id Not in(select customerId from orders);
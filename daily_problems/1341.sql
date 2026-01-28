/******************************************************************************
Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
-- 1341. Movie Rating
-- Write a solution to:
-- a) Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
-- b) Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.
-- The result format is in the following example.


# Write your MySQL query statement below
(
select u.name as results 
from
Users u 
join MovieRating m
on u.user_id=m.user_id
group by u.user_id
order by count(*) desc,u.name asc
limit 1
)
union all
(
    select mo.title as results
    from movies mo
    join Movierating m
    on mo.movie_id=m.movie_id
    where m.created_at between '2020-02-01' and '2020-02-29'
    group by m.movie_id
    order by avg(m.rating) desc,mo.title asc
    limit 1
);
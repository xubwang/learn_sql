 -- Q1: Write a SQL query to get the second highest salary from the Employee table.

select ifnull((
  select distinct Salary
  from Employee
  order by Salary desc
  limit 1 offset 1),
  null)
as SecondHighestSalary;

-- Q2: Write a SQL query to rank scores. If there is a tie between two scores, both
-- should have the same ranking. Note that after a tie, the next ranking number
-- should be the next consecutive integer value. In other words, there should be no
-- "holes" between ranks.

select Score, (select count(distinct Score) from Scores where Score >= s.Score)
as Rank
from Scores as s
order by Score desc;
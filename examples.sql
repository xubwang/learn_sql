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


-- Q3: The Employee table holds all employees including their managers. Every employee
-- has an Id, and there is also a column for the manager Id.
-- Given the Employee table, write a SQL query that finds out employees who earn
-- more than their managers. For the above table, Joe is the only employee who
-- earns more than his manager.
select e.Name as Employee
from Employee as e
inner join Employee as m
on e.ManagerId = m.Id
where e.Salary > m.Salary;



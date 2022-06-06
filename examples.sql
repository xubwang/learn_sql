 -- Q1: to get the second highest salary from the Employee table.

select ifnull((
  select distinct Salary
  from Employee
  order by Salary desc
  limit 1 offset 1),
  null)
as SecondHighestSalary;

----
To limit the number of rows returned by a select statement, you use the LIMIT and OFFSET clauses.
The following shows the syntax of LIMIT & OFFSET clauses:
SELECT
    column_list
FROM
    table1
ORDER BY column_list
LIMIT row_count OFFSET offset;

In this syntax:
The LIMIT row_count determines the number of rows (row_count) returned by the query.
The OFFSET offset clause skips the offset rows before beginning to return the rows.

The OFFSET clause is optional. If you omit it, the query will return the row_count rows from the first row returned by the SELECT clause.
When you use the LIMIT clause, it is important to use an ORDER BY clause to ensure the order of rows in the result set.
----
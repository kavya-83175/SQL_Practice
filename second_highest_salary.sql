-- The task is to find the second highest distinct salary from the Employee table.
-- If there is no second highest salary, the query should return NULL.

-- This problem checks understanding of:

-- Aggregate functions

-- Subqueries

-- Handling duplicate values

-- Edge cases in SQL
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

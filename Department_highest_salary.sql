-- Problem Description

-- Given two tables:

-- Employee – contains information about employees including salary and department.

-- Department – contains department information (department ID and name).

-- Write a SQL query to find the employee with the highest salary in each department.
-- If multiple employees have the same highest salary in a department, include all of them.

-- Return the result table with:

-- Department Name

-- Employee Name

-- Salary
/* Write your PL/SQL query statement below */
SELECT d.name AS department,e.name AS employee,salary FROM
Employee e JOIN Department d
ON e.departmentID=d.id
WHERE(departmentID,salary) IN
(SELECT departmentID,MAX(salary) FROM employee
GROUP BY departmentID);

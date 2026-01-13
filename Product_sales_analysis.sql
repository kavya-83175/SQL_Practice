-- Problem Description

-- Given a Sales table recording product sales over years, write a SQL query to find all sales that occurred in the first year each product was sold.

-- For each product_id, identify the earliest year it appears in the Sales table.

-- Return all sales entries for that product in that year.

-- Return columns:

-- product_id

-- first_year (earliest year for that product)

-- quantity

-- price

-- The result can be returned in any order.
/* Write your PL/SQL query statement below */
SELECT product_id,year AS first_year,quantity,price FROM Sales s
WHERE year=(SELECT MIN(year) FROM Sales WHERE product_id=s.product_id);

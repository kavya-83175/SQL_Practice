-- Last Person to Fit in the Bus
-- 🧩 Problem Description

-- You are given a table Queue containing people waiting to board a bus. Each person has:

-- person_id – unique identifier

-- person_name – name of the person

-- weight – weight in kilograms

-- turn – the order in which the person will board the bus (1 = first, n = last)

-- The bus has a weight limit. You need to find the last person who can board the bus without exceeding the weight limit, assuming people board in order of turn.

-- Return the person_id and person_name of this last person.
/* Write your PL/SQL query statement below */
with cte as(
select turn,person_name,weight,
sum(weight) over(order by turn) as running_weight
from Queue),
cte2 as
(select person_name,running_weight from cte
where running_weight<=1000
order by turn DESC)
select person_name from cte2
where running_weight=(select max(running_weight) from cte2);

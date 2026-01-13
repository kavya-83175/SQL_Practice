-- Problem Description

-- Given a table Scores containing game scores, write a SQL query to calculate the rank of each score based on the following rules:

-- Scores are ranked from highest to lowest

-- Tied scores receive the same rank

-- After a tie, the next rank should be the next consecutive integer (no gaps)

-- Return the result ordered by score in descending order
/* Write your PL/SQL query statement below */
select score,
dense_rank() over(order by score desc) as rank
from scores;

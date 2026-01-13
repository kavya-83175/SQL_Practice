-- Problem Description

-- You are given a table RequestAccepted that stores friendship acceptance information:

-- requester_id – ID of the user who sent the request

-- accepter_id – ID of the user who accepted the request

-- accept_date – date the request was accepted

-- The table ensures that (requester_id, accepter_id) is unique.

-- Write a SQL query to find:

-- The person who has the most friends

-- The number of friends they have

-- Assume that friendship is bidirectional: if user A and B are friends, both have 1 friend each.
/* Write your PL/SQL query statement below */
with cte as(
select requester_id as id from RequestAccepted
union all
select accepter_id as id from RequestAccepted
),
cte2 as(
select id,count(*) as num from cte
group by id
)
select * from cte2 where num=(select max(num) from cte2);

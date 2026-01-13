-- Problem Description

-- You are given two tables:

-- Users – contains user information

-- id – unique user ID

-- name – user name

-- Rides – contains ride information

-- id – unique ride ID

-- user_id – the ID of the user who took the ride

-- distance – distance traveled in that ride

-- Write a SQL query to calculate the total distance traveled by each user.

-- Order the result by:

-- travelled_distance descending

-- name ascending (for ties)
/* Write your PL/SQL query statement below */
select  u.name,sum(case when distance is null then 0 else distance end) as travelled_distance from 
users u left join rides r
on u.id=r.user_id
group by u.id,u.name
order by travelled_distance desc,u.name asc;

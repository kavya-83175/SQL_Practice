-- Problem Description

-- You are given a table Tree that represents a tree structure with parent-child relationships:

-- id – unique identifier of the node

-- p_id – parent node id (NULL for the root)

-- Each node in the tree should be classified as:

-- "Root" – the root node (p_id IS NULL)

-- "Leaf" – a node with no children

-- "Inner" – a node that is neither root nor leaf

-- Write a SQL query to report the type of each node.
-- The result can be returned in any order.
/* Write your PL/SQL query statement below */
SELECT id,
CASE
WHEN p_id IS NULL THEN 'Root'
WHEN id IN(SELECT p_id FROM Tree) THEN 'Inner'
ELSE 'Leaf'
END AS type
FROM tree;

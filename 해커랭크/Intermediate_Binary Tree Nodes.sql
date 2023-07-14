-- 문제
-- Write a query to find the node type of Binary Tree ordered by the value of the node.
-- 'Root', 'Inner', 'Leaf' 노드를 구분하라

SELECT N
     , CASE WHEN P IS NULL THEN 'Root'
            WHEN N IN (SELECT DISTINCT P FROM BST) THEN 'Inner'
            ELSE 'Leaf'
        END
FROM BST
ORDER BY N;
/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select n, 
(case when p is null then 'Root'
when n in (select p from bst)then 'Inner'
else 'Leaf' end) as Solution
from bst
order by n

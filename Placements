You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

with salary_of_friend as (
select ff.friend_id, pp.salary
    from friends ff join packages pp on ff.friend_id = pp.id
)

select s1.name
from students s1 join 
friends f1 on s1.id = f1.id
join packages p1 on p1.id = f1.id
join salary_of_friend on f1.friend_id = salary_of_friend.friend_id

where salary_of_friend.salary > p1.salary
order by salary_of_friend.salary

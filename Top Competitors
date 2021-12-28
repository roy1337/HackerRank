Top Competitors

ulia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.


/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

with counting as ( 
select hh.hacker_id, hh.name, 
sum(case when df.score = sm.score then 1 else 0 end) as counter
from hackers hh join submissions sm on hh.hacker_id = sm.hacker_id 
join challenges ch on ch.challenge_id = sm.challenge_id
join difficulty df on df.difficulty_level = ch.difficulty_level
    group by hh.hacker_id, hh.name
    ) 
    select hacker_id,name from counting
    where counter > 1
    order by counter desc, hacker_id

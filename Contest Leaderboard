Contest Leaderboard
You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of  from your result.



The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker. 

Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge for which the submission belongs to, and score is the score



with cte as (
select hh.hacker_id,hh.name,max(ss.score)as max_score,challenge_id
from hackers hh join submissions ss 
on hh.hacker_id = ss.hacker_id
group by hh.hacker_id,hh.name,challenge_id
),
sum_cte as (
select hacker_id, sum(max_score)as final_score
from cte
group by hacker_id
)

select distinct cte.hacker_id, cte.name, final_score
from sum_cte join cte on sum_cte.hacker_id = cte.hacker_id
where final_score <> 0
order by final_score desc, cte.hacker_id

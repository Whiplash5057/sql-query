-- SELECT 
-- (CASE g.grade>=8 WHEN TRUE THEN s.name ELSE null END),
-- g.grade,s.marks FROM students s
-- INNER JOIN grades g ON s.marks BETWEEN min_mark AND max_mark
--  ORDER BY g.grade DESC,s.name,s.marks;


-- SELECT HACKERS.HACKER_ID, HACKERS.NAME  FROM HACKERS
--     JOIN SUBMISSIONS
--         ON HACKERS.HACKER_ID = SUBMISSIONS.HACKER_ID
--     JOIN CHALLENGES
--         ON SUBMISSIONS.CHALLENGE_ID = CHALLENGES.CHALLENGE_ID
--     JOIN DIFFICULTY
--         ON CHALLENGES.DIFFICULTY_LEVEL = DIFFICULTY.DIFFICULTY_LEVEL
--     WHERE SUBMISSIONS.SCORE = DIFFICULTY.SCORE
--     GROUP BY HACKERS.HACKER_ID, HACKERS.NAME
--     HAVING COUNT(HACKERS.HACKER_ID) > 1
--     ORDER BY COUNT(HACKERS.HACKER_ID) DESC, HACKERS.HACKER_ID ASC;


-- select a.id, b.age, a.coins_needed, a.power from Wands a inner join Wands_Property b on a.code=b.code where b.is_evil!=1 and a.coins_needed=(select min(Wands.coins_needed) from Wands inner join Wands_Property on Wands.code=Wands_Property.code where Wands_Property.age=b.age and Wands.power=a.power) order by a.power desc,b.age desc


-- /* these are the columns we want to output */
-- select c.hacker_id, h.name ,count(c.hacker_id) as c_count

-- /* this is the join we want to output them from */
-- from Hackers as h
--     inner join Challenges as c on c.hacker_id = h.hacker_id

-- /* after they have been grouped by hacker */
-- group by c.hacker_id

-- /* but we want to be selective about which hackers we output */
-- /* having is required (instead of where) for filtering on groups */
-- having 

--     /* output anyone with a count that is equal to... */
--     c_count = 
--         /* the max count that anyone has */
--         (SELECT MAX(temp1.cnt)
--         from (SELECT COUNT(hacker_id) as cnt
--              from Challenges
--              group by hacker_id
--              order by hacker_id) temp1)

--     /* or anyone who's count is in... */
--     or c_count in 
--         /* the set of counts... */
--         (select t.cnt
--          from (select count(*) as cnt 
--                from challenges
--                group by hacker_id) t
--          /* who's group of counts... */
--          group by t.cnt
--          /* has only one element */
--          having count(t.cnt) = 1)

-- /* finally, the order the rows should be output */
-- order by c_count DESC, c.hacker_id

-- /* ;) */
-- ;
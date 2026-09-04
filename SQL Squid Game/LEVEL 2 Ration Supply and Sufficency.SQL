'''
link: https://datalemur.com/sql-game/level2.html

The organizers need to calculate how many food portions to withhold to create the right amount of tension. 
In a table, calculate how many rations would feed 90% of the remaining(alive) non-insider players (rounded down), 
and in another column, indicate if the current rations supply is sufficient. (True or False)


'''
---select * from player

'''
id	first_name	last_name	age	status	debt	isinsider
1	Luigi	Mangione	27	alive	3930975804	false
2	Seokjin	Nam	68	alive	684587725	false
3	Chiho	Dae	54	alive	983907316	false
4	Joonho	Choi	53	alive	1926314889	false
5	Seokjin	Jung	23	alive	1853575930	false
6	Taehyung	Yu	84	alive	1262497885	false
7	Yong-sik	Park	32	alive	800000000	false
8	Hyejin	Bi	35	alive	1213517404	false
9	Jian	Shin	20	alive	768884262	false
10	Harin	Kang	23	alive	1170204113	false
11	Harin	Choi	37	dead	1001282738	false


'''

---select * from rations
'''
amount
399

'''

-- My Solution
SELECT 
    FLOOR( COUNT(*) * 0.9 ) AS RATIONSUPPLY
    CASE
        WHEN (SELECT amount FROM rations) >= FLOOR( COUNT(*) * 0.9)
            THEN 'True'
            ELSE 'False'
        END AS SUFFICENTRATION
FROM player
WHERE status ='alive'
AND isinsider = 'false'


-- Thier Solution 
SELECT 
    FLOOR(COUNT(*) * 0.90) AS "Needed rations",
    FLOOR(COUNT(*) * 0.90) <= (SELECT amount FROM rations) AS "Has enough rations"
FROM player 
WHERE status = 'alive' 
AND IsInsider IS FALSE;



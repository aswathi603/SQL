'''

Link :    https://datalemur.com/sql-game/level1.html


Your first challenge begins now:
The organizers want to identify vulnerable living players who might be easily manipulated for the next game. 
Find all players who are alive, in severe debt (debt > 400,000,000 won), and are either elderly 
(age > 65) OR have a vice of Gambling with no family connections.


id	first_name	last_name	age	status	debt	vice	has_close_family
1	Luigi	Mangione	27	alive	3930975804	Healthcare	false
2	Seokjin	Nam	68	alive	684587725	Negative thinking	false
3	Chiho	Dae	54	alive	983907316	Gossiping	true
4	Joonho	Choi	53	alive	1926314889	Procrastination	false
5	Seokjin	Jung	23	alive	1853575930	Bad discipline	false
6	Taehyung	Yu	84	alive	1262497885	Procrastination	false
7	Yong-sik	Park	32	alive	800000000	Gambling	true
8	Hyejin	Bi	35	alive	1213517404	Overeating	false
9	Jian	Shin	20	alive	768884262	Overeating	false
10	Harin	Kang	23	alive	1170204113	Screen addiction	false
11	Harin	Choi	37	dead	1001282738	Negative thinking	false
12	Jian	Bi	31	alive	1507095186	Procrastination	false
13	Kyungsoo	Lee	44	alive	1348612834	Impulsiveness	true
14	Kyungsoo	Bi	27	alive	477604041	Smoking	false
15	Iseo	Dae	32	alive	1245211809	Bad discipline	false
16	Chiho	Bi	66	dead	441138770	Bad discipline	true
17	Taehyung	Yu	71	alive	864049939	Smoking	true
18	Arin	Han	33	alive	836990891	Road rage	true
19	Jiwoo	Oh	52	alive	433382411	Negative thinking	true
20	Sua	Han	61	alive	786951272	Screen addiction	false

'''

Select * from player
where status = 'alive'
and debt > 400000000
    and( 
        age > 65 or 
        ( vice = 'gambling' 
        and has_close_family is false) 
    );


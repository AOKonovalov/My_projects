WITH cohort AS (
	SELECT 	userId,
			eventName,
	-- делим пользователей на когорты: 
	-- для каждого пользователя находим сколько недель проходит от первой даты в данных до момента регистрации данного пользователя
			FLOOR(EXTRACT(epoch FROM (MIN(time) FILTER(WHERE eventName = 'register') OVER(PARTITION BY userId ORDER BY time) 
									- FIRST_VALUE(time) OVER()))/86400/7)+1 AS week,
			time::date AS dt, product,
		-- находим сколько недель проходит с регистрации до других действий пользователя
			floor(EXTRACT(epoch FROM time - MIN(time) FILTER(WHERE eventName = 'register') OVER(PARTITION BY userId))/86400/7)+1 AS week_from_reg
	FROM 	user_data
	ORDER BY week, userId, week_from_reg)


-- для каждой недели находим количество зарегистрированных пользователей
-- и находим retention того, сколько людей скачало приложение в первую неделю после регистрации
SELECT 	week, 
		COUNT(DISTINCT userId) AS users, 
	   	round((COUNT(DISTINCT userId) FILTER(WHERE eventName = 'download' and week_from_reg = 1) 
	   				/ COUNT(DISTINCT userId)::decimal)*100, 2) AS CR, 
		COUNT(user_id) FILTER(WHERE eventName = 'download')            
FROM 	cohort
GROUP BY week
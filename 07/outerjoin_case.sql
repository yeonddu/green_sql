USE sqldb;

SELECT u.userID, u.userName, SUM(price*amount) AS '총구매액',
	case
	when (SUM(price*amount) >= 1500) then	'최우수고객'
	when (SUM(price*amount) >= 1000) then '우수고객'
	when (SUM(price*amount) >= 1) then '일반고객'
	ELSE '유령고객'
	END AS '고객등급'
FROM buytbl B
RIGHT OUTER JOIN usertbl u	ON b.userID = u.userID
GROUP BY u.userID, u.userName
ORDER BY SUM(price*amount) DESC;
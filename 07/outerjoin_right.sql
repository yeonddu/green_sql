USE sqldb;
SELECT userID, SUM(price*amount) AS '총구매액' 
FROM buytbl GROUP BY userID ORDER BY SUM(price*amount) DESC;

SELECT b.userID, u.userName, SUM(price*amount) AS '총구매액'
FROM buytbl b
INNER JOIN usertbl u ON b.userID = u.userID
GROUP BY b.userID, u.userName ORDER BY SUM(price*amount) DESC;

SELECT b. userID, u.userName, SUM(price*amount) AS '총구매액'
FROM buytbl b
RIGHT OUTER JOIN usertbl u ON b.userID = u.userID
GROUP BY b.userID, u.userName ORDER BY SUM(price*amount) DESC;

SELECT u.userID, u.userName, SUM(price*amount) AS '총구매액'
FROM buytbl b 
RIGHT OUTER JOIN usertbl u ON b.userID = u.userID
GROUP BY u.userID, u.userName ORDER BY SUM(price*amount) DESC;
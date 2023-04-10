USE sqldb;
SELECT distinct U.userID, U.userName, U.addr
FROM usertbl U
INNER JOIN buytbl B ON U.userID = B.userID
ORDER BY U.userID;
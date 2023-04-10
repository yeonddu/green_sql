use sqldb;
SELECT c.clubName, c.roomNo, s.stdName, s.addr
FROM stdtbl s
INNER JOIN stdclubtbl sc ON sc.stdName = s.stdName
INNER JOIN clubtbl c ON sc.clubName = c.clubName
ORDER BY c.clubName;
SELECT s.stdName, s.addr, c.clubName,c.roomNo
FROM stdtbl s
INNER JOIN stdclubtbl sc ON s.stdName = sc.stdName
INNER JOIN clubtbl c ON sc.clubName = c.clubName
ORDER BY s.stdName;
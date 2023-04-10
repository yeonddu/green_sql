SELECT s.stdName, s.addr, c.clubName, c.roomNo
FROM stdtbl s
LEFT OUTER JOIN stdclubtbl sc
ON s.stdName = sc.stdName
LEFT OUTER JOIN clubtbl c
ON sc.clubName = c.clubName
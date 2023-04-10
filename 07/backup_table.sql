USE sqldb;
CREATE TABLE backup_userTbl
(userID CHAR(8) NOT NULL PRIMARY KEY,
NAME VARCHAR(10) NOT NULL,
birthYear INT NOT NULL,
addr CHAR(2) NOT NULL,
mobile1 CHAR(3),
mobile2 CHAR(4),
mobile3 CHAR(4),
height SMALLINT,
mDate DATE,
modType CHAR(2), -- 변경된 타입, '수정' 또는 '삭제'
modDate DATE, -- 변경된 날짜
modUser VARCHAR(256) -- 변경한 사용자
);
USE sqldb;
SELECT CAST(avg(amount) AS SIGNED INTEGER) AS '평균 구매 개수' FROM buytbl;
SELECT CONVERT(AVG(amount) AS SIGNED INTEGER) AS '평균 구매 개수' FROM buytbl;
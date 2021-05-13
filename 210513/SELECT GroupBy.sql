-- GROUP BY
-- userID 별로 물건 몇개 샀는지 조회
-- Groupby는 집계함수 없이 절대 쓸수없다
SELECT userID, SUM(amount) AS '총구매개수' FROM buyTbl 
 GROUP BY userID   -- Group by에는 *이 안들어감

 -- 우리 쇼핑몰에서 가장 돈 많이 쓴 사람을 
 -- 아이디별로 조회하고 총구매액을 출력하라
SELECT userID, SUM(price*amount) AS '총구매액' FROM buyTbl 
 GROUP BY userID
 ORDER BY '총구매액' desc


SELECT SUM(price*amount) AS '총구매금액' FROM buyTbl;

-- 평균구매금액
SELECT AVG(price) AS [평균구매금액] FROM buyTbl


SELECT * FROM userTbl
 Order by height desc
-- 사용자테이블에서 키가 가장큰사람하고 가장 작은사람
SELECT name,height FROM userTbl
 WHERE height = (SELECT MAX(height)FROM userTbl)
    OR height = (SELECT MIN(height)FROM userTbl)

SELECT prodName,price FROM buyTbl
 WHERE price = (SELECT MAX(price)FROM buyTbl)
    OR price = (SELECT MIN(price)FROM buyTbl)

SELECT name AS '이름', height AS '신장' FROM userTbl


-- Group BY / HAVING (230pg)
-- Vip만 보고 싶다 (1000달러 이상쓴사람)
SELECT userID AS '사용자아이디'         
     , SUM(price * amount) AS '총구매금액' 
  FROM buyTbl
--WHERE SUM(price * amount) > 1000      //절대불가
 GROUP BY userID
HAVING SUM(price*amount) >= 1000


-- 통계
-- 제품그룹별로 사용자가 얼마만큼 구매를 했는지 조회
SELECT groupName 
     , userID
     , SUM(price * amount) AS '총구매금액' 
  FROM buyTbl
 GROUP BY userID, groupName

SELECT groupName 
     , SUM(price * amount) AS '총구매금액' 
  FROM buyTbl
 GROUP BY ROllup (groupName)

 SELECT groupName 
      , userID
      , SUM(price * amount) AS '총구매금액' 
   FROM buyTbl
  GROUP BY Cube (groupName, userID)

 SELECT groupName 
      , SUM(price * amount) AS '총구매금액' 
	  , GROUPING_ID(groupName) AS '추가'
   FROM buyTbl
  GROUP BY ROllup (groupName)
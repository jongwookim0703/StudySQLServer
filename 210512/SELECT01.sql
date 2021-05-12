USE sqlDB
GO

  SELECT * FROM userTbl
   WHERE userID = 'KKH';

 --사용자 테이블에서 출생년도가 1970에서 1980사이
 --이고 키가 180 이상인 사람을 조회
  SELECT * FROM userTbl
   WHERE birthYear >= 1970 AND birthYear <= 1980
   AND height > 180;

 --출생년도가 1970년 이후 이거나 키가 182 이상인 사람조회
  SELECT * FROM userTbl
   WHERE birthYear > 1970 OR height >=182;

  SELECT * FROM userTbl
   WHERE birthYear BETWEEN 1970 AND 1980
     AND height >= 180

-- 사용자 중에 address가 경남, 전남, 경북인 사람만 조회
  SELECT name, userID ,addr FROM userTbl
   WHERE addr = '경남' OR addr = '전남' OR addr = '경북';
   
  SELECT name, userID ,addr FROM userTbl
   WHERE addr IN ('경남', '전남', '경북')

-- LIKE 절 (문자열에서 속하는 문자열이 있는 (contain) )
  SELECT name, height, addr FROM userTbl
   WHERE name LIKE '김______'
  
  SELECT name, height, addr FROM userTbl
   WHERE name LIKE '%용%'

-- SubQuery
-- 키가 175보다 큰사람들 조회
  SELECT * FROM userTbl
   WHERE height >= 175 

-- 김경호보다 키가 큰 사람을 조회
  SELECT * FROM userTbl
   WHERE height > (SELECT height FROM userTbl WHERE name = '김경호');

-- 경남에 사는 사람들보다 키가 큰 사람들 조회
  SELECT * FROM userTbl
   WHERE height > ANY (SELECT height FROM userTbl WHERE addr = '경남');

 -- (=ANY) == (IN) 은 서브쿼리에서 나온 결과와 일치하는 결과만 조회
  SELECT * FROM userTbl
   WHERE height =ANY (SELECT height FROM userTbl WHERE addr = '경남');

  SELECT * FROM userTbl
   WHERE height IN (SELECT height FROM userTbl WHERE addr = '경남');

 -- ORDERBY
  SELECT * FROM userTbl
   ORDER BY birthYear desc
 -- 두개 써보기 : mobile1으로 오름차순 뒤 mobile1이 같은값이면 이름으로 내림차순 
  SELECT * FROM userTbl
   ORDER BY mobile1 ASC, name DESC

 -- userTbl에 몇개의 데이터(레코드)가 있는지 확인
  SELECT COUNT(*) FROM userTbl;
  SELECT COUNT(*) FROM buyTbl;

 -- DISTINCT (중복제거)
  SELECT DISTINCT addr FROM userTbl

 -- TOP
     USE AdventureWorksLT2019;
      Go

  SELECT TOP 10 PERCENT  * 
    FROM SalesLT.Customer
   ORDER BY CustomerID aSC;

 -- 10퍼센트 샘플링결과 조회
  SELECT * FROM SalesLT.Customer
  TABLESAMPLE(10 PERCENT);

  SELECT * FROM SalesLT.Customer
   ORDER BY FirstName
  OFFSET 5 ROW
   FETCH NEXT 3 ROWS ONLY;  --프로시저/함수
-- 형 변환
-- CAST (많이씀)
SELECT CAST( AVG(CAST(amount AS float)) AS DECIMAL(7,5)) FROM buyTbl

-- CONVERT
SELECT AVG(CONVERT(float, amount)) FROM buytbl
-- PARSE
SELECT PARSE('3' AS INT)           -- 예외발생하면 쿼리가 비정상종료
-- TRY_PARSE
SELECT TRY_PARSE('3.14' AS INT)    -- 값 변환못하면 NULL값 대체 정상적 수행

-- height 가 원래 smallint 이기 때문에 varchar로 형 변환
-- NULL값은 =(이꼴)로 비교하지 않고
-- IS(같다) / IS NOT(같지않다)    로 비교
SELECT name, cast(height as varchar) +' cm' FROM userTbl
 WHERE height is not NULL 

  -- YYYY-MM-DD HH:mm:ss
 SELECT PARSE('2021-05-14 10:27:10' AS DATE) --제일 많이씀
 SELECT PARSE('2021년 5월 14일 10시 27분' AS DATE)
 SELECT PARSE('2021년 5월 14일 10시 27분' AS DATETIME)

 --날짜 및 시간함수
 SELECT GETDATE()  --Insert 현재 년월일시분초 제일 많이씀
 SELECT YEAR(GETDATE()) AS '현재 년도'
 SELECT MONTH(GETDATE()) AS '현재 월'
 SELECT DAY(GETDATE()) AS '현재 일'

 -- 수치함수
 SELECT ABS(-100)            -- 절대값
 SELECT ROUND(3.148592, 2)   -- (값, 소수점자리)
 SELECT FLOOR(RAND()*100)    -- 1~100 랜덤숫자

 -- 논리함수
 SELECT IIF(1000>200, '참', '거짓')    -- 중요
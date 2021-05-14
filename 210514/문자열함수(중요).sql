--  문자열 함수 (중요)
-- 287 ~ 288 pg
SELECT ASCII('+'), CHAR(47)         -- 사용빈도 하
SELECT UNICODE('가'), NCHAR(44035)  -- 사용빈도 하

--  문자열 연결
SELECT CONCAT('SQL ','server ','2019') AS name   -- 사용빈도 상**

--  단어 시작위치
SELECT CHARINDEX('world', 'Hello world!') 
--  C#, java, python 문자열 0부터 시작
--  DB에서는 1부터 시작

-- 중요
--  LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LIRIM, RTRIM
--  LEFT / 왼쪽부터자르기, RIGHT / 오른쪽부터자르기
SELECT LEFT('SQL Server 2019', 3), RIGHT('SQL Server 2019', 4)
--  SQL Server 2019 를 계속 치기 귀찮다? 선언하십쇼
DECLARE @STR VARCHAR(20)
SET @STR = 'SQL Server 2019'
SELECT LEFT (@STR, 3), RIGHT(@STR, 4)

--  SUBSTRING / 5번째 문자부터 2개 셀렉
SELECT SUBSTRING('대한민국만세!', 5, 2)     

--  LEN / 글자길이수세기
SELECT LEN('Hello World')
SELECT LEN('대한민국만세!')

--  LOWER / 소문자출력,  UPPER / 대문자출력
SELECT LOWER('hEllo World!'), UPPER('hEllo World!')

--  LTRIM / 왼쪽space제거 (중), RTRIM / 오른쪽space제거 (중), TRIM / 둘다제거 (상)
SELECT LTRIM('     SQL      '), RTRIM('     SQL     '), TRIM('     SQL     ')

--  REPLACE 사용빈도 최상** / 
SELECT REPLACE('SQL Server 2019 Server만세', 'Server', '서버')

--  STR 사용빈도 하  / 숫자를 문자로 변환  
SELECT STR(3.141592)
SELECT STR(42)

--  FORMAT 사용빈도 상
SELECT GETDATE()
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss')  -- 한국식
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss')  -- 미국식
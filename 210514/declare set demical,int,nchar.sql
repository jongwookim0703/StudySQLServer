-- 프로그래밍 시작
DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2)   -- 총 5자리, 소수점 2자리
DECLARE @myVar3 NCHAR(20)
DECLARE @inchUnit Decimal (4,3)

SET @myVar1 = 5000
SET @myVar2 = 323.12
SET @myVar3 = '가수 이름 ==> '
SET @inchUnit = 0.393

SELECT @myVar1, @myVar2

SELECT @myvar3 AS 'what', name From userTbl 
 WHERE height > 180

SELECT name, height * @inchUnit FROM userTbl
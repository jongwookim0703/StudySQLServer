-- ���α׷��� ����
DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2)   -- �� 5�ڸ�, �Ҽ��� 2�ڸ�
DECLARE @myVar3 NCHAR(20)
DECLARE @inchUnit Decimal (4,3)

SET @myVar1 = 5000
SET @myVar2 = 323.12
SET @myVar3 = '���� �̸� ==> '
SET @inchUnit = 0.393

SELECT @myVar1, @myVar2

SELECT @myvar3 AS 'what', name From userTbl 
 WHERE height > 180

SELECT name, height * @inchUnit FROM userTbl
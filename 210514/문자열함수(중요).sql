--  ���ڿ� �Լ� (�߿�)
-- 287 ~ 288 pg
SELECT ASCII('+'), CHAR(47)         -- ���� ��
SELECT UNICODE('��'), NCHAR(44035)  -- ���� ��

--  ���ڿ� ����
SELECT CONCAT('SQL ','server ','2019') AS name   -- ���� ��**

--  �ܾ� ������ġ
SELECT CHARINDEX('world', 'Hello world!') 
--  C#, java, python ���ڿ� 0���� ����
--  DB������ 1���� ����

-- �߿�
--  LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LIRIM, RTRIM
--  LEFT / ���ʺ����ڸ���, RIGHT / �����ʺ����ڸ���
SELECT LEFT('SQL Server 2019', 3), RIGHT('SQL Server 2019', 4)
--  SQL Server 2019 �� ��� ġ�� ������? �����Ͻʼ�
DECLARE @STR VARCHAR(20)
SET @STR = 'SQL Server 2019'
SELECT LEFT (@STR, 3), RIGHT(@STR, 4)

--  SUBSTRING / 5��° ���ں��� 2�� ����
SELECT SUBSTRING('���ѹα�����!', 5, 2)     

--  LEN / ���ڱ��̼�����
SELECT LEN('Hello World')
SELECT LEN('���ѹα�����!')

--  LOWER / �ҹ������,  UPPER / �빮�����
SELECT LOWER('hEllo World!'), UPPER('hEllo World!')

--  LTRIM / ����space���� (��), RTRIM / ������space���� (��), TRIM / �Ѵ����� (��)
SELECT LTRIM('     SQL      '), RTRIM('     SQL     '), TRIM('     SQL     ')

--  REPLACE ���� �ֻ�** / 
SELECT REPLACE('SQL Server 2019 Server����', 'Server', '����')

--  STR ���� ��  / ���ڸ� ���ڷ� ��ȯ  
SELECT STR(3.141592)
SELECT STR(42)

--  FORMAT ���� ��
SELECT GETDATE()
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss')  -- �ѱ���
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss')  -- �̱���
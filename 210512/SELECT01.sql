USE sqlDB
GO

  SELECT * FROM userTbl
   WHERE userID = 'KKH';

 --����� ���̺��� ����⵵�� 1970���� 1980����
 --�̰� Ű�� 180 �̻��� ����� ��ȸ
  SELECT * FROM userTbl
   WHERE birthYear >= 1970 AND birthYear <= 1980
   AND height > 180;

 --����⵵�� 1970�� ���� �̰ų� Ű�� 182 �̻��� �����ȸ
  SELECT * FROM userTbl
   WHERE birthYear > 1970 OR height >=182;

  SELECT * FROM userTbl
   WHERE birthYear BETWEEN 1970 AND 1980
     AND height >= 180

-- ����� �߿� address�� �泲, ����, ����� ����� ��ȸ
  SELECT name, userID ,addr FROM userTbl
   WHERE addr = '�泲' OR addr = '����' OR addr = '���';
   
  SELECT name, userID ,addr FROM userTbl
   WHERE addr IN ('�泲', '����', '���')

-- LIKE �� (���ڿ����� ���ϴ� ���ڿ��� �ִ� (contain) )
  SELECT name, height, addr FROM userTbl
   WHERE name LIKE '��______'
  
  SELECT name, height, addr FROM userTbl
   WHERE name LIKE '%��%'

-- SubQuery
-- Ű�� 175���� ū����� ��ȸ
  SELECT * FROM userTbl
   WHERE height >= 175 

-- ���ȣ���� Ű�� ū ����� ��ȸ
  SELECT * FROM userTbl
   WHERE height > (SELECT height FROM userTbl WHERE name = '���ȣ');

-- �泲�� ��� ����麸�� Ű�� ū ����� ��ȸ
  SELECT * FROM userTbl
   WHERE height > ANY (SELECT height FROM userTbl WHERE addr = '�泲');

 -- (=ANY) == (IN) �� ������������ ���� ����� ��ġ�ϴ� ����� ��ȸ
  SELECT * FROM userTbl
   WHERE height =ANY (SELECT height FROM userTbl WHERE addr = '�泲');

  SELECT * FROM userTbl
   WHERE height IN (SELECT height FROM userTbl WHERE addr = '�泲');

 -- ORDERBY
  SELECT * FROM userTbl
   ORDER BY birthYear desc
 -- �ΰ� �Ẹ�� : mobile1���� �������� �� mobile1�� �������̸� �̸����� �������� 
  SELECT * FROM userTbl
   ORDER BY mobile1 ASC, name DESC

 -- userTbl�� ��� ������(���ڵ�)�� �ִ��� Ȯ��
  SELECT COUNT(*) FROM userTbl;
  SELECT COUNT(*) FROM buyTbl;

 -- DISTINCT (�ߺ�����)
  SELECT DISTINCT addr FROM userTbl

 -- TOP
     USE AdventureWorksLT2019;
      Go

  SELECT TOP 10 PERCENT  * 
    FROM SalesLT.Customer
   ORDER BY CustomerID aSC;

 -- 10�ۼ�Ʈ ���ø���� ��ȸ
  SELECT * FROM SalesLT.Customer
  TABLESAMPLE(10 PERCENT);

  SELECT * FROM SalesLT.Customer
   ORDER BY FirstName
  OFFSET 5 ROW
   FETCH NEXT 3 ROWS ONLY;  --���ν���/�Լ�
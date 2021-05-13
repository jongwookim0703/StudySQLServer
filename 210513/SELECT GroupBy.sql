-- GROUP BY
-- userID ���� ���� � ����� ��ȸ
-- Groupby�� �����Լ� ���� ���� ��������
SELECT userID, SUM(amount) AS '�ѱ��Ű���' FROM buyTbl 
 GROUP BY userID   -- Group by���� *�� �ȵ�

 -- �츮 ���θ����� ���� �� ���� �� ����� 
 -- ���̵𺰷� ��ȸ�ϰ� �ѱ��ž��� ����϶�
SELECT userID, SUM(price*amount) AS '�ѱ��ž�' FROM buyTbl 
 GROUP BY userID
 ORDER BY '�ѱ��ž�' desc


SELECT SUM(price*amount) AS '�ѱ��űݾ�' FROM buyTbl;

-- ��ձ��űݾ�
SELECT AVG(price) AS [��ձ��űݾ�] FROM buyTbl


SELECT * FROM userTbl
 Order by height desc
-- ��������̺��� Ű�� ����ū����ϰ� ���� �������
SELECT name,height FROM userTbl
 WHERE height = (SELECT MAX(height)FROM userTbl)
    OR height = (SELECT MIN(height)FROM userTbl)

SELECT prodName,price FROM buyTbl
 WHERE price = (SELECT MAX(price)FROM buyTbl)
    OR price = (SELECT MIN(price)FROM buyTbl)

SELECT name AS '�̸�', height AS '����' FROM userTbl


-- Group BY / HAVING (230pg)
-- Vip�� ���� �ʹ� (1000�޷� �̻󾴻��)
SELECT userID AS '����ھ��̵�'         
     , SUM(price * amount) AS '�ѱ��űݾ�' 
  FROM buyTbl
--WHERE SUM(price * amount) > 1000      //����Ұ�
 GROUP BY userID
HAVING SUM(price*amount) >= 1000


-- ���
-- ��ǰ�׷캰�� ����ڰ� �󸶸�ŭ ���Ÿ� �ߴ��� ��ȸ
SELECT groupName 
     , userID
     , SUM(price * amount) AS '�ѱ��űݾ�' 
  FROM buyTbl
 GROUP BY userID, groupName

SELECT groupName 
     , SUM(price * amount) AS '�ѱ��űݾ�' 
  FROM buyTbl
 GROUP BY ROllup (groupName)

 SELECT groupName 
      , userID
      , SUM(price * amount) AS '�ѱ��űݾ�' 
   FROM buyTbl
  GROUP BY Cube (groupName, userID)

 SELECT groupName 
      , SUM(price * amount) AS '�ѱ��űݾ�' 
	  , GROUPING_ID(groupName) AS '�߰�'
   FROM buyTbl
  GROUP BY ROllup (groupName)
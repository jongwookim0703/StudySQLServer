-- ���� �Լ�
 --  1. ��ŷ
 SELECT RANK() OVER(ORDER BY height DESC) AS 'Ű����'
       ,name, height, addr
  FROM userTbl
 
 --  2. ��ȣ�� �� ������
 SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS 'Ű����'
       ,name, height, addr
  FROM userTbl
 
 --  3. ��ȣ�� �Ⱥ����������
  SELECT Dense_RANK() OVER(ORDER BY height DESC) AS 'Ű����'
       ,name, height, addr
  FROM userTbl

 --  4. �������� ������ Ű��
 SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS 'Ű����'
       ,name, height, addr
  FROM userTbl

  -- 5. ����
 SELECT RANK() OVER(ORDER BY SUM(price*amount) DESC) AS '���ż���'
        ,userID, SUM(price*amount) AS '����ں����űݾ�'
   FROM buyTbl
  GROUP BY userID
  
  FOR JSON AUTO
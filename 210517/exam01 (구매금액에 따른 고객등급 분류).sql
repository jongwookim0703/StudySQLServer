  -- ������ �ݾ׿� ���� �ֿ��/���/�Ϲ� ������ �з��ϴ� ������ �ۼ��϶�
  WITH cte_custlevel([����ھ��̵�], [ȸ����], [�ѱ��űݾ�], [�����])
  AS
  (
  SELECT u.userID AS '����ھƵ�', u.name AS 'ȸ����'
       , IIF(SUM(price*amount) IS NULL, 0 , SUM(b.price*b.amount))  AS '�ѱ��űݾ�'    -- IIF ���
  
  ,CASE 
	     WHEN SUM(b.price * b.amount) >= 1500 THEN '�ֿ����'
	     WHEN SUM(b.price * b.amount) >= 200 THEN '�����'
	     WHEN SUM(b.price * b.amount) >= 1 THEN '�Ϲݰ�'
		 ELSE '���ɰ�'
	 END AS '�����'  -- ���̹�

	FROM userTbl AS u
    LEFT OUTER JOIN buyTbl AS b
      ON u.userID = b.userID
   GROUP BY u.userID, u.name
 --ORDER BY '�ѱ��űݾ�' DESC     --cte�� �־����� ������ ���ͼ���
  )
   SELECT [����ھ��̵�], [ȸ����], Format([�ѱ��űݾ�], 'C4') AS[�ѱ��űݾ�], [�����] 
     FROM cte_custlevel
    ORDER BY [�ѱ��űݾ�] DESC
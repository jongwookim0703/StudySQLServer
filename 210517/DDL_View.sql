   --    View
   --    view ���� : ���ȿ� ������ �ȴ�
   --              : ������ ������ �ܼ�ȭ
   Create view v_userTbl
   AS
      Select userID, name, addr From userTbl
   GO

   Select userID, name, addr From v_userTbl
   Select * From v_buyTbl

   Create View v_userbuyinfo
   AS
   Select u.userId, u.name, b.prodname, b.price, u.addr, u.birthyear
     FROM userTbl As u
	INNER JOIN buyTbl as b
	   ON u.userId = b.userId
   GO

   -- �ܼ��ϰ� �ڵ带 © �� �ִ�
   Select * From v_userbuyinfo
    ORDER BY price DESC

   -- view����
	DROP View v_userTbl
   --    View
   --    view 장점 : 보안에 도움이 된다
   --              : 복잡한 쿼리를 단순화
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

   -- 단순하게 코드를 짤 수 있다
   Select * From v_userbuyinfo
    ORDER BY price DESC

   -- view삭제
	DROP View v_userTbl
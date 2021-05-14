--  JOIN : INNER JOIN (내부조인)
SELECT * FROM buyTbl
SELECT * FROM userTbl

SELECT u.userID
     , u.name
	 , u.addr
	 , concat(u.mobile1 , u.mobile2) AS MobileNumber
	 , b.num
	 , b.price
	 , b.amount
  FROM userTbl AS u       -- 위에 SELECT에서 계속 userTbl 이라 쓰기 힘들지?
 INNER JOIN buyTbl AS b   -- 별칭사용  userTbl을 u로, buyTbl을 b로
    ON u.userID = b.userID
 WHERE u.userID = 'SSk'
 -- 부모 테이블에서 기본키를 찾아라 중요하다 
 -- 여러번 구매할 수 있기 때문에 
 -- 외래키인 buyTbl에 있는 userID는 중복될 수 있다
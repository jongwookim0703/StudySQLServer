  -- 구매한 금액에 따라서 최우수/우수/일반 고객으로 분류하는 쿼리를 작성하라
  WITH cte_custlevel([사용자아이디], [회원명], [총구매금액], [고객등급])
  AS
  (
  SELECT u.userID AS '사용자아디', u.name AS '회원명'
       , IIF(SUM(price*amount) IS NULL, 0 , SUM(b.price*b.amount))  AS '총구매금액'    -- IIF 사용
  
  ,CASE 
	     WHEN SUM(b.price * b.amount) >= 1500 THEN '최우수고객'
	     WHEN SUM(b.price * b.amount) >= 200 THEN '우수고객'
	     WHEN SUM(b.price * b.amount) >= 1 THEN '일반고객'
		 ELSE '유령고객'
	 END AS '고객등급'  -- 네이밍

	FROM userTbl AS u
    LEFT OUTER JOIN buyTbl AS b
      ON u.userID = b.userID
   GROUP BY u.userID, u.name
 --ORDER BY '총구매금액' DESC     --cte를 넣었을대 에러가 나와서뺌
  )
   SELECT [사용자아이디], [회원명], Format([총구매금액], 'C4') AS[총구매금액], [고객등급] 
     FROM cte_custlevel
    ORDER BY [총구매금액] DESC
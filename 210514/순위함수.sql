-- 순위 함수
 --  1. 랭킹
 SELECT RANK() OVER(ORDER BY height DESC) AS '키순위'
       ,name, height, addr
  FROM userTbl
 
 --  2. 번호가 쭉 내려감
 SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS '키순위'
       ,name, height, addr
  FROM userTbl
 
 --  3. 번호가 안비워지고내려감
  SELECT Dense_RANK() OVER(ORDER BY height DESC) AS '키순위'
       ,name, height, addr
  FROM userTbl

 --  4. 지역별로 나눠서 키순
 SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위'
       ,name, height, addr
  FROM userTbl

  -- 5. 응용
 SELECT RANK() OVER(ORDER BY SUM(price*amount) DESC) AS '구매순위'
        ,userID, SUM(price*amount) AS '사용자별구매금액'
   FROM buyTbl
  GROUP BY userID
  
  FOR JSON AUTO
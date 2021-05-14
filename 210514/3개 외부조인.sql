-- 외부조인 (LEFT OUTER JOIN)
-- 우리 쇼핑몰에서 물건을 한번도 구매하지 않은 회원들을 조회
SELECT u.userID, u.name, u.addr
     , CONCAT(u.mobile1,u.mobile2)AS mobieNumber 
	 , b.prodName 
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.ProdName IS NULL
 ORDER BY u.userID

 -- 외부조인 (RIGHT OUTER JOIN)
SELECT u.userID, u.name, u.addr
     , CONCAT(u.mobile1,u.mobile2)AS mobieNumber 
	 , b.prodName 
  FROM userTbl AS u
 RIGHT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.ProdName IS NULL
 ORDER BY u.userID


 -- 학생 / 동아리 / 가입정보테이블
 -- OUTER jOIN
 SELECT s.StdID,  s.StdName, s.Region, r.clubName, c.ClubName, c.ClubRoom, r.id, r.Stdid, r.RegDate
   FROM StdTbl AS s
   LEFT OUTER JOIN reginfoTbl AS r
     ON s.StdID = r.Stdid
   LEFT OUTER JOIN ClubTbl AS c
     ON c.ClubName = r.clubName

 -- 
 SELECT r.Stdid ,c.ClubName, c.ClubRoom, r.clubName, r.RegDate
   FROM ClubTbl AS c
   RIGHT OUTER JOIN reginfoTbl AS r
     ON c.ClubName = r.clubName

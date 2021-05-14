 --  3개 테이블 내부조인 
 SELECT * FROM StdTbl
 SELECT * FROM ClubTbl

 SELECT s.StdID, s.StdName, s.Region, r.ClubName, c.ClubRoom, r.RegDate
   FROM StdTbl AS s
  INNER JOIN regInfoTbl As r
     ON s.StdID = r.stdID
  INNER JOIN ClubTbl AS c
     ON c.ClubName = r.ClubName

-- �ܺ����� (LEFT OUTER JOIN)
-- �츮 ���θ����� ������ �ѹ��� �������� ���� ȸ������ ��ȸ
SELECT u.userID, u.name, u.addr
     , CONCAT(u.mobile1,u.mobile2)AS mobieNumber 
	 , b.prodName 
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.ProdName IS NULL
 ORDER BY u.userID

 -- �ܺ����� (RIGHT OUTER JOIN)
SELECT u.userID, u.name, u.addr
     , CONCAT(u.mobile1,u.mobile2)AS mobieNumber 
	 , b.prodName 
  FROM userTbl AS u
 RIGHT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.ProdName IS NULL
 ORDER BY u.userID


 -- �л� / ���Ƹ� / �����������̺�
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

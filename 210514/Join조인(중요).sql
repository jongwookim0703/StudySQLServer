--  JOIN : INNER JOIN (��������)
SELECT * FROM buyTbl
SELECT * FROM userTbl

SELECT u.userID
     , u.name
	 , u.addr
	 , concat(u.mobile1 , u.mobile2) AS MobileNumber
	 , b.num
	 , b.price
	 , b.amount
  FROM userTbl AS u       -- ���� SELECT���� ��� userTbl �̶� ���� ������?
 INNER JOIN buyTbl AS b   -- ��Ī���  userTbl�� u��, buyTbl�� b��
    ON u.userID = b.userID
 WHERE u.userID = 'SSk'
 -- �θ� ���̺��� �⺻Ű�� ã�ƶ� �߿��ϴ� 
 -- ������ ������ �� �ֱ� ������ 
 -- �ܷ�Ű�� buyTbl�� �ִ� userID�� �ߺ��� �� �ִ�
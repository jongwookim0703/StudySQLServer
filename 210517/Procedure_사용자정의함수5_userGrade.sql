-- �Է��� ����⵵ ���� ������߿��� ���ŵ�޿� ���� ����� ��ȯ�϶�
Create or Alter Function ufn_userGrade(@bYear int)
	Returns @retTable Table
	( 
		userID varCHAR(8)
	  , name Nchar(10)
	  , grade NVarchar(5)
	)
AS
Begin
	Declare @rowCnt Int
	Select @RowCnt = COUNT(*) From userTbl WHere birthYear >= @bYear

	IF @rowCnt <= 0
	Begin
		Insert Into @retTable Values ('����', '����', '����')
		RETURN
	End
	Else
	Begin
		-- �Է� ����
		Insert Into @retTable
		Select u.userID, u.name, 
		  Case   
		      WHEN SUM(b.price * b.amount) >= 1500 THEN '�ֿ��'
		      WHEN SUM(b.price * b.amount) >= 1000 THEN '���'
		      WHEN SUM(b.price * b.amount) >= 1 THEN '�Ϲ�'
			  ELSE '����'
			  END
		  From userTbl As u
		  LEFT OUTER Join buyTbl As b
		    ON u.userID = b.userID
		 WHERE u.birthYear >= @bYear
		 Group By u.userID, u.name
		 
		Return
	End
	Return
End
GO

--  �Լ�
Select * From dbo.ufn_userGrade(1970)
Select userId, birthyear, dbo.ufn_getAge(birthYear)
  From userTbl
--  �������ν���
Exec usp_users1 '������'
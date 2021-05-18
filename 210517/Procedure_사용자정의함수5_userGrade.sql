-- 입력한 출생년도 이후 사용자중에서 구매등급에 따른 결과를 반환하라
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
		Insert Into @retTable Values ('없음', '없음', '없음')
		RETURN
	End
	Else
	Begin
		-- 입력 구문
		Insert Into @retTable
		Select u.userID, u.name, 
		  Case   
		      WHEN SUM(b.price * b.amount) >= 1500 THEN '최우수'
		      WHEN SUM(b.price * b.amount) >= 1000 THEN '우수'
		      WHEN SUM(b.price * b.amount) >= 1 THEN '일반'
			  ELSE '유령'
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

--  함수
Select * From dbo.ufn_userGrade(1970)
Select userId, birthyear, dbo.ufn_getAge(birthYear)
  From userTbl
--  저장프로시저
Exec usp_users1 '아이유'
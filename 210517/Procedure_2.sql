Create or Alter proc usp_isyoung   -- Alter빼면 에러뜸
	@userName Nvarchar(10)
AS
	Declare @bYear int   --출생년도 저장
	Select @bYear = birthYear from userTbl
     Where name = @userName
	 
	 If (@bYear >= 1980)
	 Begin
		print('아직 젊은이로군')
	 END
	 Else
	 Begin
		print('늙은이로군')
	 END
GO
Exec usp_isyoung '권지용'

Select * From userTbl


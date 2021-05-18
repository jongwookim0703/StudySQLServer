 -- 파라미터(매개변수)
Create proc usp_users1
	@userName NVARCHAR(10)
AS
	--로직
	Select userID,name,birthYear,addr From userTbl
 	 Where name = @userName
GO

EXEC usp_users1 '아이유'

 --  파라미터 2개
Create Proc usp_user2
	@userBirthYear Int,
	@userHeight Int
AS
	select userID,name,birthYear,height,mDate From userTbl
	 Where birthYear >= @userBirthYear
	   AND height >= @userHeight
GO

Exec usp_user2 1980,160

 -- 프로시저 (return)
Create proc usp_user3
	@lastname Nvarchar(2),
	@outCount Int output  -- 결과를 돌려받음(return)
AS
	Select @outCount = Count(*) FRom userTbl
	 Where name Like @lastname + '%'
GO

Declare @myvalue int
Exec usp_user3 '김', @myvalue output;
print concat('김씨 성을 가진사람의 총 수', @myvalue)
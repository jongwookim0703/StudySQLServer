 --  테이블 반환 함수
Create or Alter Function ufn_getUsers(@height int)
	Returns Table
AS
	Return(
		Select * From userTbl    -- 테이블정하기
		 Where height > @height
	)
GO

select * from dbo.ufn_getUsers(180)  --  * 부분이 아니라 테이블 부분을 수정
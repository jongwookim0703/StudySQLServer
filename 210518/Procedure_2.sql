Create or Alter proc usp_isyoung   -- Alter���� ������
	@userName Nvarchar(10)
AS
	Declare @bYear int   --����⵵ ����
	Select @bYear = birthYear from userTbl
     Where name = @userName
	 
	 If (@bYear >= 1980)
	 Begin
		print('���� �����̷α�')
	 END
	 Else
	 Begin
		print('�����̷α�')
	 END
GO
Exec usp_isyoung '������'

Select * From userTbl


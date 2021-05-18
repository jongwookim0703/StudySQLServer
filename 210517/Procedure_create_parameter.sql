 -- �Ķ����(�Ű�����)
Create proc usp_users1
	@userName NVARCHAR(10)
AS
	--����
	Select userID,name,birthYear,addr From userTbl
 	 Where name = @userName
GO

EXEC usp_users1 '������'

 --  �Ķ���� 2��
Create Proc usp_user2
	@userBirthYear Int,
	@userHeight Int
AS
	select userID,name,birthYear,height,mDate From userTbl
	 Where birthYear >= @userBirthYear
	   AND height >= @userHeight
GO

Exec usp_user2 1980,160

 -- ���ν��� (return)
Create proc usp_user3
	@lastname Nvarchar(2),
	@outCount Int output  -- ����� ��������(return)
AS
	Select @outCount = Count(*) FRom userTbl
	 Where name Like @lastname + '%'
GO

Declare @myvalue int
Exec usp_user3 '��', @myvalue output;
print concat('�达 ���� ��������� �� ��', @myvalue)
 --  ���̺� ��ȯ �Լ�
Create or Alter Function ufn_getUsers(@height int)
	Returns Table
AS
	Return(
		Select * From userTbl    -- ���̺����ϱ�
		 Where height > @height
	)
GO

select * from dbo.ufn_getUsers(180)  --  * �κ��� �ƴ϶� ���̺� �κ��� ����
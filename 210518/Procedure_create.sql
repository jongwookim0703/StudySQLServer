-- ���ν��� ����
create proc usp_users
AS
	select userid, name, birthYear,addr from userTbl

EXEC usp_users

 -- �� ����     , 
 -- ���ν����� ���� ����� �������� ���ν����� ������ ������ �����ϴ�
Create view v_users
AS
	Select userId, name, birthYear, addr from userTbl
GO
select * from v_users
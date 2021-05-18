-- 프로시저 생성
create proc usp_users
AS
	select userid, name, birthYear,addr from userTbl

EXEC usp_users

 -- 뷰 생성     , 
 -- 프로시저랑 같은 결과가 나오지만 프로시저는 동적인 수정이 가능하다
Create view v_users
AS
	Select userId, name, birthYear, addr from userTbl
GO
select * from v_users
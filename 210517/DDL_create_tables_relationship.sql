 Create Table userTbl
 (
	userId char(8) Not Null Primary KEy,
	name nvarchar(10) not null,
	birthyear int not null,
	height smallint
 )

 Create Table buyTbl
 (
	number int Not Null Primary Key,
	userID char(8) Not null foreign key references userTbl(userID),  -- 관계맺기 @@
	prodName nchar(6) not null,
	price int not null
 )

 --  userTbl 에 email(유니크제약조건) 추가
 --  buyTbl 데이터 다 삭제, userTbl 데이터 다 삭제
 --  userTbl(email) 컬럼삭제 한뒤, 밑의 쿼리 실행
 ALTER TABLE userTbl
   ADD email varchar(50) Not Null Unique
 
 --  Check 제약조건
 -- Alter Table userTbl
 -- ADD Constraint CK_birthYear
 -- Check (birthYear > 1900 and birthYear < = Year(GetDate()))  --  2021까지

  -- 테이블 생성
  USE sampleDB
  GO

  -- DDL로 테이블 생성
  Create Table ddlTbl
  (
	id int Not Null Primary Key Identity(1,1),
	name Nvarchar(20) Not Null,
	regDate DATETIME
  )
  GO

  -- DDL로 테이블 수정
  ALTER TABLE ddlTbl ADD newColumn Varchar(10) not null

  -- DDL로 테이블 삭제
  Drop Table ddlTbl
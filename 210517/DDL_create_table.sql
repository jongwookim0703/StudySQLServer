  -- ���̺� ����
  USE sampleDB
  GO

  -- DDL�� ���̺� ����
  Create Table ddlTbl
  (
	id int Not Null Primary Key Identity(1,1),
	name Nvarchar(20) Not Null,
	regDate DATETIME
  )
  GO

  -- DDL�� ���̺� ����
  ALTER TABLE ddlTbl ADD newColumn Varchar(10) not null

  -- DDL�� ���̺� ����
  Drop Table ddlTbl
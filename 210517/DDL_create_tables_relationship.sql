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
	userID char(8) Not null foreign key references userTbl(userID),  -- ����α� @@
	prodName nchar(6) not null,
	price int not null
 )

 --  userTbl �� email(����ũ��������) �߰�
 --  buyTbl ������ �� ����, userTbl ������ �� ����
 --  userTbl(email) �÷����� �ѵ�, ���� ���� ����
 ALTER TABLE userTbl
   ADD email varchar(50) Not Null Unique
 
 --  Check ��������
 -- Alter Table userTbl
 -- ADD Constraint CK_birthYear
 -- Check (birthYear > 1900 and birthYear < = Year(GetDate()))  --  2021����

  --  ���̺�_��Ű��
  Select * From sampleDb.dbo.userTbl
  Select * From AdventureWorksLT2019.SalesLT.Customer
  Select * From AdventureWorksLT2019.SalesLT.Address
  Select * From AdventureWorksLT2019.dbo.BuildVersion


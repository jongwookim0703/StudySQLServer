 Create or Alter Proc usp_zodiac
	@userNAme NVARCHAR(10)
AS
	Declare @bYear Int
	Declare @zodiac NVARCHAR(3)  --���̸�
	Select @bYear = birthYear From userTbl
	 Where name = @userName

	Set @zodiac = 
		CASE 
			 WHEN (@bYear%12 = 0) THEN '������'
			 WHEN (@bYear%12 = 1) THEN '��'
			 WHEN (@bYear%12 = 2) THEN '��'
			 WHEN (@bYear%12 = 3) THEN '����'
			 WHEN (@bYear%12 = 4) THEN '��'
			 WHEN (@bYear%12 = 5) THEN '��'
			 WHEN (@bYear%12 = 6) THEN 'ȣ����'
			 WHEN (@bYear%12 = 7) THEN '�䳢'
			 WHEN (@bYear%12 = 8) THEN '��'
			 WHEN (@bYear%12 = 9) THEN '��'
			 WHEN (@bYear%12 = 10) THEN '��'
			 ELSE '��'
		END
		Print Concat (@userName, ',(' ,@bYear, '���)', '�� ��� ', @zodiac, '�Դϴ�~')
GO

Exec usp_zodiac '������'
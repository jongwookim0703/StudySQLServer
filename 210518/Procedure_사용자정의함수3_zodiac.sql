Create or Alter Function ufn_getZodiac(@bYear int)
	Returns Nvarchar(3)

AS
Begin
	Declare @result Nvarchar(3)
	Set @result = 
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
		Return (@result)
End
GO
Create Or Alter Function ufn_getAge (@bYear Int)
	Returns int 
AS
Begin
	Declare @age Int
	Set @Age = Year(Getdate()) - @bYear +1
	Return(@age)
END
GO

select userId, name
     , birthYear, dbo.ufn_getAge(birthYear) AS '����'
	 , dbo.ufn_getZodiac(birthYear) AS '��'
	 , addr
	 , height , dbo.ufn_getInch(height) As '��ġ'
  From userTbl
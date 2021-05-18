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
     , birthYear, dbo.ufn_getAge(birthYear) AS '나이'
	 , dbo.ufn_getZodiac(birthYear) AS '띠'
	 , addr
	 , height , dbo.ufn_getInch(height) As '인치'
  From userTbl
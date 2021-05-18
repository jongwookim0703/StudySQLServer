Create or Alter Function ufn_getInch(@height int)
	Returns int
AS
Begin
	Declare @val Int
	Set @val = @height * 0.393
	Return(@val)
End
GO

Select userID,name, height 
     , dbo.ufn_getInch(height) AS 'Å°(ÀÎÄ¡)'
  From userTbl
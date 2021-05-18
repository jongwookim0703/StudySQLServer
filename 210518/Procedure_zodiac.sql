 Create or Alter Proc usp_zodiac
	@userNAme NVARCHAR(10)
AS
	Declare @bYear Int
	Declare @zodiac NVARCHAR(3)  --¶ìÀÌ¸§
	Select @bYear = birthYear From userTbl
	 Where name = @userName

	Set @zodiac = 
		CASE 
			 WHEN (@bYear%12 = 0) THEN '¿ø¼þÀÌ'
			 WHEN (@bYear%12 = 1) THEN '´ß'
			 WHEN (@bYear%12 = 2) THEN '°³'
			 WHEN (@bYear%12 = 3) THEN 'µÅÁö'
			 WHEN (@bYear%12 = 4) THEN 'Áã'
			 WHEN (@bYear%12 = 5) THEN '¼Ò'
			 WHEN (@bYear%12 = 6) THEN 'È£¶ûÀÌ'
			 WHEN (@bYear%12 = 7) THEN 'Åä³¢'
			 WHEN (@bYear%12 = 8) THEN '¿ë'
			 WHEN (@bYear%12 = 9) THEN '¹ì'
			 WHEN (@bYear%12 = 10) THEN '¸»'
			 ELSE '¾ç'
		END
		Print Concat (@userName, ',(' ,@bYear, '³â»ý)', 'ÀÇ ¶ì´Â ', @zodiac, 'ÀÔ´Ï´Ù~')
GO

Exec usp_zodiac '¾ÆÀÌÀ¯'
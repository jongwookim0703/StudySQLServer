  -- 1~100 까지의 수를 반복하면서 7의 배수는 합산하지 않고 나머지만 합산하라
  Declare @i int, @hap Bigint
      Set @i = 0
	  Set @hap = 0
	
	While @i<=100
	Begin
	      If (@i % 7 = 0)
		  Begin 
		       Print ConCat('7의 배수는 : ', @i)
			   Set @i = @i + 1
			   Continue
		  End

	      Set @hap = @hap + @i
		  Set @i = @i + 1 
	  END

    Print Concat('1~100까지의 합 ==>', @hap)
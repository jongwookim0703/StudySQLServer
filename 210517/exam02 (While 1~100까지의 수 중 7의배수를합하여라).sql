  -- 1~100 ������ ���� �ݺ��ϸ鼭 7�� ����� �ջ��϶�
  Declare @i int, @hap Bigint
      Set @i = 0
	  Set @hap = 0
	While @i<=100
	Begin
	      Set @hap = @hap + @i
		  Set @i = @i + 1 
	  END
    Print Concat('1~100������ �� ==>', @hap)
 -- SQL Programming
 Declare @var1 INT        -- 변수 선언
     SET @var1 = 170      -- 변수 설정
	  IF @var1 < 170
   Begin 
         PRINT '기준값이 작습니다'
     End 
	ELSE IF @var1 = 180
   BEGIN 
	     SELECT * FROM userTbl Where height > @var1
	 END
	ELSE
   BEGIN
         SELECT * FROM userTbl Where height > @var1
     END
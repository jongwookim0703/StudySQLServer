 -- SQL Programming
 Declare @var1 INT        -- ���� ����
     SET @var1 = 170      -- ���� ����
	  IF @var1 < 170
   Begin 
         PRINT '���ذ��� �۽��ϴ�'
     End 
	ELSE IF @var1 = 180
   BEGIN 
	     SELECT * FROM userTbl Where height > @var1
	 END
	ELSE
   BEGIN
         SELECT * FROM userTbl Where height > @var1
     END
 --  Ʈ����� 3�� ����
Begin Tran
Update userTbl Set addr ='�̱�' Where userID = 'JEN'
Commit

Begin Tran
Update userTbl Set addr ='����' Where userID = 'JIS'
Commit

Begin Tran
Update userTbl Set addr ='ȣ��' Where userID = 'JYP'
Commit

 --  Ʈ����� 1�� ����
Begin Tran
Update userTbl Set addr ='����' Where userID = 'JIS'
Update userTbl Set addr ='����' Where userID = 'JEN'
Update userTbl Set addr ='����' Where userID = 'JYP'
Rollback

select * From userTbl


-- Ʈ����� ó������ �ù�
Create Table testTbl (number int)
Go
Insert into testTbl VALUES (1), (2), (5)

Begin Tran
UPDATE testTbl Set Number = 11 Where number = 1    -- 1 ����
UPDATE testTbl Set Number = 33 Where number = 2
UPDATE testTbl Set Number = 55 Where number = 5
Commit
Rollback

select * From testTbl
select @@TRANCOUNT
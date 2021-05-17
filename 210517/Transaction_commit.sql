 --  트랜잭션 3번 수행
Begin Tran
Update userTbl Set addr ='미국' Where userID = 'JEN'
Commit

Begin Tran
Update userTbl Set addr ='제주' Where userID = 'JIS'
Commit

Begin Tran
Update userTbl Set addr ='호주' Where userID = 'JYP'
Commit

 --  트랜잭션 1번 수행
Begin Tran
Update userTbl Set addr ='뉴욕' Where userID = 'JIS'
Update userTbl Set addr ='델리' Where userID = 'JEN'
Update userTbl Set addr ='런던' Where userID = 'JYP'
Rollback

select * From userTbl


-- 트랜잭션 처리순서 시뮬
Create Table testTbl (number int)
Go
Insert into testTbl VALUES (1), (2), (5)

Begin Tran
UPDATE testTbl Set Number = 11 Where number = 1    -- 1 실행
UPDATE testTbl Set Number = 33 Where number = 2
UPDATE testTbl Set Number = 55 Where number = 5
Commit
Rollback

select * From testTbl
select @@TRANCOUNT
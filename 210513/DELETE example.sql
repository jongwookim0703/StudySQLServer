-- DELETE
-- WHERE절을 안쓰면 사유서를 쓴다
BEGIN TRANSACTION

DELETE FROM testTbl
 WHERE Id = 4;

DELETE FROM testTbl
 WHERE addr = '서울'

 SELECT * FROM testTbl

 COMMIT
 ROLLBACK

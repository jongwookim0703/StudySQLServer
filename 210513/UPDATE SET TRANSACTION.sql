-- UPDATE
-- WHERE절을 절대 빼먹지말자 !!
-- 트랜잭션 시작 (1회성)
BEGIN TRANSACTION

-- testTbl 테이블에서 Id=2번 userName을 성명건으로 바꾸겠다
UPDATE testTbl
   SET userName = '성명건'
      ,addr = '부산'
 WHERE Id = 2

SELECT * FROM testTbl
COMMIT
ROLLBACK

-- 데이터 전부를 삭제하고 1부터 다시시작 (잘안씀)
TRUNCATE TABLE testTbl   
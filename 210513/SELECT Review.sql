-- 데이터 조회
SELECT * FROM userTbl;

-- 데이터 조회 필터링
SELECT * FROM userTbl
 WHERE name in ('김범수', '조용필')

SELECT * FROM userTbl
 WHERE name LIKE '김%'

SELECT * FROM userTbl
 WHERE name LIKE '%용%'

SELECT addr FROM userTbl
SELECT name FROM userTbl

-- 특정 테이블 레코드 개수확인
SELECT COUNT(*) FROM usertbl

-- 키가 180이상이고 출생년도가 1970 이후인사람
SELECT * FROM userTbl
 WHERE height >180 AND birthYear >1970

 -- 키가 180이상이거나 출생년도가 1970 이후인사람
SELECT * FROM userTbl
 WHERE height >180 OR birthYear >1970

 -- 사용자 테이블에서 키가 180이상이고
-- 출생년도가 1970 이후인 사람의 
-- 아이디, 이름, 키를 조회하세요
SELECT userID, name, height From userTbl
 WHERE height > 180 AND birthYear >1970
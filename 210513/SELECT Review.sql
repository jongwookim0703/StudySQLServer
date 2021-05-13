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

 -- 출생년도 순으로(오름차순) 정렬해서 조회
 SELECT * FROM userTbl
  ORDER BY birthYear desc

-- SELECT INTO
-- userTbl_new 라는 테이블이 생성됨
-- 주로 테이블 백업을 할 때 사용 (PK 키정보는 복사안됨)
SELECT * INTO userTbl_new FROM userTbl

SELECT * FROM userTbl_new

-- 백업할 칼럼을 정해서 백업할 수 있다
SELECT userID, name, addr INTO userTbl_bacKup FROM userTbl
SELECT * FROM userTbl_bacKup

-- 백업할 주소가 서울인사람의 백업
SELECT userID, name, addr INTO userTbl_bacKup2 FROM userTbl
 WHERE addr = '서울'
SELECT * FROM userTbl_bacKup2

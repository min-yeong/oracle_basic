-- INSET 1.author테이블구조 2.모든컬럼 데이터를 일괄 입략하여면 컬럼구조에맞게 데이터입력
DESC author;
INSERT INTO author  VALUES (1, '박경리', '토지작가');
INSERT INTO author (author_id, author_name)  VALUES (2, '김영하');
-- INSERT, UPDATE, DELETE는 트랜잭션 대상, 완료되기 이전까지는 타사용자는 변경 내용을 볼 수 없다.
commit;

DESC book;
INSERT INTO book VALUES(1, '토지', sysdate, 1);
INSERT INTO book( book_id, title, author_id) VALUES (2, '살인자의 기억법', 2);
SELECT * FROM book;
ROLLBACK; -- 변경사항 원래대로 복구
SELECT * FROM book;

-- UPDATE
UPDATE author SET author_desc = '알쓸신잡 출연'; -- UPDATE, DELETE 등의 DML은 WHERE절이 없으면 전체 레코드 변경
SELECT * FROM author;
ROLLBACK;
UPDATE author SET author_desc = '알쓸신잡 출연' WHERE author_id = 2;
SELECT * FROM author;
COMMIT;

-- hr.employees 테이블로부터 myemp라는 테이블 생성
CREATE table myemp AS (SELECT * FROM hr.employees);
DESC myemp;
SELECT * FROM myemp;

-- DELETE : WHERE절로 조건 지정하기
DELETE FROM myemp WHERE employee_id = 100;
SELECT * FROM myemp;
ROLLBACK;

-- DELETE와 TRUNCATE : 전체 레코드 삭제
DELETE FROM myemp; -- 개별 레코드를 삭제하고 삭제 기록을 로그로 보관하기 때문에 ROLLBACK가능
SELECT * FrOM myemp;
ROLLBACK;
TRUNCATE TABLE myemp; -- ROLLBACK 불가
DROP TABLE myemp;

-- VIEW : 1. 테이블생성 2. VIEW 생성
CREATE TABLE myemp AS SELECT * FROM HR.employees;
SELECT * FROM myemp;
-- department_id가 10인 직원들의 VIEW : VIEW생성을 위해서는 system 또는 sys 계정의 CREATE VIEW 권한 필요(GRANT CREATE VIEW TO BITUSER)
CREATE OR REPLACE VIEW myemp_10 
    AS SELECT employee_id, first_name, last_name, hire_date, salary 
    FROM myemp WHERE department_id=10; -- 단일 테이블의 단순 컬럼의 목록으로 작성된 SimpleView : 제약조건에 걸리지 않으면 insert, update, delete 가능
SELECT * FROM myemp_10;
UPDATE myemp_10 SET salary=salary*2; 

CREATE OR REPLACE VIEW myemp_10 
    AS SELECT employee_id, first_name, last_name, salary FROM myemp
    WHERE department_id = 10 WITH READ ONLY;  -- 읽기 전용 VIEW 생성
UPDATE myemp_10 SET salary=salary*2;  -- insert, update, delete 불가능

-- Complex view : 두개 이상의 테이블 혹은 view를 기반으로 생성, 표현식 함수를 포함하기도 함, insert, update, delete 불가능
-- book테이블과 author테이블을 join해서 dook_detail view 생성
INSERT INTO book VALUES (1, '토지', sysdate, 1);
INSERT INTO book VALUES (2, '살인자의기억법', sysdate, 2);
CREATE OR REPLACE VIEW book_detail (book_id, title, author_name, pub_date)
    AS SELECT book_id, title, author_name, pub_date FROM book b, author a WHERE b.author_id=a.author_id;
DESC book_detail;
SELECT * FROM book_detail;

-- VIEW를 위한 Dictionary 
-- USER_VIEWS
SELECT * FROM user_views;
-- USER_OBJECTS 
SELECT * FROM USER_OBJECTS;
SELECT object_name, status, object_type FROM user_objects WHERE object_type='VIEW'; 

-- VIEW 삭제
DROP VIEW myemp_10;

-- INDEX : 쿼리 성능 상승을 위해 사용
SELECT * from myemp;
-- myemp 테이블의 employee_id 컬럼에 UNIQUE 인덱스 생성
CREATE UNIQUE INDEX myemp_id_unique ON myemp(employee_id);
CREATE INDEX myemp_dept_id ON myemp(department_id);

-- 사용자가 가지고 있는 INDEX확인
SELECT * FROM user_indexes;
-- 어느 컬럼에 인덱스가 있는지 확인
SELECT * FROM user_ind_columns;

-- 두개의 테이블을 조인해서 어느 인덱스가 어느 컬럼에 있는지 확인
SELECT t.index_name, c.column_name, c.column_position FROM user_indexes t, user_ind_columns c
    WHERE t.index_name = c.index_name AND t.table_name='MYEMP';
-- index 제거
DROP INDEX myemp_dept_id;
DROP INDEX myemp_id_unique;
SELECT * FROM user_indexes;

-- SEQUENCE : 유일한 정수값을 발생시키는 객체 
SELECT * FROM author;
-- 새 레코드 추가 (pk중복방지를 위해 author_id의 max값을 확인)
SELECT MAX(author_id)+1 max_id FROM author;
INSERT INTO author (author_id, author_name) VALUES ((SELECT MAX(author_id)+1 FROM author), '스티븐 킹');
SELECT * FROM author ORDER BY author_id;
commit;

-- 위의 방식은 오류가 발생할 일도 많고 안전한 방법이 아니기 때문에 SEQUENCE 사용
CREATE SEQUENCE test_seq START WITH 1 INCREMENT BY 1 MAXVALUE 10;
-- SEQUENCE로 부터 값 받아오기
SELECT test_seq.NEXTVAL FROM dual; -- 새 값 생성
SELECT test_seq.CURRVAL FROM dual;
SELECT test_seq.NEXTVAL FROM dual; 
-- SEQUENCE 변경
ALTER SEQUENCE test_seq INCREMENT BY 3 --증가값
    MAXVALUE 10000000;
SELECT test_seq.NEXTVAL FROM dual; --3씩증가
-- 사용자 SEQUENCE 확인
SELECT * FROM user_sequences;
SELECT * FROM user_objects WHERE object_type='SEQUENCE';

-- author pk를 위한 seq 작성
SELECT MAX(author_id) FROM author;
CREATE SEQUENCE seq_author_pk START WITH 4 INCREMENT BY 1;
-- SEQUENCE를 활용한 레코드의 추가
INSERT INTO author (author_id, author_name) values (seq_author_pk.NEXTVAL, '유시민');
SELECT * FROM author;
commit;

--book테이블의 pk를 위한 sequence 생성
SELECT MAX(book_id) FROM book;
CREATE SEQUENCE seq_book_pk START WITH 3 INCREMENT BY 1;
SELECT * FROM user_sequences;

-- sequence 삭제
DROP SEQUENCE test_seq;

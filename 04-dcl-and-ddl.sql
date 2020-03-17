-- 사용자 생성 : system 계정으로 수행

-- bituser라는 이름으로 bituser 암호를 가진 계정을 생성
CREATE USER bituser IDENTIFIED BY bituser;
-- 사용자 삭제
-- DROP user bituser CASCADE;

conn bituser/bituser; -- login 시도
-- ERROR 발생, 사용자는 생성되었지만 권한이 없기 때문

-- 사용자 정보 확인
-- USER_USERS : 현재 사용자 관련 정보, ALL_USERS : DB내 모든 사용자의 정보, DBA_USERS : DB내 모든 사용자의 상세정보
SHOW user

DESC USER_USERS;
-- USER_USERS (현재 사용자)의 username과 계정 상태 확인
SELECT username, account_status FROM USER_USERS;
DESC ALL_USERS;
SELECT username, created FROM ALL_USERS WHERE username = 'BITUSER';
DESC DBA_USERS;
SELECT username, account_status FROM DBA_USERS WHERE username = 'BITUSER';

-- GRANT/REVOKE : 사용자 bituser에게 접속 권한ㅇ르 준다
GRANT create session TO bituser;
-- bituser로 로그인(cmd에서 실행)
-- 일반적으로 CONNECT, RESOURCE 역할이 부여되어야 데이터베이스에 접속, 테이블을 만들고 사용할 수 있다.
GRANT connect, resource TO bituser;

-- hr 스키마의 employees 테이블과 departments 테이블의 select 권한ㅇ르 bituser에게 부여
GRANT SELECT ON hr.employees TO bituser;
GRANT SELECT ON hr.departments TO bituser;

-- bituser로 로그인 후 실습 진행 예정
-- bituser 접속자 추가한 후 접속을 bituser로 변경

-- BOOK 테이블 생성 : book_id, title, author, pub_date
CREATE TABLE book(
    book_id NUMBER(5),
    title VARCHAR2(50),
    author VARCHAR2(10),
    pub_date DATE DEFAULT sysdate    
    );
-- 자신의 테이블 목록 확인
SELECT * FROM tab;
-- book 테이블의 구조 확인
DESC book;
-- 이미 있는 테이블을 기반으로 새 테이블 생성
SELECT * FROM hr.employees;
-- jib_id가 IT 관련된 직원들로 새 테이블 만듬
CREATE TABLE it_emps AS ( -- subQuery
    SELECT * FROM hr.employees WHERE job_id LIKE 'IT_%');
SELECT * FROM tab;
SELECT * FROM it_emps;
DROP TABLE it_emps;

-- author 테이블생성 : author_id(10자리숫자), author_name(100자리가변문자열), author_desc(500자리가변문자열)
-- 제약조건 : author_id : PK, author_name : NOT NULL
CREATE TABLE author (
    author_id NUMBER(10) PRIMARY KEY,
    author_name varchar2(100) NOT NULL,
    author_desc varchar2(500));
DESC author;

-- book 테이블내의 author 컬럼 삭제
ALTER TABLE book DROP COLUMN author;
DESC book;
-- author 테이블의 author_id 와 연결, author_id 컬럼추가
ALTER TABLE book ADD (author_id NUMBER(10));
DESC book;
-- book 테이블의 book_id를 NUMBER(10)으로 변경하고 PRIMARY KEY로 설정
ALTER TABLE book MODIFY (book_id number(10));
DESC book;
-- 제약 조건 부여 ADD CONSTRAINT
ALTER TABLE book ADD CONSTRAINT pk_book_id PRIMARY KEY (book_id);
DESC book;
-- book 테이블의 author_id 컬럼에 Foreign Key 추가(author테이블의 author_id컬럼을 참조)
ALTER TABLE book ADD CONSTRAINT fk_author_id FOREIGN KEY(author_id) REFERENCES author(author_id);
DESC book;

-- Data Dictionary 확인
SELECT * FROM DICTIONARY;
-- 사용자 객체 확인
SELECT * FROM user_objects;
-- 제약조건 확인
SELECT * FROM user_constraints;
-- book 테이블의 제약조건 확인
SELECT constraint_name, constraint_type, search_condition FROM user_constraints WHERE table_name = 'BOOK';

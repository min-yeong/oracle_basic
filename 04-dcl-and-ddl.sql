-- ����� ���� : system �������� ����

-- bituser��� �̸����� bituser ��ȣ�� ���� ������ ����
CREATE USER bituser IDENTIFIED BY bituser;
-- ����� ����
-- DROP user bituser CASCADE;

conn bituser/bituser; -- login �õ�
-- ERROR �߻�, ����ڴ� �����Ǿ����� ������ ���� ����

-- ����� ���� Ȯ��
-- USER_USERS : ���� ����� ���� ����, ALL_USERS : DB�� ��� ������� ����, DBA_USERS : DB�� ��� ������� ������
SHOW user

DESC USER_USERS;
-- USER_USERS (���� �����)�� username�� ���� ���� Ȯ��
SELECT username, account_status FROM USER_USERS;
DESC ALL_USERS;
SELECT username, created FROM ALL_USERS WHERE username = 'BITUSER';
DESC DBA_USERS;
SELECT username, account_status FROM DBA_USERS WHERE username = 'BITUSER';

-- GRANT/REVOKE : ����� bituser���� ���� ���Ѥ��� �ش�
GRANT create session TO bituser;
-- bituser�� �α���(cmd���� ����)
-- �Ϲ������� CONNECT, RESOURCE ������ �ο��Ǿ�� �����ͺ��̽��� ����, ���̺��� ����� ����� �� �ִ�.
GRANT connect, resource TO bituser;

-- hr ��Ű���� employees ���̺�� departments ���̺��� select ���Ѥ��� bituser���� �ο�
GRANT SELECT ON hr.employees TO bituser;
GRANT SELECT ON hr.departments TO bituser;

-- bituser�� �α��� �� �ǽ� ���� ����
-- bituser ������ �߰��� �� ������ bituser�� ����

-- BOOK ���̺� ���� : book_id, title, author, pub_date
CREATE TABLE book(
    book_id NUMBER(5),
    title VARCHAR2(50),
    author VARCHAR2(10),
    pub_date DATE DEFAULT sysdate    
    );
-- �ڽ��� ���̺� ��� Ȯ��
SELECT * FROM tab;
-- book ���̺��� ���� Ȯ��
DESC book;
-- �̹� �ִ� ���̺��� ������� �� ���̺� ����
SELECT * FROM hr.employees;
-- jib_id�� IT ���õ� ������� �� ���̺� ����
CREATE TABLE it_emps AS ( -- subQuery
    SELECT * FROM hr.employees WHERE job_id LIKE 'IT_%');
SELECT * FROM tab;
SELECT * FROM it_emps;
DROP TABLE it_emps;

-- author ���̺���� : author_id(10�ڸ�����), author_name(100�ڸ��������ڿ�), author_desc(500�ڸ��������ڿ�)
-- �������� : author_id : PK, author_name : NOT NULL
CREATE TABLE author (
    author_id NUMBER(10) PRIMARY KEY,
    author_name varchar2(100) NOT NULL,
    author_desc varchar2(500));
DESC author;

-- book ���̺��� author �÷� ����
ALTER TABLE book DROP COLUMN author;
DESC book;
-- author ���̺��� author_id �� ����, author_id �÷��߰�
ALTER TABLE book ADD (author_id NUMBER(10));
DESC book;
-- book ���̺��� book_id�� NUMBER(10)���� �����ϰ� PRIMARY KEY�� ����
ALTER TABLE book MODIFY (book_id number(10));
DESC book;
-- ���� ���� �ο� ADD CONSTRAINT
ALTER TABLE book ADD CONSTRAINT pk_book_id PRIMARY KEY (book_id);
DESC book;
-- book ���̺��� author_id �÷��� Foreign Key �߰�(author���̺��� author_id�÷��� ����)
ALTER TABLE book ADD CONSTRAINT fk_author_id FOREIGN KEY(author_id) REFERENCES author(author_id);
DESC book;

-- Data Dictionary Ȯ��
SELECT * FROM DICTIONARY;
-- ����� ��ü Ȯ��
SELECT * FROM user_objects;
-- �������� Ȯ��
SELECT * FROM user_constraints;
-- book ���̺��� �������� Ȯ��
SELECT constraint_name, constraint_type, search_condition FROM user_constraints WHERE table_name = 'BOOK';

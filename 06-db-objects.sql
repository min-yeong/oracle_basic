-- VIEW : 1. ���̺���� 2. VIEW ����
CREATE TABLE myemp AS SELECT * FROM HR.employees;
SELECT * FROM myemp;
-- department_id�� 10�� �������� VIEW : VIEW������ ���ؼ��� system �Ǵ� sys ������ CREATE VIEW ���� �ʿ�(GRANT CREATE VIEW TO BITUSER)
CREATE OR REPLACE VIEW myemp_10 
    AS SELECT employee_id, first_name, last_name, hire_date, salary 
    FROM myemp WHERE department_id=10; -- ���� ���̺��� �ܼ� �÷��� ������� �ۼ��� SimpleView : �������ǿ� �ɸ��� ������ insert, update, delete ����
SELECT * FROM myemp_10;
UPDATE myemp_10 SET salary=salary*2; 

CREATE OR REPLACE VIEW myemp_10 
    AS SELECT employee_id, first_name, last_name, salary FROM myemp
    WHERE department_id = 10 WITH READ ONLY;  -- �б� ���� VIEW ����
UPDATE myemp_10 SET salary=salary*2;  -- insert, update, delete �Ұ���

-- Complex view : �ΰ� �̻��� ���̺� Ȥ�� view�� ������� ����, ǥ���� �Լ��� �����ϱ⵵ ��, insert, update, delete �Ұ���
-- book���̺�� author���̺��� join�ؼ� dook_detail view ����
INSERT INTO book VALUES (1, '����', sysdate, 1);
INSERT INTO book VALUES (2, '�������Ǳ���', sysdate, 2);
CREATE OR REPLACE VIEW book_detail (book_id, title, author_name, pub_date)
    AS SELECT book_id, title, author_name, pub_date FROM book b, author a WHERE b.author_id=a.author_id;
DESC book_detail;
SELECT * FROM book_detail;

-- VIEW�� ���� Dictionary 
-- USER_VIEWS
SELECT * FROM user_views;
-- USER_OBJECTS 
SELECT * FROM USER_OBJECTS;
SELECT object_name, status, object_type FROM user_objects WHERE object_type='VIEW'; 

-- VIEW ����
DROP VIEW myemp_10;

-- INDEX : ���� ���� ����� ���� ���
SELECT * from myemp;
-- myemp ���̺��� employee_id �÷��� UNIQUE �ε��� ����
CREATE UNIQUE INDEX myemp_id_unique ON myemp(employee_id);
CREATE INDEX myemp_dept_id ON myemp(department_id);

-- ����ڰ� ������ �ִ� INDEXȮ��
SELECT * FROM user_indexes;
-- ��� �÷��� �ε����� �ִ��� Ȯ��
SELECT * FROM user_ind_columns;

-- �ΰ��� ���̺��� �����ؼ� ��� �ε����� ��� �÷��� �ִ��� Ȯ��
SELECT t.index_name, c.column_name, c.column_position FROM user_indexes t, user_ind_columns c
    WHERE t.index_name = c.index_name AND t.table_name='MYEMP';
-- index ����
DROP INDEX myemp_dept_id;
DROP INDEX myemp_id_unique;
SELECT * FROM user_indexes;

-- SEQUENCE : ������ �������� �߻���Ű�� ��ü 
SELECT * FROM author;
-- �� ���ڵ� �߰� (pk�ߺ������� ���� author_id�� max���� Ȯ��)
SELECT MAX(author_id)+1 max_id FROM author;
INSERT INTO author (author_id, author_name) VALUES ((SELECT MAX(author_id)+1 FROM author), '��Ƽ�� ŷ');
SELECT * FROM author ORDER BY author_id;
commit;

-- ���� ����� ������ �߻��� �ϵ� ���� ������ ����� �ƴϱ� ������ SEQUENCE ���
CREATE SEQUENCE test_seq START WITH 1 INCREMENT BY 1 MAXVALUE 10;
-- SEQUENCE�� ���� �� �޾ƿ���
SELECT test_seq.NEXTVAL FROM dual; -- �� �� ����
SELECT test_seq.CURRVAL FROM dual;
SELECT test_seq.NEXTVAL FROM dual; 
-- SEQUENCE ����
ALTER SEQUENCE test_seq INCREMENT BY 3 --������
    MAXVALUE 10000000;
SELECT test_seq.NEXTVAL FROM dual; --3������
-- ����� SEQUENCE Ȯ��
SELECT * FROM user_sequences;
SELECT * FROM user_objects WHERE object_type='SEQUENCE';

-- author pk�� ���� seq �ۼ�
SELECT MAX(author_id) FROM author;
CREATE SEQUENCE seq_author_pk START WITH 4 INCREMENT BY 1;
-- SEQUENCE�� Ȱ���� ���ڵ��� �߰�
INSERT INTO author (author_id, author_name) values (seq_author_pk.NEXTVAL, '���ù�');
SELECT * FROM author;
commit;

--book���̺��� pk�� ���� sequence ����
SELECT MAX(book_id) FROM book;
CREATE SEQUENCE seq_book_pk START WITH 3 INCREMENT BY 1;
SELECT * FROM user_sequences;

-- sequence ����
DROP SEQUENCE test_seq;

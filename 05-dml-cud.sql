-- INSET 1.author���̺��� 2.����÷� �����͸� �ϰ� �Է��Ͽ��� �÷��������°� �������Է�
DESC author;
INSERT INTO author  VALUES (1, '�ڰ渮', '�����۰�');
INSERT INTO author (author_id, author_name)  VALUES (2, '�迵��');
-- INSERT, UPDATE, DELETE�� Ʈ����� ���, �Ϸ�Ǳ� ���������� Ÿ����ڴ� ���� ������ �� �� ����.
commit;

DESC book;
INSERT INTO book VALUES(1, '����', sysdate, 1);
INSERT INTO book( book_id, title, author_id) VALUES (2, '�������� ����', 2);
SELECT * FROM book;
ROLLBACK; -- ������� ������� ����
SELECT * FROM book;

-- UPDATE
UPDATE author SET author_desc = '�˾����� �⿬'; -- UPDATE, DELETE ���� DML�� WHERE���� ������ ��ü ���ڵ� ����
SELECT * FROM author;
ROLLBACK;
UPDATE author SET author_desc = '�˾����� �⿬' WHERE author_id = 2;
SELECT * FROM author;
COMMIT;

-- hr.employees ���̺�κ��� myemp��� ���̺� ����
CREATE table myemp AS (SELECT * FROM hr.employees);
DESC myemp;
SELECT * FROM myemp;

-- DELETE : WHERE���� ���� �����ϱ�
DELETE FROM myemp WHERE employee_id = 100;
SELECT * FROM myemp;
ROLLBACK;

-- DELETE�� TRUNCATE : ��ü ���ڵ� ����
DELETE FROM myemp; -- ���� ���ڵ带 �����ϰ� ���� ����� �α׷� �����ϱ� ������ ROLLBACK����
SELECT * FrOM myemp;
ROLLBACK;
TRUNCATE TABLE myemp; -- ROLLBACK �Ұ�
DROP TABLE myemp;
